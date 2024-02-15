# Installation

Welcome to the GSCRIPT install!

## Docker

If you have docker installed, you can run:

```sh
docker pull Pascal-0x90/gscript:v1
```

Make a local directory where you can share files between your local machine and the docker container. Replace `$LOCAL_DIR` in the following command with the path to that:

```sh
docker run -it -v $LOCAL_DIR:/root/share Pascal-0x90/gscript:v1
```

## Manually

### Download GSCRIPT

First pull down the gscript command line utility or source.
https://github.com/Pascal-0x90/gscript (or your fork if you want to change things)
Make sure you save this project in your `GOPATH`, i.e:

```sh
$ echo $GOPATH
~/go/
```

Then the save would go here:

```sh
~/go/src/github/Pascal-0x90/gscript/
```

Like so:

```sh
mkdir -p ~/go/src/github/Pascal-0x90/gscript/ && \
	git clone https://github.com/Pascal-0x90/gscript.git ~/go/src/github/Pascal-0x90/gscript
```


### Build GSCRIPT

!!NOTE: This doesn't need to happen if you download gscript by doing `go get -a github.com/Pascal-0x90/gscript/cmd/gscript`

First we need to get all of the dependencies:

```sh
go get github.com/faith/color
go get github.com/robertkrimen/otto
go get golang.org/x/tools
go get github.com/vigneshuvi/GoDateFormat
go get github.com/urfave/cli
go get github.com/ahhh/gopkgs
go get github.com/tdewolff/minify/js
go get github.com/sirupsen/logrus
```

Then build the CLI tool:

```sh
cd ~/go/src/github.com/Pascal-0x90/gscript/cmd/gscript
go build
cp ./gscript /usr/local/bin/
gscript --help
```
