#!/bin/bash

build () {
    package=rethinkdb_1.12.4-0ubuntu1~lucid_amd64.deb
    echo Downloading rethinkdb package
    TMP=$(mktemp --directory)
    cd $TMP
    wget --no-check-certificate --quiet https://launchpad.net/~rethinkdb/+archive/ppa/+files/$package
    echo Extracting rethinkdb package
    ar vx $package
    tar -xzvf data.tar.gz  
    echo Installing rethinkdb
    cp usr/bin/rethinkdb $HOME
    cp -r usr/share/rethinkdb/web $HOME
}

build
