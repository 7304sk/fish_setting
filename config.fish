#! include abbr settings
for a in (abbr --list); abbr --erase $a; end
source ~/.config/fish/config_abbr.fish

#! alias
alias vi='nvim'
alias update='echo -e "\n\e[33m##### Update list of packages. #####\e[m\n" && sudo apt update && echo -e "\n\e[33m##### List of packages is updated. #####\n##### NEXT: Upgrade all packages #####\e[m\n" && sudo apt upgrade && echo -e "\n\e[33m##### All installed packages are upgraded. #####\n##### NEXT: Remove packages that are no longer needed #####\e[m\n" && sudo apt autoremove && echo -e "\n\e[33m##### Packages that are no longer needed for the update are removed. #####\n##### NEXT: Clean up cached files #####\e[m\n" && sudo apt clean && echo -e "\n\e[33m##### all cached deb files are deleted. #####\e[m\n"'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#! set path
set PATH ~/.npm-global/bin ~/anaconda3/bin $PATH
set PYTHONPATH ~/WORK/_lib__ $PYTHONPATH

# Conda initialize
eval ~/anaconda3/bin/conda "shell.fish" "hook" $argv | source
conda activate main
