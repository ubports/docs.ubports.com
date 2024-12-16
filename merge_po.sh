#!/bin/bash

for locale_dir in locales/* ; do
    lang_code=$(basename "$locale_dir")
    d=$locale_dir/LC_MESSAGES

    if [ "$lang_code" = "zh_CN" ] ; then
        echo "skip $lang_code ... it's a symlink"
        continue
    fi

    po_files=$(ls $d/index.po $d/about.po $d/appdev.po $d/contribute.po $d/humanguide.po $d/porting.po $d/systemdev.po $d/userguide.po 2>/dev/null)
    if [ -n "$po_files" ] ; then
        echo "LANG: $lang_code $locale_dir - merge $(echo $po_files | wc -w ) files"
        msgcat --unique $po_files -o $d/docs.po
        retval=$?
        if [ $retval -ne 0 ] ; then
            echo "LANG: $lang_code failed. Some po file probably needs manual repair"
            exit 1
        fi
        git rm $po_files
        git add $d/docs.po
    else
        echo "LANG: $lang_code $locale_dir - no files, skip."
    fi
done
