#! bash/bin

echo $PATH
sudo cp ~/.bashrc ~/.bashrc.bak
sudo apt-get install golang -y
go -version


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# 用于更新 toolchain
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
# 用于更新 rustup
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
echo "RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static"  >> ~/.cargo/env
echo "RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup"  >> ~/.cargo/env
source $HOME/.cargo/env
rustup update
rustc --version
cargo install nu



#自定义工作目录，下属有三个子目录pkg，src, bin（不用手动创建）
#echo "export GOPATH=/home/project_go/go" >> ~/.bashrc 
# go安装目录下的bin目录
#echo "export GOBIN=$GOROOT/bin" >> ~/.bashrc 
  
# 将GOBIN设置为PATH
#echo "export PATH=.:$PATH:$GOBIN" >> ~/.bashrc 
# 将GOPATH/bin设置为PATH，使用一些第三方库
#echo "export PATH=.:$PATH:$GOPATH/bin" >> ~/.bashrc 
#echo $PATH
