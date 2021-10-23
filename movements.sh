# Copy vimrc
cp ./.vimrc ~/.vimrc

# Copy bash profile
cp ./.bash_profile ~/

#### NeoVim
# Installing packer
packer_path=/home/dawnofvan/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ ! -d $packer_path ]; then
	echo "file does not exist at $packer_path"
	git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_path
fi

# Moving nvim directory
configs_path=~/.configs
if [ ! -d $configs_path ]; then
	mkdir $configs_path
fi
cp -r ./nvim ${configs_path}/nvim
