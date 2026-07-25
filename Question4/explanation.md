Command
cd ../Q4

Explanation:

Moved to the Q4 directory to perform log monitoring using Linux commands.

Command
pwd

Explanation:

Verified that the current working directory is the Q4 folder.

Command
touch system.log

Explanation:

Created a sample log file for demonstrating log monitoring.

Command
echo "INFO: Server Started" >> system.log
echo "ERROR: Database Connection Failed" >> system.log
echo "WARNING: Low Memory" >> system.log
echo "ERROR: Disk Full" >> system.log

Explanation:

Added sample log entries containing informational, warning, and error messages.

Command
cat system.log

Explanation:

Verified that the sample log entries were successfully written to the log file.

Command
tail -f system.log | grep ERROR >> error_report.txt

Explanation:

Continuously monitored the log file, filtered only the error messages, and appended them to error_report.txt.

Command
cat error_report.txt

Explanation:

Verified that the filtered error messages were successfully stored in the report file.

# Conceptual Explanation

### tail -f

`tail -f` continuously monitors a file and displays new lines as they are added.

### grep ERROR

`grep ERROR` filters the output and displays only lines containing the word "ERROR".

### >>

The `>>` operator appends the filtered output to a file without overwriting its existing contents.

### 2>/dev/null

The `2>/dev/null` redirection suppresses error messages by sending them to the null device.