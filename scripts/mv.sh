#!/bin/bash

files=$(ls | grep .org$ -Z)
mv $files ./org/
