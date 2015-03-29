# Installing Pizza

## Prerequisites

For Pizza to work, you need a running mail service (either server, smarthost or local) using "mailx" from nail (provided by, i.e., heirloom-mailx in debian, s-nail in arch).

## Installation

### The simple way

Install Pizza by running "install.sh" from the base-directory.
install.sh takes two arguments: PREFIX (defaults to "/usr/local/") and
INCPREFIX (defaults to "$PREFIX/share"). To set INCPREFIX, passing PREFIX beforehands is mandatory!

### The hard way

If you have `$SCRIPTDIR` and `$SHAREDIR`, you may also run the following commands from the src-base:

```bash
install -m 755 src/pizza $SCRIPTDIR/pizza
mkdir -p $SHAREDIR/pizza
install -m 644 assets/* $SHAREDIR/pizza/
```

Afterwards, you have to set the variable `$PIZZAINC` to `$SHAREDIR` accordingly.
