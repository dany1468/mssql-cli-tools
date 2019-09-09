FROM mcr.microsoft.com/mssql-tools

RUN apt-get update && apt-get install -y --no-install-recommends unzip mssql-cli libunwind8 libicu55 \
  && apt-get clean \
  && curl -Lq https://go.microsoft.com/fwlink/?linkid=873926 -o sqlpackage-linux-x64-latest.zip \
  && ls -alh \
  && unzip sqlpackage-linux-x64-latest.zip -d /opt/sqlpackage \
  && chmod a+x /opt/sqlpackage/sqlpackage \
  && echo "export PATH=\"\$PATH:/opt/sqlpackage\"" >> ~/.bashrc \
  && apt-get purge -y --auto-remove unzip \
  && rm -rf /var/lib/apt/lists/*

