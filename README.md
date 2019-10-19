# Knaur
An extremely simple, hackable AUR helper.

## Installation
Clone the repository and run `sudo make install`
```sh
$ git clone git@github:lptstr/knaur.git
$ sudo make install
```

## Tests
> Note: running tests requires `shellcheck` to be installed.
```sh
$ cd knaur
$ make tests
```

## Usage
knaur is still a work in progress, so expect a few things to be broken.

**Syntax**:
```sh
$ [OPTIONS] knaur [ACTIONS] [PACKAGES]
```

E.g. to search the AUR for 'rsfetch', try this:
```
./bin/knaur -s 'rsfetch'
```
Or to install a package, try this:
```
./bin/knaur -i rsfetch-bin
```

Try `knaur -h` for all options and actions.

## Runtime dependencies
- `jq` (for parsing json when searching) 
- `bash` 
- `python 3+` (for various helper scripts written in Python)
- `curl` (for downloading packages)
