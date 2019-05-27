# knaur
A very simple Arch Linux AUR helper that stays out of your way.

## usage

knaur is currently under heavy development, so many things will be broken.

If you want to try this out, clone the repository somewhere and run the ./bin/knaur script.

ACTIONS:
- i - install
- r - remove
- u - upgrade
- s - search

E.g. to search the AUR for 'rsfetch', try this:
```
./bin/knaur s 'rsfetch'
```
Or to install a package, try this:
```
./bin/knaur i rsfetch-bin
```

## requirements
- jq
- bash
- python 3+
- makepkg
