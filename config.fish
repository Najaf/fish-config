set TERM screen-256color
set EDITOR vim

function fish_greeting
  rvm use 1.9.3-head > /dev/null
end

function fish_prompt -d "Write out the prompt"
  printf '%s@%s%s%s%s ⚶  ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function muxi
  tmuxinator $argv
end

function bo
  set start_directory (pwd)
  set gem_directory (bundle show $argv)
  cd $gem_directory
  vim
  cd $start_directory
end
