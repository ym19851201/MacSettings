#vimっぽいキー操作
bindkey -v

#タブ補完
autoload -U compinit
compinit
#小文字でも補完
#zstyle ':completion:*' matcer-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'
#ロケール設定
export LANG=ja_JP.UTF-8

#プロンプト設定
#PROMPT="%B%{[32m%}%/#%{[m%}%b "
PROMPT=$'%B%{\e[32m%}%/--->>%{\e[m%}%b '
RPROMPT='%%zsh'

#履歴サイズ等設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history
#履歴補完
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#auto cd
setopt auto_cd
function chpwd(){ ls }
setopt auto_pushd

#間違ってたら教えてくれる
setopt correct

setopt list_packed
setopt nolistbeep

#lsのカラーリング
export LSCOLORS=fxfxcxdxfxxgxdafagacad
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls -Gla"
zstyle ':completion:*' list-colors 'di=35' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
#         test -z "$TMUX" && (tmux attach || tmux new-session)
# fi

export PATH=/usr/local/bin:$PATH
