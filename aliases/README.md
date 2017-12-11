
# aliases/

This directory contains aliases. Aliases also constitute as frequently used short functions.

## View content

To view all aliases, cd to the aliases directory and run the following:

```bash
s='view-Shell-aliases.sh' && git show helper_scripts:"${s}" > /tmp/"${s}" && \
chmod +x /tmp/"${s}" && /tmp/"${s}"
```

## Usage

To source all the aliases files in your .bashrc, add the following:

```bash
for f in $(find <path/to/Shell>/aliases -type f -name '*.aliases*'); do
  . "${f}"
done
```

## Notes

* Aliases do not support file names with spaces.
* Some aliases use environment variables (e.g. ${EDITOR}) which must be defined if not already or replaced if possible.
* Some aliases require a common dependency (e.g. gcc).

