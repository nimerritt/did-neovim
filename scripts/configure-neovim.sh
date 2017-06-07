echo "Creating alias: vim -> nnvim"

cat <<- 'EOF' >> $HOME/.bashrc
  alias vim='nvim'
EOF

CONFIG_PATH="$HOME/.config/nvim"
mkdir -p $CONFIG_PATH
cp /scripts/init.vim $CONFIG_PATH 
