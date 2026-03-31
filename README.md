Trying to get a working JoinFS Server to fly in a docker container here.

docker run --name joinfsdocker --env-file .env -p 6112:6112/udp --restart unless-stopped -it -d joinfsdocker /bin/sh -c "bash /srv/JoinFS-CONSOLE/run.sh"

Works and tested on v26.1 of JoinFS. Should be drag and drop as well with newer versions too.