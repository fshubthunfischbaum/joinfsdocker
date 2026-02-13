Trying to get a working JoinFS Server to fly in a docker container here.

docker run --name joinfsdocker --env-file .env -p 6112:6112/udp --restart unless-stopped -it -d joinfsdocker /bin/sh -c "bash /srv/JoinFS-CONSOLE/run.sh"