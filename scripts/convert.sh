#!/bin/bash

getlist() {
        IFS=$'\n'
        for file in $(find . -iname '*.wiki') ; do
            echo -e "$(~/Code/vimwiki2org/vimwiki2org.pl $file)" > "${file%.*}.org"
        done
}

getlist
