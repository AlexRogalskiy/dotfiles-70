function sourcelink {
	p=eval "readlink ${1}";
  source $p;
}

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit; compinit
autoload -U zmv

for dotfile in 'env' 'path' 'alias' 'prompt'; do
  . "${HOME}/.${dotfile}";
done

. /usr/local/etc/profile.d/z.sh
. /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [[ -z $TMUX ]]; then
  pgrep tmux && tma || tm
fi

bindkey -e
bindkey '^ ' autosuggest-accept
