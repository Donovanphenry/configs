# variables that will be needed throughou the program
configs_path=~/.configs/nvim
bashrc_path=~/.bashrc

# set environment variables
while read -r line; do
	env_split=($line)

	cmd="export ${env_split[0]}=${env_split[1]}"
	grep_res=$(grep -c "$cmd" $bashrc_path)

	if [ $grep_res = 0 ]; then
		echo $cmd >> $bashrc_path
	fi
done < .env

# Copy vimrc
if [ ! -f ~/.vimrc ]; then
	cp ./.vimrc ~/.vimrc
fi

# Copy bash profile
if [ ! -f $bashrc_path ]; then
	cat ./.bash_profile >> $bashrc_path
fi

#### NeoVim
# Installing packer
packer_path=/home/dawnofvan/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ ! -d $packer_path ]; then
	echo "file does not exist at $packer_path"
	git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_path
fi

# Moving nvim directory
if [ ! -d ~/.configs ]; then
	mkdir ~/.configs
fi

if [ ! -d $configs_path ]; then
	cp -r ./nvim ${configs_path}/nvim
fi
