#!/bin/bash

# this script runs msgmerge to update the po files in line with the latest version of the pot files
# normally weblate does this, but if there are weblate problems or manual intervention is needed this can be useful

set -e

for locale_dir in locales/* ; do

    if [ "$locale_dir" == "locales/pot" ] ; then
        # skip
        continue
    fi

    lang_code=$(basename "$locale_dir")
    d=$locale_dir/LC_MESSAGES

    echo "LANG: $lang_code $locale_dir - merge $(echo $po_files | wc -w ) files"
    msgmerge -U $d/docs.po locales/pot/docs.pot
done
