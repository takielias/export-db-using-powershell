$MySQLPath = "C:\wamp64\bin\mariadb\mariadb10.4.10\bin"
$Hostname = "localhost"
$Username = "root"
$Password = ""
$OutputDrive = "C:\DBBackup.sql"

# Get list of Databases
$Databases = [System.Collections.Generic.List[String]] (
    & $MySQLPath\mysql.exe -h"$Hostname" -u"$Username" -p"$Password" -B -N -e"show databases;"
)

# Remove databases from list we don't want
[void]$Databases.Remove("information_schema")
[void]$Databases.Remove("performance_schema")
[void]$Databases.Remove("mysql")

# Dump database to .SQL file
& $MySQLPath\mysqldump.exe -h"$HostName" -u"$Username" -p"$Password" --skip-add-locks -B $($Databases) -r "$OutputDrive"