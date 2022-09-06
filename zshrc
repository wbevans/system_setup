alias dup="cd ~/docker ; docker-compose up -d --remove-orphans"
alias ddown="cd ~/docker ; docker-compose down --remove-orphans"
alias drestart="docker-compose -f ~/docker/docker-compose.yml restart"
alias dlogs='docker-compose logs -tf --tail="150"'
alias zl="zfs list -o name,used,avail,refer,mountpoint,encryption,keylocation,keyformat"

export EDITOR=vim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
