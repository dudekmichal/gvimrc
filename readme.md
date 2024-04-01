# How it looks like
![Screen](img/screen.png)

# How to install
* Install `Visual Studio 2022` (required for YouCompleteMe)
* Install `cmake`: https://cmake.org/download/
* Install `python3`
* Install gVim
* `git clone https://github.com/dudekmichal/gvimrc`
* Copy vimrc and vimfiles to ~/
* Run gVim
* `:PlugInstall`
* In vimfiles/plugged/YouCompleteMe:
`python install.py --clangd-completer --msvc=17`

# Tips
* `:terminal` run internal terminal
* `<leader>hp` show hunk preview (gitgutter)
* `<leader>u` toggle undo tree
* `grep -Rnwi . -e 'sth'` search recursively in current directory
