#!/bin/bash

# This file is only used in Mac OS X

if [[ -n "$BASH_PROFILE" ]]; then
    # include .bashrc if it exists
    if [[ -f "$HOME/.bashrc" ]]; then
	source "$HOME/.bashrc"
    fi

    if [[ -d "$HOME/bin" ]]; then
        PATH="$HOME/bin:$PATH"
    fi
fi

BASH_PROFILE=true


