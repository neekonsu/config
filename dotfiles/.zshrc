# Rust
export RUST_BACKTRACE=1

# Anaconda path
export PATH=/usr/local/anaconda3/bin:$PATH
export PATH=/opt/homebrew/anaconda3/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"

# Conda - Mamba - Miniforge
# terminfo / termdata not accessible bug does not occur on mac (below conda init is acceptable)
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/neekon/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/neekon/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/neekon/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/neekon/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/neekon/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/Users/neekon/mambaforge/etc/profile.d/mamba.sh"
fi

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# <<< conda initialize <<<

# Node - NPM Flags
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@22/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@22/include"

# Zsh - PS1 Customization
# USER PROMPT - enable prompt substitution and customize variable
setopt PROMPT_SUBST
PS1='%B%F{cyan}%3~%f%b%(?.%F{green}.%F{red})%(!.#.>)%f%b '

# SSH — Alias for tunnel::(neekon.xyz -> Dj4zv3)
# Port 2222 exposed on Dj4zv3 in ssh jump/tunnel to neekon.xyz
# Port 3666 exposed on neekon.xyz to world
alias djzve='ssh -J host@neekon.xyz:3666 neekon@localhost -p 2222'
