cd ~

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
cp mytheme.json ~/.poshthemes/mytheme.json
chmod u+rw ~/.poshthemes/*.json

sed -i -e '$aeval "$(oh-my-posh --init --shell zsh --config ~/.poshthemes/mytheme.json)"' ~/.zshrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv .zshrc .zshrc_oh
mv .zshrc.pre-oh-my-zsh .zshrc

curl -L git.io/antigen > antigen.zsh


sed -i '1 i\source $ZSH/oh-my-zsh.sh' ~/.zshrc
sed -i '1 i\plugins=()' ~/.zshrc


sed -i '1 i\antigen apply' ~/.zshrc

sed -i '1 i\antigen bundle zsh-users/zsh-autosuggestions' ~/.zshrc
sed -i '1 i\antigen bundle zsh-users/zsh-syntax-highlighting' ~/.zshrc
sed -i '1 i\antigen bundle "MichaelAquilina/zsh-you-should-use"' ~/.zshrc

sed -i '1 i\antigen use oh-my-zsh' ~/.zshrc


sed -i '1 i\ZSH_THEME=""' ~/.zshrc
sed -i '1 i\export ZSH="~/.oh-my-zsh"' ~/.zshrc
sed -i '1 i\source ~/antigen.zsh' ~/.zshrc

source ~/.zshrc