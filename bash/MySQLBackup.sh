#!/usr/bin/env bash

################################################################################
#                                                                              #
# MySQL Backup                                                                 #
#                                                                              #
################################################################################

# 1. Backs up all data into time stamped individual directories.
# 2. Maintains a single log that contains running information
# 3. Includes a file comment header inside each compressed file
# 4. Used more variables instead of hard-code to make routine easier to use for something else

# Clear the screen
clear

# Welcome Message
echo -e \\t "Script to Backup, Optimise and Repair All MySQL Databases"
echo -e \\t "------------------------------------------------------------------------"

# Create benchmark 1
TIME_1=`date +%s`

# Create the timestamp
TS=$(date +%Y.%m.%d\-%I.%M.%p)

# Options
DELETE_EXPIRED_AUTOMATICALLY="TRUE"
BASE_DIR=/mnt/database/backup
BACKUP_DIR=${BASE_DIR}/$TS
BACKUP_LOG_NAME=mysql_dump_runtime.log
BACKUP_LOG=${BASE_DIR}/${BACKUP_LOG_NAME}
MYSQL_USERNAME="root"
MYSQL_PASSWORD="tri_mysql=15"
EXPIRE_MINUTES=$(( 60 * 24 * 7 ))

if [ $EXPIRE_MINUTES -gt 1440 ]; then
    expire_days=$(( $EXPIRE_MINUTES / 1440 ))
else
    expire_days=0
fi

function pause() {
    read -p "$*"
}

# Pause "HIT RETURN, and then enter your sudo password..."
echo -e \\t "Please enter your sudo password..."
sudo echo

# Get the current working directory and echo this out
current_dir=`pwd`
echo -e \\n\\t "Current working directory is: ${current_dir}"
echo -e \\t "------------------------------------------------------------------------"

# Create the required directories if they do not exist
sudo mkdir -p $BACKUP_DIR
sudo chown mysql:root $BACKUP_DIR
sudo chmod 775 $BASE_DIR
sudo chmod -R 777 $BACKUP_DIR

# Change directory to the Backup Directory
cd $BACKUP_DIR
echo -e \\n\\t "Changed working directory to: `pwd`"
echo -e \\t "Saving the following backups..."
echo -e \\t "------------------------------------------------------------------------"

# Connect to the MySQL and get a list of all the databases
DBS="$(mysql --user=${MYSQL_USERNAME} --password=${MYSQL_PASSWORD} -Bse 'show databases')"

# Loop through the list of databases
for db in ${DBS[@]}
  do

    normal_output_filename=${db}.sql
    compressed_output_filename=${normal_output_filename}.bz2
    echo $compressed_output_filename

    # remember to add the options you need with your backups here.
    echo -e \\t "-- $compressed_output_filename - $TS" > $normal_output_filename

    if [ -e /bin/logname ]; then
        LOGNAME=`logname`
        echo -e \\t "-- Logname : ${LOGNAME}" >> $normal_output_filename
    fi

    # mysqldump --user=${MYSQL_USERNAME} --password=${MYSQL_PASSWORD} $db --single-transaction -R | bzip2 -c > $compressed_output_filename
    mysqldump --user=${MYSQL_USERNAME} --password=${MYSQL_PASSWORD} $db --single-transaction -R >> $normal_output_filename

    bzip2 -c $normal_output_filename > $compressed_output_filename
    rm $normal_output_filename

done

echo -e \\t "------------------------------------------------------------------------"

# Create benchmark 2
TIME_2=`date +%s`

elapsed_seconds=$(( ( $TIME_2 - $TIME_1 ) ))
elapsed_minutes=$(( ( $TIME_2 - $TIME_1 ) / 60 ))

# Just a sanity check to make sure i am not running a dump for 4 hours

cd $BASE_DIR
echo -e \\n\\t "Changed working directory to: `pwd`"
echo -e \\t "Making log entries..."

if [ ! -f $BACKUP_LOG ]; then
    echo "------------------------------------------------------------------------" > ${BACKUP_LOG_NAME}
    echo "THIS IS A LOG OF THE MYSQL DUMPS..." >> ${BACKUP_LOG_NAME}
    echo "DATE STARTED : [${TS}]" >> ${BACKUP_LOG_NAME}
    echo "------------------------------------------------------------------------" >> ${BACKUP_LOG_NAME}
    echo "[BACKUP DIRECTORY ] [ELAPSED TIME]" >> ${BACKUP_LOG_NAME}
    echo "------------------------------------------------------------------------" >> ${BACKUP_LOG_NAME}
fi

echo "[${TS}] This mysql dump ran for a total of $elapsed_seconds seconds." >> ${BACKUP_LOG_NAME}
echo "------------------------------------------------------------------------" >> ${BACKUP_LOG_NAME}

# Delete old databases. I have it setup on a daily cron so anything older than 60 minutes is fine
if [ $DELETE_EXPIRED_AUTOMATICALLY == "TRUE" ]; then

    counter=0

    for del in $(find $BASE_DIR -name '*-[0-9][0-9].[0-9][0-9].[AP]M' -mmin +${EXPIRE_MINUTES})
    do
        counter=$(( counter + 1 ))
        echo -e \\t "[${TS}] [Expired Backup - Deleted] $del" >> ${BACKUP_LOG_NAME}
    done
    echo -e \\t "------------------------------------------------------------------------"

    if [ $counter -lt 1 ]; then
        if [ $expire_days -gt 0 ]; then
            echo -e \\t "There were no backup directories that were more than ${expire_days} days old:"
        else
            echo -e \\t "There were no backup directories that were more than ${EXPIRE_MINUTES} minutes old:"
        fi
    else
        echo -e \\t "------------------------------------------------------------------------" >> ${BACKUP_LOG_NAME}
        if [ $expire_days -gt 0 ]; then
            echo -e \\t "These directories are more than ${expire_days} days old and they are being removed:"
        else
            echo -e \\t "These directories are more than ${EXPIRE_MINUTES} minutes old and they are being removed:"
        fi
        echo -e \\t "------------------------------------------------------------------------"
        echo -e \\t "\${EXPIRE_MINUTES} = ${EXPIRE_MINUTES} minutes"
        counter=0
        for del in $(find $BASE_DIR -name '*-[0-9][0-9].[0-9][0-9].[AP]M' -mmin +${EXPIRE_MINUTES})
        do
        counter=$(( counter + 1 ))
           echo -e \\t $del
           rm -R $del
        done
    fi
fi

# Finsh the script and restore the working directory
echo -e \\t "------------------------------------------------------------------------"
cd `echo $current_dir`
echo -e \\t "Restored working directory to: `pwd`"
echo -e \\n

# Run MySQLCheck to Auto Repair, Check and Optimise all database tables
echo -e "Run checks on the database to Auto Repair and Optimise."
mysqlcheck -u root -ptri_mysql=15 --auto-repair --check --check-upgrade --optimize --all-databases
