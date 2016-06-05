# .bash_profile

export CXXFLAGS="-Wall -Wextra -std=c++11 -O2"
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.cabal/bin:$HOME/bin:$PATH

export PATH
