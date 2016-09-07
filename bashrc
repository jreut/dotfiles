#!/bin/bash

export EDITOR=vim


# personal scripts
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH" # fixup homebrew

# hacky bash config plugin system
for FILE in ~/.bash.d/*; do
  source "$FILE"
done

# bash-completion from homebrew
if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  # shellcheck source=/usr/local/etc/bash_completion
  . "$(brew --prefix)/etc/bash_completion"
fi
