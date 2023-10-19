#!/bin/bash

log_directory="/path/to/log/directory"
days_to_keep=7  # Change this value to the number of days you want to keep log files

find "$log_directory" -type f -name "*.log" -mtime +$days_to_keep -exec rm {} \;

#Run the following command to make the script executable
chmod +x clean_logs.sh

#testing the script to ensure it deletes the log files as expected
./clean_logs.sh

#To schedule the script to run at specific intervals (e.g., nightly), you can set up a cron job. Edit your crontab by running
crontab -e

#Add the schedule line to run your shell script every night at midnight
0 0 * * * /path/to/clean_logs.sh

