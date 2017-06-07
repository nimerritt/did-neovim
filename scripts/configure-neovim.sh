echo "Creating alias: vim -> nnvim"

cat <<- 'EOF' >> ~/.bashrc
  alias vim='nvim'
EOF
