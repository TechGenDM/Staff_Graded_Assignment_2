#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

int main() {

    int fd = open("employee.txt", O_CREAT | O_RDWR, 0644);

    if(fd < 0){
        printf("File creation failed!\n");
        return 1;
    }

    write(fd, "Alice\nBob\nCharlie\n", 18);

    lseek(fd, 6, SEEK_SET);

    write(fd, "David", 5);

    lseek(fd, 0, SEEK_SET);

    char buffer[100];

    int bytes = read(fd, buffer, sizeof(buffer)-1);

    buffer[bytes] = '\0';

    printf("Employee Records:\n%s", buffer);

    close(fd);

    return 0;
}