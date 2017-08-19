import urllib
import os

with open('../media.txt') as media_urls_file:
    media_urls = [line.rstrip('\n') for line in media_urls_file]

for url_path in media_urls:
    url = "https://developer.ubuntu.com" + url_path

    filepath = url_path.lstrip('/static/devportal_uploaded/')

    directory = os.path.dirname(filepath)

    if not os.path.isdir(directory):
        os.makedirs(directory)

    urllib.urlretrieve(url, filepath)
