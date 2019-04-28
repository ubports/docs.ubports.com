#!/usr/bin/env python3

import os
from os.path import isfile, join, splitext
from shutil import copyfile

SRC_PREFIX = '../ubuntu-themes/suru-icons/'
SRC_LOCATIONS = [
    'actions',
    'apps',
    'devices',
    'mimetypes',
    'places',
    'status',
    'toolkit',
]
DEST_PREFIX = './appdev/nativeapp/icons/'

location_image_names = {}
images = []
width = 0

for location in SRC_LOCATIONS:
    directory = join(SRC_PREFIX, location, 'scalable')
    files = [f for f in os.listdir(directory) if isfile(join(directory, f))]

    os.makedirs(join(DEST_PREFIX, location), exist_ok=True)
    for file in files:
        src_path = join(directory, file)
        dest_path = join(DEST_PREFIX, location, file)
        copyfile(src_path, dest_path)

        name = '{}-{}'.format(location, splitext(file)[0])
        path = join('./icons', location, file)

        if location not in location_image_names:
            location_image_names[location] = []

        location_image_names[location].append(name)
        images.append('.. |{}| image:: {}'.format(name, path))

        if width < len(name):
            width = len(name)

columns = 5
cell_width = width + 2
cell_border = '-' * (width + 4)
table_border = ('+' + cell_border) * columns + '+'

output = []
with open('./appdev/nativeapp/icons.rst.in', 'r') as f:
    output = [line.replace('\n', '') for line in f.readlines()]

output.append('')

for (location, image_names) in location_image_names.items():
    output.append(location.title())
    output.append('-' * len(location))
    output.append('')

    image_names = sorted(image_names)
    chunks = [image_names[i:(i + columns)] for i in range(0, len(image_names), columns)]
    for chunk in chunks:
        if len(chunk) < columns:
            chunk += [''] * (columns - len(chunk))

        image_line = []
        name_line = []
        for name in chunk:
            display_name = name.replace(location + '-', '').ljust(cell_width)
            name_line.append('| {} '.format(display_name))

            if name == '':
                name = ''.ljust(cell_width)
            else:
                name = '|{}|'.format(name).ljust(cell_width)

            image_line.append('| {} '.format(name))

        output.append(table_border)
        output.append(''.join(image_line) + '|')
        output.append(''.join(name_line) + '|')

    output.append(table_border)
    output.append('')

output += images

with open('./appdev/nativeapp/icons.rst', 'w') as f:
    f.writelines([line + '\n' for line in output])
