BASHRC_PATH="$HOME/.bashrc"
MARKER="# ubuntu-tools installed"

if grep -q  "$MARKER" "$BASHRC_PATH"; then
    LINE_NUM=$(grep -n "$MARKER" "$BASHRC_PATH" | cut -d: -f1)
    LINE_FROM=$((LINE_NUM - 1))
    LINE_TO=$((LINE_NUM + 1))
    sed -i "${LINE_FROM},${LINE_TO}d" "$BASHRC_PATH"
    rm -rf "$HOME/.ubuntu-tools"
    echo "Ubuntu tools uninstalled."
else
    echo "Ubuntu tools are not installed."
fi
