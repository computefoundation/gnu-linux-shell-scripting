
# Scripts

This directory contains scripts.

## View all

To view all the solutions in this directory, change to it and run the following:

```bash
git show-ref --verify -q refs/heads/helper_scripts || \
git branch --track helper_scripts origin/helper_scripts; \
bash <(git show helper_scripts:cf-gpc-view-scripts.sh)
```

