#!/bin/bash

# Try to source .bashrc
if ! source ~/.bashrc 2>/dev/null; then
    echo "Warning: Unable to source .bashrc"
    NEED_EXEC_BASH=true
else
    echo "Successfully sourced .bashrc"
fi

# Crear directorios de espacio de trabajo para Go
echo "Creating Go workspace directories..."
mkdir -p "$HOME/Dev/Go/{bin,pkg,src}"

# Configurar variables de entorno para Go
echo "Configuring Go environment variables..."
{
    echo "export GOROOT=/usr/local/go"
    echo "export PATH=\$PATH:/usr/local/go/bin"
    echo "export GOPATH=\$HOME/Dev/Go"
    echo "export GOBIN=\$HOME/Dev/Go/bin"
} >> "$HOME/.bashrc"

# Notify user if they need to run 'exec bash' manually
if [ "$NEED_EXEC_BASH" = true ]; then
    echo "Warning: To apply changes, please run 'source ~/.bashrc' or 'exec bash' manually or restart your terminal."
fi

echo "To ensure all environment changes take effect, you may need to restart your terminal or run 'exec bash'."