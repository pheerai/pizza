#/bin/bash

install -m 755 src/pizza /usr/local/bin/pizza
mkdir -p /usr/local/share/pizza
install -m 644 assets/* /usr/local/share/pizza/
