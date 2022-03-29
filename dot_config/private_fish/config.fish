# theme-bobthefish config
set -g theme_color_scheme solarized

# additional
set -g theme_date_format "+%Y-%m-%d %H:%M:%S"
set -g fish_prompt_pwd_dir_length 0


# key bindings
function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
    bind \cc 'peco_cd'
end

eval (gh completion -s fish| source)




alias python 'python3'
alias py 'python3'
alias pip 'pip3'

# cd aliases
alias dl 'cd ~/Downloads/'
alias cdg 'cd ~/git/'
alias .. 'cd ..'
alias ... 'cd ../..'

# util
alias cpc 'xsel --clipboard --input'
alias et 'exit'

# docker 
alias d 'docker'
alias dst 'docker stats'
alias dps 'docker ps'
alias dpa 'docker ps -a'
alias drm 'docker rm'
alias dim 'docker images'

# docker-compose 
alias dc 'docker-compose'
alias dcu 'docker-compose up'
alias dcd 'docker-compose down'

# git
alias g 'git'
alias st 'git status'
alias gl 'git log'
alias glo 'git log --oneline'
alias ga 'git add'
alias gc 'git commit'
alias gcm 'git commit -m'
alias gdf 'git diff'
alias gsw 'git switch'
