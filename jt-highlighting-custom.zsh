# Enable highlighters from zsh-syntax-highlighting plugin
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Override highlighter colors from zsh-syntax-highlighting plugin
ZSH_HIGHLIGHT_STYLES[default]=fg=166
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=166,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=166,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=166,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=166,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=166,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=208,bold
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=178
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=178
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none