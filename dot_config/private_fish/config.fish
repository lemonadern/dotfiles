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

# nimble (choosenim)
fish_add_path $HOME/.nimble/bin

# paths
# cargo
set -gx CARGO_HOME $HOME/.cargo
fish_add_path $CARGO_HOME/bin

# deno
fish_add_path $HOME/.deno/bin

# chezmoi
alias chezap 'chezmoi apply'
alias chezcd 'chezmoi cd'

# Python
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
alias ga. 'git add .'
alias gc 'git commit'
alias gcm 'git commit -m'
alias gdf 'git diff'
alias gsw 'git switch'

# npm
alias nr 'npm run'
alias nrd 'npm run dev'
alias nrb 'npm run build'
alias nrw 'npm run watch'
alias ns 'npm run start'
alias ni 'npm i'
alias nid 'npm i -D'
alias nui 'npm uninstall'

# yarn
alias y 'yarn'
alias yi 'yarn install'
alias ya 'yarn add'
alias yad 'yarn add -D'
alias yr 'yarn remove'
alias ys 'yarn start'
alias yd 'yarn dev'
alias yb 'yarn build'
alias yw 'yarn workspace'
alias yl 'yarn lint'

# tomcat (shell)
alias tcstart '~/apache-tomcat-9.0.45/bin/startup.sh'
alias tcstop 'apache-tomcat-9.0.45/bin/shutdown.sh'
