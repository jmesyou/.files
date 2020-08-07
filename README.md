# Jack's collection of dotfiles

[Resource](https://www.atlassian.com/git/tutorials/dotfiles) for managing dotfiles in home directory using git

## Migration

The following alias must be added to the shell 

```bash
alias config='usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

In this case, `config` is the alias for `git` for the dotfiles and `.cfg` is the `.git` directory. So for the rest 
of these instructions, we'll juse use `config` and `.cfg`.

Ignore the `.cfg` `git` directory.
```bash
echo ".cfg" >> .gitignore
```

Then we clone the master repository
```bash
git clone --bare <git-repo-url> $HOME/.cfg
```

and then we can checkout 

```bash
config checkout
```

If for some reason, we have some local dotfiles in our $HOME (which we will) and we don't care about them (which we won't),
we can overwrite it with 
```
config fetch --all
config reset --hard origin/master
```
