# Jack's collection of dotfiles

[Resource](https://www.atlassian.com/git/tutorials/dotfiles) for managing dotfiles in home directory using git

## Migration

The following alias must be added to the shell 

```bash
alias dotfiles='usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'
```

In this case, `dotfiles` is the alias for `git` for the dotfiles and `.files` is the `.git` directory. So for the rest 
of these instructions, we'll juse use `dotfiles` and `.files`.

Ignore the `.files` `git` directory.
```bash
echo ".files" >> .gitignore
```

Then we clone the master repository
```bash
git clone --bare <git-repo-url> $HOME/.files
```

and then we can checkout 

```bash
dotfiles checkout
```

If for some reason, we have some local dotfiles in our $HOME (which we will) and we don't care about them (which we won't),
we can overwrite it with 
```
dotfiles fetch --all
dotfiles reset --hard origin/master
```
