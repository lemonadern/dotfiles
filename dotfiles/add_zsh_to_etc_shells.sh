#!/bin/bash

ZSH_PATH=$(which zsh)

# /etc/shellsにZSH_PATHが存在するか確認
if ! grep -q "^$ZSH_PATH$" /etc/shells; then
  # 存在しない場合、/etc/shellsに追記
  echo "$ZSH_PATH does not exist in /etc/shells ."
  echo "$ZSH_PATH" | sudo tee -a /etc/shells
  echo "check /etc/shells ."
else 
  echo "$ZSH_PATH is exist."
fi

