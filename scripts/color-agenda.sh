#!/bin/bash
cat ~/vimwiki/org/org:AGENDA \
    | sed "s/[ ]\+\\(TODO\)/ $\{color red\}\\1$\{color\}/g" \
    | sed "s/[ ]\+\\(DONE\)/ $\{color green\}\\1$\{color\}/g" \
    > ~/vimwiki/org/org:AGENDA
