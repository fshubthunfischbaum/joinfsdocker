FROM mcr.microsoft.com/dotnet/runtime:8.0
COPY JoinFS-CONSOLE /srv/JoinFS-CONSOLE
COPY run.sh /srv/JoinFS-CONSOLE/run.sh
RUN chmod 755 /srv/JoinFS-CONSOLE/run.sh
EXPOSE 6112
WORKDIR /srv/JoinFS-CONSOLE
HEALTHCHECK --interval=30s --timeout=3s \
  CMD pwsh -c "Test-NetConnection -Port 6612 -ComputerName localhost -InformationLevel Quiet" || exit 1