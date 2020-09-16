function ctrl_z_toggle() {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
  else
    zle push-input
  fi
}

zle -N ctrl_z_toggle
bindkey '^Z' ctrl_z_toggle
