#!/bin/bash

build () {
    echo Downloading rethinkdb package
    TMP=$(mktemp --directory)
    cd $TMP
    wget --no-check-certificate --quiet https://launchpad.net/~rethinkdb/+archive/ppa/+files/rethinkdb_1.10.0-0ubuntu1~lucid_amd64.deb
    echo Extracting rethinkdb package
    ar vx rethinkdb_1.10.0-0ubuntu1~lucid_amd64.deb
    tar -xzvf data.tar.gz  
    echo Installing rethinkdb
    cp usr/bin/rethinkdb $HOME
    cp -r usr/share/rethinkdb/web $HOME
}

build
