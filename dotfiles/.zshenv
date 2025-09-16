. "$HOME/.cargo/env"

# OpenJDK Environment Variable
export PATH=/opt/homebrew/opt/openjdk/bin:$PATH
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export PATH=/opt/homebrew/opt/openjdk/bin:$PATH

# LLVM Environment Variables
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# Rust Environment Variables
export RUSTFLAGS="-L /opt/homebrew/opt/llvm/lib"
export LD_LIBRARY_PATH=/opt/homebrew/opt/llvm/lib
export DYLD_LIBRARY_PATH=/opt/homebrew/opt/llvm/lib

# OpenCV Environment Variables
export PKG_CONFIG_PATH=/opt/homebrew/opt/opencv/lib/pkgconfig

# Go Environment Variables
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Documents/git/go
export PATH=$PATH:$GOPATH/bin
