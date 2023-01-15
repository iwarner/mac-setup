#!/usr/bin/env bash

header "Google Chrome"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
    brew install --cask google-chrome
fi
