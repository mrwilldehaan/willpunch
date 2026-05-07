#!/bin/bash
#
# import/update submodules from github
#
git_parent="https://github.com/holepunchto"

while read subrepo; do
	if [ ! -d "$subrepo" ]; then
		echo git submodule add "$git_parent/$subrepo"
		git submodule add "$git_parent/$subrepo"
	fi
done <repositories.holepunchto.github.com

git submodule update --recursive
