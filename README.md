# vim
My vim configuration & plugins using git module.


## Usage

Assume that you have had `vim` and `git` already.

Next step is clone this repo with all its submodules:


```bash
# HTTPS
git clone --recursive https://github.com/ndaidong/vim.git ~/.vim

# for your fork
git clone --recursive git@github.com:YOUR_GITHUB_USERNAME/vim.git ~/.vim

# for me
git clone --recursive git@github.com:ndaidong/vim.git ~/.vim
```

That's it. Everything was done.

### Up to date

To update these plugins, use the following commands:

```bash
# Git 1.8.2 and above
git submodule update --recursive --remote

# Git 1.7.3 and above
git submodule update --recursive

# Alternatively
git pull --recurse-submodules
```

### Linters

Python developers need to install `flake8` globally or within isolated environment.

Recommend to use [pipx](https://github.com/pypa/pipx):

```bash
pipx install flake8
```

JavaScript/TypeScript developers can use `eslint` from global or project scope.

Recommend to use [pnpm](https://github.com/pnpm/pnpm):

```bash
pnpm i -g eslint
```

## Plugins

- [Dracula for Vim](https://github.com/dracula/vim): to display VIM in dark theme
- [NERDTree](https://github.com/scrooloose/nerdtree): to get file explorer with sidebar and tabs
- [NERDTree Tabs](https://github.com/jistr/vim-nerdtree-tabs): to keep sidebar consistent, independent from tabs
- [indentLine](https://github.com/Yggdroot/indentLine): to display the indention levels
- [nerdcommenter](https://github.com/preservim/nerdcommenter): to comment line or block of selected code
- [lightline.vim](https://github.com/itchyny/lightline.vim): to make statusline
- [vim-gitbranch](https://github.com/itchyny/vim-gitbranch): to get branch name
- [ALE](https://github.com/w0rp/ale): to enable live linting
- [lightline-ale](https://github.com/maximbaz/lightline-ale): to bring messages from ALE to statusline
- [v-vim](https://github.com/ollykel/v-vim): Support for V syntax highlighting in Vim 

## Add plugin

For example "vim-wanted" can be added as below:

```bash
cd ~/.config/nvim
git submodule add https://github.com/vim-wanted/vim-wanted.git pack/plugins/start/vim-wanted
git commit
```

### Remove plugin

Here we remove `vim-unwanted`:

```bash
cd ~/.config/nvim
git rm -f pack/plugins/start/vim-unwanted
rm -rf pack/plugins/start/vim-unwanted
rm -rf .git/modules/pack/plugins/start/vim-unwanted
git commit -m "Remove vim-unwanted"
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

![VIM in my desktop - JavaScript](https://i.imgur.com/fmTTK59.png)
![VIM in my desktop - Python](https://i.imgur.com/Qh22its.png)
![VIM in my desktop - Golang](https://i.imgur.com/RHRqXAP.png)

## License

The MIT License (MIT)
