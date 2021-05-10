apt update
apt upgrade -y

# install oh-my-zsh 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# alias cls="clear" 
# alias www="cd ~/wwwroot"

source ~/.zshrc

sh ./node.sh

zx ./install.mjs
