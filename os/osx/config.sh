echo ""
echo "Execute .zsh_profile when .zshrc runs"
echo "source ~/Dropbox/.zsh_profile" >> ~/.zshrc

echo ""
echo "Setting up global git config"
git config --global user.name "Nick Reffitt"
git config --global user.email "nickreffitt@gmail.com"

echo ""
echo "Git: Rebase by default"
git config --global pull.rebase true

echo ""
echo "Git: lola alias"
git config --global alias.lola 'log --graph --decorate --pretty=oneline --abbrev-commit --all'"
