## Nginx reverse proxy demo by domain name

This is a very simple POC trying to demostrate how to integrate several containers in production and solve 
the right container by domain name.

The containers should have to share the folder, they are all put together here in order to demonstrate the whole thing 
easily.

The only trick is to share networks and hostnames in order to redirect internally (proxy) the requests to the right
container.

## To see the demo in action:

Start a docker machine with

```docker-machine create --driver=virtualbox TEST```

enter into the machine with
```eval $(docker-machine env TEST)```

you can start containers launching
```./up.sh```

and down them with
```./down.sh```

before see how it works you need to create hosts in your /etc/hosts file, like that

```
192.168.99.100	one.web.dev
192.168.99.100	two.web.dev
```

being 192.168.99.100 the IP that the docker-machine command gave you

finally to see the results just go in the browser to:

[http://one.web.dev/](http://one.web.dev/)

and

[http://two.web.dev/](http://two.web.dev/)



