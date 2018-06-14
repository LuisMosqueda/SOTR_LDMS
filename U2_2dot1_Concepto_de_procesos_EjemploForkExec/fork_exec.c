#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main (int argc, char *argv[]) {
  pid_t childpid;
  int n = atoi(argv[1]), i;

  for (i = 1; i <= n; i++)
    switch(childpid = fork()) {
    case 0: // Código del hijo.
    execl("./exec/hijo", "hijo", argv[1], NULL);
    break; // Para evitar entrar en el for.
  }

  return 0;
}

