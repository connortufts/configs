#!/bin/bash

dir=$(dirname $0)

function bash {
    cp $dir/bash/.bashrc ~
}

function vim {
    cp $dir/vim/.vimrc ~
    cp -r $dir/vim/.vim ~
}

function x {
    cp $dir/x/.xinitrc ~
    cp $dir/x/.Xresources ~
}

function gnuplot {
    cp $dir/gnuplot/.gnuplot ~
}

if [[ -v $1 ]] ; then
    case $1 in
        bash)
            bash
            ;;
        vim)
            vim
            ;;
        x)
            x
            ;;
        gnuplot)
            gnuplot
            ;;
    esac
else
    bash
    vim
    x
    gnuplot
fi
