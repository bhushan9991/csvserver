# The csvserver

## Commands:
- **Docker images pull command:**
```
docker pull infracloudio/csvserver:latest
docker pull prom/prometheus:v2.22.0
```
```
- docker images
REPOSITORY               TAG       IMAGE ID       CREATED        SIZE
infracloudio/csvserver   latest    8cb989ef80b5   2 months ago   237MB
prom/prometheus          v2.22.0   7adf5a25557b   7 months ago   168MB
```

- **Bash script gencsv.sh**

-> cat gencsv.sh
```
#!/bin/bash

RANDOM=$$
for i in `seq 10`
do
        echo $((i++)), $RANDOM >> inputdata
done
```
- **Bash script output:**

-> cat inputdata
```
1, 22441
2, 11803
3, 28520
4, 17390
5, 21863
6, 32539
7, 20857
8, 31346
9, 4144
10, 21367
```
- **Docker run command:**
```
docker run -d --name csvserver -e CSVSERVER_BORDER='Orange' -v ${PWD}/inputdata:/csvserver/inputdata -p 9393:9300 infracloudio/csvserver
```
