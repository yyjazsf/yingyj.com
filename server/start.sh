apt update
apt upgrade -y

echo "install go"
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go

echo "install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# alias cls="clear" 
# alias www="cd ~/wwwroot"

source ~/.zshrc

sh ./node.sh

zx ./install.mjs
