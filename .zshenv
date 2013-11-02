if [ -f /usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim ]; then
#   alias vi='env LANG=ja_JP.UTF-8 /usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim "$@"';
#   alias vim='env LANG=ja_JP.UTF-8 /usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim "$@"';
	alias vi='/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim';
	alias vim='/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim';
fi


# rbenv
if [ -d ${HOME}/.rbenv ]; then
  PATH=${HOME}/.rbenv/bin:${PATH}
  export PATH
  eval "$(rbenv init -)"
fi

PATH=${HOME}/practice_sources/shsrc:${PATH}
export PATH

#rabbit
export DYLD_LIBRARY_PATH=/usr/local/opt/cairo/lib
