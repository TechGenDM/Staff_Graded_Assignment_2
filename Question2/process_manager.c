#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <signal.h>

int main() {

    pid_t pid = fork();

    if(pid < 0){
        printf("Fork Failed\n");
        return 1;
    }

    if(pid == 0){
        printf("Child Process Started\n");
        sleep(10);
        printf("Child Process Finished\n");
    }
    else{
        printf("Parent Process Monitoring Child...\n");

        sleep(2);

        kill(pid, SIGTERM);

        wait(NULL);

        printf("Zombie Process Prevented\n");
    }

    return 0;
}