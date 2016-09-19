#!/bin/bash
# use rsync to backup the personal bin directory to a personal backups directory

rsync -arv ~/bin/ ~/backups