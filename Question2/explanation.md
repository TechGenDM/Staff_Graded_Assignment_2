Command
cd ../Q2

Explanation:

Moved to the Q2 directory to implement the process management program.

Command
pwd

Explanation:

Verified that the current working directory is Q2.

Command
touch process.c

Explanation:

Created the C source file for implementing process management.

Command
nano process.c

Explanation:

Opened the source file in the Nano editor and wrote the required C program.

Command
gcc process.c -o process

Explanation:

Compiled the C source code using the GCC compiler and generated an executable file named process.

Command
ls

Explanation:

Verified that the executable file process was successfully created after compilation.


Command
./process

Explanation:

Executed the program. The parent process created a child process, terminated it using SIGTERM, and then used wait() to prevent the creation of a zombie process.

# Conceptual Explanation

### fork()

`fork()` creates a new child process by duplicating the parent process. Both processes execute independently after the fork.

### kill()

`kill()` sends a signal to another process. In this program, `SIGTERM` is used to terminate the child process.

### wait()

`wait()` makes the parent process wait for the child to finish and collects its exit status, preventing zombie processes.

### Zombie Process

A zombie process is a terminated child process whose exit status has not yet been collected by its parent. Calling `wait()` removes the zombie entry from the process table.