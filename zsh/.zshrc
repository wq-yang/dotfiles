# sensitive info are redacted
export ZSH="/Users/young/.oh-my-zsh"

ZSH_THEME="lambda"

plugins=(
  git 
  macos
  brew
)

source $ZSH/oh-my-zsh.sh

alias lsd="ls -ltrha"
alias rm="rm -i"

function mkcd() {
    if [[ -d $1 ]]; then
        echo "$1 already exits! cd to the directory."
    else
        mkdir -p $1
    fi
    cd $1
}

# leetcode cli related commands
function lcg() {
  problem_desc=$(leetcode show $1 -g -l $2);
  filename=$(grep 'Source Code' <<< $problem_desc);
  filename=${filename/#\*\ Source\ Code:* /}
  if [[ $filename == '' ]]; then
    echo Loading Problem Error!
    return;
  fi

  if [[ $2 == 'cpp' ]]; then
    gsed -i '1i #include <bits/stdc++.h>' $filename;
  fi
  echo '/**\n'$problem_desc'\n*/' >> ${filename}'_temp';
  cat $filename >> ${filename}'_temp';
  mv ${filename}'_temp' $filename;
}
alias lct="leetcode test"
alias lcsub="leetcode submit"

