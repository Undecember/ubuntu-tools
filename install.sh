BASHRC_PATH="$HOME/.bashrc"

if ! grep -q "# ubuntu-tools installed" $BASHRC_PATH; then
    echo -e "\n# ubuntu-tools installed" >> $BASHRC_PATH
    echo -e "source ~/.ubuntu-tools/runtime.sh" >> $BASHRC_PATH
    echo "Ubuntu tools installed."
else
    echo "Ubuntu tools are already installed."
fi
