#!/bin/bash

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Install Homebrew
if ! command_exists brew; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Homebrew installation completed."
else
  echo "Homebrew is already installed. Updating Homebrew..."
  brew update
fi

# Install Xcode Command Line Tools (necessary for many development tasks)
if ! xcode-select -p &>/dev/null; then
  echo "Xcode Command Line Tools not found. Installing..."
  xcode-select --install
else
  echo "Xcode Command Line Tools are already installed."
fi

# Install development tools
echo "Installing common development tools..."
brew install git
brew install wget
brew install --cask visual-studio-code
brew install --cask iterm2

# others
brew install --cask google-chrome

brew cleanup

echo "Development environment setup completed successfully."