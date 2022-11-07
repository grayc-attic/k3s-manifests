# Usage with `[k3s-maven-plugin](https://github.com/kokuwaio/k3s-maven-plugin)`

```sh
ddstop
mvn k3s:create k3s:start k3s:kubectl -Dk3s.portBindings=8080:8080 -Dk3s.kubectl.command="kubectl apply -k ." -Dk3s.kubectl.manifest=.
```

Access dashboard: [http://dashboard.127.0.0.1.nip.io:8080](http://dashboard.127.0.0.1.nip.io:8080/#/workloads?namespace=_all)
