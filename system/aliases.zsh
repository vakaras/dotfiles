# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
else
  # If Linux.
  alias ls='ls --color=auto'
  alias ll='ls -lh'
fi

alias rm='rm -i'
alias grep='grep --color=auto -nr'
alias fgrep='fgrep --color=auto -nr'
alias egrep='egrep --color=auto -nr'
