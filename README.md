# resiliency_workshop (WIP)

### Steps

Install dependencies of your app
```bash
$ make install_deps
```

Spin the containers up
```bash
$ make up
```

Populate the datasets
```bash
$ make populate
```

Enter the toxiproxy container
```bash
$ make toxi
```

Be naughty
```bash
$ /go/bin/toxiproxy-cli toxic add redis -t latency -a latency=2000
```

Profit!