# Capstan Example C Application

This is an example Capstan C application.

## Prerequisites

You first need to install Capstan.

You then need to bootstrap the OSv base image in the ``osv.git`` repository:

```
$ make image=empty
$ export CAPSTAN_REPO=$HOME/.capstan/repository
$ mkdir -p $CAPSTAN_REPO/osv-base
$ cp build/release/usr.img $CAPSTAN_REPO/osv-base/osv-base
```

To verify that the base image is installed correctly:

```
$ capstan images
osv-base
```

## Usage

First build the application:

```
$ make
```

Then build a Capstan image of it:

```
$ capstan build hello
```

Finally, launch the application under a VM:

```
$ capstan run hello
```
