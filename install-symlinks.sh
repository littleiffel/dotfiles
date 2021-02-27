
mkdir -p ~/.config
mkdir -p ~/.config/nvim

ln -sf ~/dotfiles/neovim/init.vim    ~/.config/nvim/init.vim 
ln -sf ~/dotfiles/zsh/zprofile /etc/zsh/zprofile
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
