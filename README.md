# vim
My vim configuration &amp; plugins using git module.


## Usage

Install VIM:

```
# Ubuntu
sudo apt install vim

# Fedora
sudo dnf install vim
```

For old Ubuntu releases, there may lack vim 8.x, please install from ppa:

```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim
```

Basic package may lack some features such as clipboard... If so, install `vim-gnome`, `vim-athena`... or your favorite variant instead.

You may need `flake8` to run linting. Install it gloabaly or with virtual environment depend on your project.

```bash
sudo pip3 install flake8
```

Then clone this repo with all its submodules:

```
# HTTPS
git clone --recursive https://github.com/ndaidong/vim.git ~/.vim

# for your fork
git clone --recursive git@github.com:YOUR_GITHUB_USERNAME/vim.git ~/.vim

# for me
git clone --recursive git@github.com:ndaidong/vim.git ~/.vim
```

That's it. Everything was done. Let's see how it works:

```
vim ~/.vim 
```

To update the latest source from this repo and its submodules, the following command will help:

```
git pull --recurse-submodules
```



## Plugins

- [Dracula for Vim](https://github.com/dracula/vim): to display VIM in dark theme
- [NERDTree](https://github.com/scrooloose/nerdtree): to get file explorer with sidebar and tabs
- [NERDTree Tabs](https://github.com/jistr/vim-nerdtree-tabs): to keep sidebar consistent, independent from tabs
- [indentLine](https://github.com/Yggdroot/indentLine): to display the indention levels
- [lightline.vim](https://github.com/itchyny/lightline.vim): to make statusline
- [ALE](https://github.com/w0rp/ale): to enable live linting
- [vim-gitbranch](https://github.com/itchyny/vim-gitbranch): to get branch name
- [lightline-ale](https://github.com/maximbaz/lightline-ale): to bring messages from ALE to statusline
- [vim-pug](https://github.com/digitaltoad/vim-pug): to highlight Pug syntax


## Add plugin

For example "vim-airline" could be added as below:

```
cd ~/.vim
git submodule add https://github.com/vim-airline/vim-airline.git pack/plugins/start/vim-airline
git commit
```

### And then how to remove it?

```
cd ~/.vim
git rm -f pack/plugins/start/vim-airline
rm -rf pack/plugins/start/vim-airline
rm -rf .git/modules/pack/plugins/start/vim-airline
git commit -m "Remove vim-airline"
git push
```

## Refs

- [Di cư từ Sublime Text sang VIM](https://kipalog.com/posts/Di-cu-tu-Sublime-Text-sang-VIM)
- [Làm quen VIM trong 5 phút](https://kipalog.com/posts/Lam-quen-VIM-trong-5-phut)
- [3 VIM plugins giúp tôi thấy như ở nhà](https://kipalog.com/posts/3-VIM-plugins-giup-toi-thay-nhu-o-nha)
- [Vim: So long Pathogen, hello native package loading](https://shapeshed.com/vim-packages)
- [Vim Configuration From Scratch in 2016](http://marcgg.com/blog/2016/03/01/vimrc-example/)
- [A Simpler Vim Statusline](https://www.blaenkdenum.com/posts/a-simpler-vim-statusline/)
- [Switch from vim-airline to lightline](http://newbilityvery.github.io/2017/08/04/switch-to-lightline/)
- [A better NerdTree setup](https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9)


## Learn more?

- [Vim Cheat Sheet by rtorr](https://vim.rtorr.com/)
- [Vim Cheat Sheet by DevHints](https://devhints.io/vim)
- [Vim Documents](http://vimdoc.sourceforge.net/htmldoc/)


## Screenshots

![VIM in my desktop - JavaScript](https://i.imgur.com/fAQKLyp.jpg)
![VIM in my desktop - Pug](https://i.imgur.com/Kg0SFgA.jpg)


## License

The MIT License (MIT)
