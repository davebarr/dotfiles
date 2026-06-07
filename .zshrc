
export EDITOR=nvim

export BAT_STYLE="snip"


case $(uname) in
  "Darwin")
    eval "$(/opt/homebrew/bin/brew shellenv)"
    eval "$(/opt/homebrew/bin/starship init zsh)"
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    eval "$(/opt/homebrew/bin/zsh-patina activate)"
    ;;
esac

source ~/.aliases

