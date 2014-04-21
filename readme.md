# My (Rodolfo's) dotfiles

## Install

To install simply do:

- `git clone git@bitbucket.org:rodolfocaldeira/dotfiles.git`
- `cd dotfiles`
- copy the `git/gitconfig.symlink.example` to `git/gitconfig.symlink` and add your details
- `sh install.sh`

The install script will symlink the files to your home directory. That's it you're done.

If you are a zsh fan, don't forget to install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) first.


## Sublime Text 3

Create the links for Sublime text.

- `cd /Users/rodolfo/Library/Application Support/Sublime Text 3`
- `ln -s ~/Projects/dotfiles/sublime3/Packages Packages`
- `ln -s ~/Projects/dotfiles/sublime3/Installed\ Packages/ Installed\ Packages`


## Thank you

I drew a lot of inspiration from the following projects, thanks for sharing :)

- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Ryan Bates Dot Files](https://github.com/ryanb/dotfiles)
- [Holman does dotfiles](https://github.com/holman/dotfiles)