<h1 align="center">🪐 My NeoVim Configuration 🚀</h1>

<p align="center">
    <img src="./screenshots/dashboard.png" >
</p>
#Ubuntu:Install Neovim

 apt 安装 Neovim，具体方法如下：

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
如果报错找不到 add-apt-repository 命令，需要先安装下边的包

sudo apt-get install software-properties-common
安装成功后，运行 nvim 即可打开，注意确认 nvim 版本必须为 0.5 以上，如果版本过低，说明没有成功添加 ppa:neovim-ppa/stable

需要重新安装，当然你也可以选择安装 unstable 版本

sudo add-apt-repository ppa:neovim-ppa/unstable

安装后可选步骤，替换默认的vim nvim ~/.bashrc

alias vim='nvim'
alias vi='nvim'
alias v='nvim'


# Install

```bash
mv ~/.config/nvim{,.yetone-backup} || true

git clone https://github.com/yetone/nvim.git ~/.config/nvim

vim +PackerInstall
```

# Some screenshots

<p align="center">
    <img src="./screenshots/recent_files.png" >
</p>

<p align="center">
    <img src="./screenshots/status_bar.png" >
</p>

<p align="center">
    <img src="./screenshots/swoop.png" >
</p>

<p align="center">
    <img src="./screenshots/list_symbols.png" >
</p>
