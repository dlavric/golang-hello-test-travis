## This repository is made for the purpose of testing how Travis works

Script `hello.go` prints `hello`

Script `test.sh` checks the output of `hello.go` is `hello`

## Prerequisites

- [X] Install GO on MacOS:
```shell
$ brew install golang
```

## What's included

The repository includes:

- A [.travis.yml](https://github.com/dlavric/golang-hello-test-travis/blob/main/.travis.yml) configuration file

- A [hello.go](https://github.com/dlavric/golang-hello-test-travis/blob/main/hello.sh) go lang script that prints hello

- A [test.sh](https://github.com/dlavric/golang-hello-test-travis/blob/main/test.sh) shell script that will test if our hello.go script is doing what is supposed to do

## How to use this repo

- Clone this repo:

```shell
$ git clone https://github.com/dlavric/golang-hello-test-travis
$ cd golang-hello-test-travis
```

- Build and install the program with the go tool:
```shell
$ go mod init example.com/user/hello
$ go install example.com/user/hello
```

- Add the install directory to our PATH to make running binaries easy:
```shell
$ export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))
```

- Run `hello.go`:
```shell
$ go run hello.go
```