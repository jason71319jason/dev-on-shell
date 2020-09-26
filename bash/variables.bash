
config_fzf() {
    if [ -f ~/.fzf.bash ]; then
        export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --info inline --border"
        export FZF_COMPLETION_OPTS='+c -x'
        export FZF_COMPLETION_TRIGGER='~~'
    fi
}

config_fzf
