#!/usr/bin/env bash

header "Nord VPN"

read -p "Continue (y/Y) " -n 1 -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install --cask nordvpn
fi
