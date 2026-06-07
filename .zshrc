
export EDITOR=nvim
## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
[ "$HISTSIZE" -lt 50000 ] && HISTSIZE=50000
[ "$SAVEHIST" -lt 10000 ] && SAVEHIST=10000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

export BAT_STYLE="snip"


case $(uname) in
  "Darwin")
    eval "$(/opt/homebrew/bin/brew shellenv zsh)"
    eval "$(/opt/homebrew/bin/starship init zsh)"
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ;;
  "Linux")
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/starship init zsh)"
    source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ;;
esac

[[ ! -f ~/.cargo/env ]] || source ~/.cargo/env

source ~/.aliases
source ~/.key-bindings.zsh
source ~/.theme.zsh

