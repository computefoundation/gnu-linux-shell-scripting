
# Aliases

This directory contains aliases and frequently used short functions.

## View

Cd to this directory and run the following to view the solutions in it:

```bash
git show-ref --verify -q refs/heads/helper_scripts || \
git branch --track helper_scripts origin/helper_scripts; \
bash <(git show helper_scripts:view-shell-aliases.sh)
```

## Usage

Add the following to your .bashrc to source all the aliases and short functions in your bash runtime:

```bash
for shellAliasesFile in $(find <path/to/shell>/aliases -type f -name '*.aliases*'); do
  . "${shellAliasesFile}"
done
```

## Notes

* Aliases do not support file names with spaces.
* Some aliases use environment variables (e.g. ${EDITOR}) which must be defined if not already or replaced if possible.
* Some aliases require a common dependency (e.g. gcc).

