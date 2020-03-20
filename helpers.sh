#!/bin/sh

case "$1" in
init)
  if [ -f "$HOME/.vimrc" ]
  then
    >&2 echo "saving .vimrc to .vimrc.old"
    cp "$HOME/.vimrc" "$HOME/.vimrc.old"
  fi

  if [ -f "$HOME/.gvimrc" ]
  then
    >&2 echo "saving .gvimrc to .gvimrc.old"
    cp "$HOME/.gvimrc" "$HOME/.gvimrc.old"
  fi

  rm -f "$HOME/.vimrc" "$HOME/.gvimrc"
  ln -s "$PWD/vimrc" "$HOME/.vimrc"
  ln -s "$PWD/gvimrc" "$HOME/.gvimrc"
  ;;
add)
  git submodule add "$2" "bundle/$(basename "$2" .git)"
  ;;
esac
