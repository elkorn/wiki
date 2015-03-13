#!/bin/bash
cat ~/vimwiki/org/weekly.org \
    | sed "s/[ ]\+\\(TODO\)/ $\{color red\}\\1$\{color\}/g" \
    | sed "s/[ ]\+\\(DONE\)/ $\{color green\}\\1$\{color\}/g" \
    > ~/vimwiki/org/agenda.org.conky
