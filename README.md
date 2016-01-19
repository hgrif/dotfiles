# dotfiles

Repo for versioning and setting up dotfiles.


# Usage

```sh
git clone https://github.com/hgrif/dotfiles.git
cd dotfiles
./makesymlinks.sh
```

All files/folders in folder `files/` are symbolic linked to their `.`-equivalents in `~`. Existing files are backed up.


# Setup
VIM:
* `plug.vim`: run `:PlugInstall`
* syntastic: `pip install flake8`


# See also
- https://github.com/michaeljsmalley/dotfiles/
- https://github.com/tdhopper/dotfiles


# Todo
    * set file associations:
        * .md: macvim?
