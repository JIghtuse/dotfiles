# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/.cargo/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/bin:$PATH

export PATH
