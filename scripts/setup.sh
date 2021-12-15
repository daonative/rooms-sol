# Rust install
if command -v rustup &> /dev/null
then
  rustup update
else
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

rustc --version
rustup --version
cargo --version

# Solana install
sh -c "sh -c "$(curl -sSfL https://release.solana.com/v1.9.0/install)""
PATH="/home/gitpod/.local/share/solana/install/active_release/bin:$PATH"
echo 'PATH="/home/gitpod/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc
solana config set --url localhost

# Anchor
sudo apt update
sudo apt install -y libudev-dev
cargo install --git https://github.com/project-serum/anchor anchor-cli --locked
anchor --version
