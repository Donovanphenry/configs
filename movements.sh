#!/bin/bash

profile_type=$1
if [ -z "$profile_type" ]; then
  profile_type=.bashrc
fi

# variables that will be needed throughout the program
config_path=~/.config
profile_path=~
local_profile=$profile_path/$profile_type

# set environment variables
while read -r line; do
	env_split=($line)

	cmd="export ${env_split[0]}=${env_split[1]}"
	grep_res=$(grep -c "$cmd" ~/$profile_type)

	if [ $grep_res = 0 ]; then
		echo $cmd >> ~/$profile_type
	fi
done < .env

# Copy vimrc
if [ ! -f ~/.vimrc ]; then
	cp ./.vimrc ~/.vimrc
fi

# Copy bash profile
bash_profile_lines="Custom bash profile"
profile_lines="Custom bash profile"
grep_res=$(grep -c "$profile_lines" $local_profile)
while read -r line; do
  grep_res=$(grep -c "$line" $local_profile)

  if [ $grep_res = 0 ]; then
      echo $line >> $local_profile
  fi
done < .bashrc

#### NeoVim
# Installing packer
packer_path=$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ ! -d $packer_path ]; then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_path
fi

# Moving nvim directory
if [ ! -d $configs_path ]; then
	mkdir $configs_path
fi

if [ ! -d $configs_path/nvim ]; then
	cp -r ./nvim ${config_path}/
fi
