#!/bin/bash
# wait-for-sqlserver.sh

set -e

until /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${SA_PASSWORD} -d master -Q "Select @@version;"; do
  >&2 echo "wating..."
  sleep 1
done

>&1 echo "   |    ************************    |"
>&1 echo "   |    MS SQL SERVER IS RUNNING    |"
>&1 echo "   |    ************************    |"

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${SA_PASSWORD} -d master -i ./init.sql