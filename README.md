# My vim settings

I use vundle for my plugin manager

To install plugin in vundle use while in vim
```
:PluginInstall
```

To update plugins use while in vim
```
:PluginUpdate
```

##lightline.vim
To get light line plugin to work correctly add this to vimrc

```
set laststatus=2
if !has('gui_running')
      set t_Co=256
      endif
```

and to shell
```
export TERM=xterm-256color
```

##Syntastic
To check a file explicitly with a checker use
```
SyntasticCheck [checker]
```

to check file use
```
SyntasticCheck
```

**Use tidy for HTML
