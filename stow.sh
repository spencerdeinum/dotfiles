#!/usr/bin/env bash

for file in *; do
	if [[ -d "$file" ]]; then
		echo "stow "$file"" && stow "$file"
	fi
done
