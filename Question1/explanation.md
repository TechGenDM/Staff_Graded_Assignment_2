Command:
mkdir submissions backup screenshots

Explanation:

Created separate directories to store the original submissions, backup copies of unique files, and screenshots required for documentation.

Command:
ls

Explanation:

Verified that the required directories were created successfully.

Command:
echo "Hello Linux" > file1.txt

Explanation:

Created the first sample submission file using output redirection.

Command:
cp file1.txt file2.txt

Explanation:

Copied file1.txt to file2.txt to simulate a duplicate assignment submission.

Command:
echo "Operating Systems" > file3.txt

Explanation:

Created another sample submission with different content to represent a unique file.

Command:
ls

Explanation:

Verified that all three sample submission files were successfully created.

Command
chmod +x script.sh

Explanation:

Made the shell script executable so it can be run directly from the terminal.

Command
ls -l script.sh

Explanation:

Verified that the executable permission was successfully assigned to the script.

Command
./script.sh

Explanation:

Executed the shell script. It processed all submission files, identified duplicate files using checksums, and backed up only the unique files.

Command
cat report.txt

Explanation:

Displayed the generated report showing the total number of processed files, duplicate files, and backed-up files.

Command
cat errors.log

Explanation:

Checked the error log. Since no errors occurred during execution, the file remained empty.

Command
ls backup

Explanation:

Verified that only the unique submission files were copied to the backup directory.