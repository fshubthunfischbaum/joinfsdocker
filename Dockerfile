FROM mcr.microsoft.com/dotnet/runtime:8.0
COPY JoinFS-Console /srv/JoinFS-CONSOLE
COPY run.sh /srv/JoinFS-CONSOLE/run.sh
RUN chmod 755 /srv/JoinFS-CONSOLE/run.sh
EXPOSE 6112
WORKDIR /srv/JoinFS-CONSOLE
