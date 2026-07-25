Command
cd ../Q5

Explanation:

Moved to the Q5 directory to demonstrate Vim recovery commands.

Command
pwd

Explanation:

Verified that the current working directory is Q5.

Command
echo "server_port=8080" > config.txt

Explanation:

Created a sample configuration file to demonstrate Vim editing and recovery.

Command
cat config.txt

Explanation:

Verified that the configuration file was created successfully.

Command
vim config.txt

Explanation:

Opened the configuration file in the Vim editor for editing.

Command
vim -r config.txt

Explanation:

Attempted to recover the file using Vim's recovery feature. Since there was no crash, no swap file was available for recovery.

# Conceptual Explanation

### Swap Files

Vim automatically creates a swap file while editing a document. If the editor or system crashes, the swap file can be used to recover unsaved changes.

### Undo History

Vim maintains an undo history during editing, allowing users to reverse recent changes. Persistent undo can also preserve this history across sessions when enabled.

### Backup Files

When backup is enabled, Vim creates a backup copy of the original file before saving changes. This helps restore the previous version if needed.

### Recovery

The command `vim -r filename` attempts to recover unsaved work from the swap file after an unexpected crash.