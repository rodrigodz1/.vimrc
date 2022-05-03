# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# theme things
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# my env
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Downloads/sonarqube-9.3.0.51899/bin/linux-x86-64:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
. $HOME/.asdf/asdf.sh

# aliases
alias "ls"="exa -l --icons -F"
alias "cat"="bat"
# Requires earlyoom 
alias "oomlogs"="sudo journalctl -u earlyoom | grep sending"


# Install Ruby Gems to ~/gems
# Blog things with jekyll and ruby.
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
