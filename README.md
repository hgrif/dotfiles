# dotfiles

Repo for versioning and setting up dotfiles.


# Usage

```sh
git clone https://github.com/hgrif/dotfiles.git
cd dotfiles
./makesymlinks.sh
```

All files/folders in folder `files/` are symbolic linked to their `.`-equivalents in `~`. Existing files are backed up.

# Todo:
- Determine if profile/bash_profile/bash_rc/.. flow is OK
- Make compatible with data-science-box


# See also:
- https://github.com/michaeljsmalley/dotfiles/
- https://github.com/tdhopper/dotfiles
