# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
export PS1="\w \[$(tput sgr0)\]"

# general aliases
alias mkdir='mkdir -pv'
alias ls='ls --color'
alias lash='ls --color -ash'
alias stowit='stow -t /home/frank/'
alias brake='flatpak run fr.handbrake.ghb'

# Dropbox aliases
alias dfile='dropbox filestatus'
alias dstart='dropbox start'
alias dstat='dropbox status'
alias dropit='dropbox stop'

# System aliases
# if you haven't already, set visudo to allow shutdown/reboot
# user hostname =NOPASSWD: /usr/bin/systemctl poweroff,/usr/bin/systemctl halt,/usr/bin/systemctl reboot
alias reboot="sudo systemctl reboot"
alias shutdown="sudo systemctl poweroff"
alias halt="sudo systemctl halt"


# convert *.wav in cwd to .flac
wavtoflac()
{
         for i in *.wav; do ffmpeg -i "$i" -c:a flac -compression_level 8 "${i%.wav}".flac; done
 }
