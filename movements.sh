# variables that will be needed throughou the program
config_path=~/.config
bashrc_path=~
bashrc_location=.bashrc
local_bashrc=$bashrc_path/$bashrc_location

# set environment variables
while read -r line; do
	env_split=($line)

	cmd="export ${env_split[0]}=${env_split[1]}"
	grep_res=$(grep -c "$cmd" $bashrc_location)

	if [ $grep_res = 0 ]; then
		echo $cmd >> $bashrc_location
	fi
done < .env

# Copy vimrc
if [ ! -f ~/.vimrc ]; then
	cp ./.vimrc ~/.vimrc
fi

# Copy bash profile
bash_profile_lines="Custom bash profile"
grep_res=$(grep -c "$bash_profile_lines" $local_bashrc)
if [ $grep_res = 0 ]; then
    cat $bashrc_location >> $local_bashrc
fi

#### NeoVim
# Installing packer
packer_path=/home/dawnofvan/.local/share/nvim/site/pack/packer/start/packer.nvim
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
