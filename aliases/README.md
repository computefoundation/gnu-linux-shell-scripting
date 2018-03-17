
# Aliases

This directory contains aliases and frequently used short functions.

## View all

To view all the solutions in this directory, change to it and run the following:

```bash
git show-ref --verify -q refs/heads/helper_scripts || \
git branch --track helper_scripts origin/helper_scripts; \
bash <(git show helper_scripts:cf-gpc-view-aliases.sh)
```

## Usage

Add the following code in your .bashrc file to source all the aliases and short functions in your bash runtime environment:

```bash
for cfGpcAliasesFile in $(find "<path/to/cf-gpc>/aliases" -type f -name '*.aliases*'); do
  source "${cfGpcAliasesFile}"
done
```

## Notes

* Aliases do not support file names with spaces.
* Some aliases use environment variables (e.g. ${EDITOR}) which must be defined if not already or replaced if possible.
* Some aliases require a common dependency (e.g. gcc) which will be specified in the description.

