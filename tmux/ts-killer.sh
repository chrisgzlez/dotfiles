#!/usr/env/bin bash

keep-one() {
  tmux list-sessions | awk '{print $1}' | grep -v 'session_name' | xargs -I {} tmux kill-session -t {}
}

kill-many() {
  tmux list-sessions | awk '{print $1}' | grep -v 'session_name' | xargs -I {} tmux kill-session -t {}
}

kill-one() {
  tmux list-sessions | awk '{print $1}' | grep -v 'session_name' | xargs -I {} tmux kill-session -t {}
}


while getopts "am" option;
  do case "${option}" in
    a)
      keep-one
      exit 0
      ;;
    m)
      func2
      exit 0 ;;
    *)
      func3
      exit 0
      ;;
  esac
done
