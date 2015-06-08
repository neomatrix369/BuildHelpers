###Build OpenJDK 9

<i>#####Timeline: first attempt</i>

######Downloading the Dockerfile
```
$ git clone git@github.com:AdoptOpenJDK/BuildHelpers.git
$ git checkout 1ae5fa44b617ebc2077c34004525506c20950606
```

or

```
$ wget https://github.com/neomatrix369/BuildHelpers/blob/1ae5fa44b617ebc2077c34004525506c20950606/Docker/OpenJDK9/Dockerfile
```

######Building the image using Dockerfile

``` 
$ docker build -t [newname]/[reponame] .
```

######Running the image

``` 
$ docker sudo docker run -it [newname]/[reponame] /bin/bash
```
or
``` 
$ docker sudo docker run -it [newname]/[reponame] java --version
```

[newname] - a name to identify the image <br/>
[reponame] - name of the repo

