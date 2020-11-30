#!/bin/bash

export PJ_DIR="`pwd`"
export CSCOPE_FILES=cscope.files

PJ_DB_DIR=csdb

check_git() {
    if [ ! -d ./.git ]; then
        return 1;
    else
        return 0;
    fi
}

build_db() {
    if [ ! -d $PJ_DB_DIR ]; then
        mkdir -p $PJ_DB_DIR
    fi
}

append_to_CSCOPE_FILES() {
    local pattern=$1
    echo "Scaning $1"
    find $PJ_DIR -type f -name $pattern \
        -not -path "*.git/*" \
        >> $PJ_DB_DIR/$CSCOPE_FILES
    }

remove_CSCOPE_FILES() {
    if [ -d $PJ_DB_DIR ]; then
        rm -f $PJ_DB_DIR/tags $PJ_DB_DIR/cscope.*
    fi
}

generate_cscope_files() {
    remove_CSCOPE_FILES
    append_to_CSCOPE_FILES "Makefile"
    append_to_CSCOPE_FILES "*.h"
    append_to_CSCOPE_FILES "*.hpp"
    append_to_CSCOPE_FILES "*.c"
    append_to_CSCOPE_FILES "*.cpp"
    append_to_CSCOPE_FILES "*.cc"
    append_to_CSCOPE_FILES "*.sh"
    append_to_CSCOPE_FILES "*.py"
    append_to_CSCOPE_FILES "*.p4"
}

generate_cscope_out() {
    if [ -f $PJ_DB_DIR/$CSCOPE_FILES ]; then
        echo -n "Generating cscope.out ("
        echo "cscope -bkq " && cscope -bkq -i $PJ_DB_DIR/$CSCOPE_FILES 2>/dev/null
        mv cscope.* $PJ_DB_DIR 2>/dev/null
        echo "Generated cscope.out"
    else
        echo "Error: no such file $PJ_DB_DIR/$CSCOPE_FILES"
    fi
}

generate_ctags() {
    ctags -R \
        --exclude=.git \
        -f $PJ_DB_DIR/tags
    }

csdb_init() {
    build_db
    generate_cscope_files
    generate_cscope_out
    generate_ctags
}

csdb_update() {
    remove_CSCOPE_FILES
    generate_cscope_files
    generate_cscope_out
    generate_ctags
}

csdb_remove() {
    remove_CSCOPE_FILES
}

usage() {
    echo "Project Tracer"
    echo ""
    echo "Usage:"
    echo " $0 init      Initialize \"csdb\" for code tracer"
    echo " $0 update    Update \"csdb\""
    echo " $0 remove    Remove \"csdb\""
}

check_git
if [ $? == 0 ]; then
    PJ_DB_DIR=./.git/$PJ_DB_DIR
fi

case "$1" in
    init)
        csdb_init
        ;;
    up|update)
        csdb_update
        ;;
    rm|remove)
        csdb_remove
        ;;
    *)
        usage
        ;;
esac
