# RethinkDB on Stackato #

This project contains all the files necessary to launch a RethinkDB
custom service on Stackato. It's very much a work in progress! The
following works:

* Starting RethinkDB on Stackato
* Pointing the browser at the Web UI
* Connecting client drivers to the server

The following does not work:

* Scaling to multiple nodes
* Authentication (anyone who knows the URL can access the server)
* Automatically printing port information
* Proper logging integration

## Usage ##

```
git clone git://github.com/Stackato-Apps/rethinkdb-stackato.git
cd rethinkdb-stackato
stackato push -n
```

Then point your browser to the printed URL.

If you'd like to get the host and ports for the client drivers, try
the following:

```
stackato run rethinkdb "echo $STACKATO_HARBOR_DRIVER"
stackato run rethinkdb "echo $STACKATO_HARBOR_INTRACLUSTER"
```

## Using it in your app ##

Add the contents of stackato.yml and copy the builder script to your project. Remember, this isn't meant for production! This is only a Proof of Concept for RethinkDB on Stackato.
