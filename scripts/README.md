
# Scripts

This directory contains scripts.

## View

Cd to this directory and run the following to view the solutions in it:

```bash
git show-ref --verify -q refs/heads/helper_scripts || \
git branch --track helper_scripts origin/helper_scripts; \
bash <(git show helper_scripts:view-shell-scripts.sh)
```

