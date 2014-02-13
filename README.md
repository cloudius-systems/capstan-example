# Capstan Example C Application

This is an example Capstan C application.

## Prerequisites

Install Capstan on your machine.

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
