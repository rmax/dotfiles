#!/bin/bash
#
# Author: Rolando Espinoza La fuente <darkrho (at) gmail.com>
#
function make_dotfile_link() {
  if [ -z "$1" ]; then
    echo "Missing source file"
    return 1
  fi
  if [ -L $1 ]; then
    echo "Source file is a link: $1"
    return 1
  fi
  src=`readlink -f $1`
  if [ ! -e $src ]; then
    echo "Source file does not exists: $src"
    return 1
  fi
  name=`basename $src`
  dst="${HOME}/.${name}"
  if [ -L $dst ]; then
    curr=`readlink -f $dst`
    if [ $curr = $src ]; then
      echo "$curr is ok"
      return 0
    else
      echo "A different link exists: $dst"
      return 2
    fi
  elif [ ! -e $dst ]; then
    echo "$src -> $dst"
    ln -s $src $dst
    return $?
  else
    echo "File or directory exists: $dst"
    return 2
  fi
}


make_dotfile_link $1
exit $?
