#!/bin/bash

echo $(find . -type f -print0 | xargs -0 grep -l "%title $1" | grep -Z .org$ )
