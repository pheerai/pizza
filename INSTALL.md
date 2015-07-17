# Installing Pizza

## Prerequisites

For Pizza to work, you need a running mail service (either server, smarthost or local) using "mailx" from nail (provided by, i.e., heirloom-mailx in debian, s-nail in arch).

## Installation

### The simple way

Install Pizza by running "install.sh" from the base-directory.
install.sh takes two arguments: a prefix (the path where to place the executable parts; defaults to "/usr/local/") and
an incprefix (the path where to place the message contents/ASCII-images; defaults to "<prefix>/share").
To set incprefix, passing prefix beforehands is mandatory!
You may also pass the environement variables "$PATH" and "$INCPATH", even though given arguments take precedence.

### The hard way

If you have `$SCRIPTDIR` and `$SHAREDIR`, you may also run the following commands from the src-base:

```bash
install -m 755 src/pizza $SCRIPTDIR/pizza
mkdir -p $SHAREDIR/pizza
install -m 644 assets/* $SHAREDIR/pizza/
```

Afterwards, you have to set the variable `$PIZZAINC` to `$SHAREDIR` accordingly.
