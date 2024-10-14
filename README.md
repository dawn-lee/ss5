# ss5
基于https://ss5.sourceforge.net/ 制作的docker镜像

## Build ss5

### Using dockerfile

Clone this project, then build it like below:

```
docker build -t ss5:1.0 .
```

## Run ss5

```
docker run -d -p 1080:1080 --name ss5 -v ./ss5/config:/etc/opt/ss5/ -v ./ss5/logs:/var/log/ss5/ ss5:1.0
```