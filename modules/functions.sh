#!/usr/bin/env bash

COLOR_RED=`printf '\e[0;31m'`
COLOR_DEFAULT=`printf '\e[m'`
ICON_CROSS=`printf ${COLOR_RED}'✘'${COLOR_DEFAULT}`

function __print_fail {
    echo -e "  ${ICON_CROSS} $1"
}

function __get_commit_files {
    echo $(git diff-index --name-only --diff-filter=ACM --cached HEAD --)
}

function __get_version_file {
    if [ -z $VERSION_FILE ]; then
        VERSION_FILE="VERSION"
    fi
    echo ${VERSION_FILE}
}
