Command
cd ../Q3

Explanation:

Moved to the Q3 directory to implement the Linux system calls program.

Command
pwd

Explanation:

Verified that the current working directory is the Q3 folder.

Command
touch file_syscall.c

Explanation:

Created the C source file for demonstrating Linux file system calls.

Command
nano file_syscall.c

Explanation:

Opened the source file in Nano and implemented the required system call program.

Command
gcc file_syscall.c -o file_syscall

Explanation:

Compiled the C program using the GCC compiler and created an executable named file_syscall.

Command
ls

Explanation:

Verified that the executable file was successfully created.

Command
./file_syscall

Explanation:

Executed the program. It created a file, wrote employee records, repositioned the file pointer, read the file contents, and displayed them.


Command
cat employee.txt

Explanation:

Verified that the employee records were successfully written to the file.

# Conceptual Explanation

### open()

The `open()` system call creates or opens a file and returns a file descriptor that is used for subsequent file operations.

### write()

The `write()` system call writes data from the program to the file.

### lseek()

The `lseek()` system call changes the current file pointer position. In this program, it moves the pointer back to the beginning before reading.

### read()

The `read()` system call reads data from the file into a buffer.

### close()

The `close()` system call closes the file descriptor and releases the associated system resources.