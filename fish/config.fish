# set the workspace path
set -x GOPATH /home/allain/go

# add the go bin path to be able to execute our programs
set -x PATH $PATH $GOPATH/bin

# add rust to the bin path
set -x PATH $PATH $HOME/.cargo/bin  
