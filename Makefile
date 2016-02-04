CC = gcc $(CCFlags)
CCFlags = -g -Wall

.PRECIOUS: *.o

%.o: %.c
	$(CC) -c $<

server_main: server_main.o
	$(CC) -o server_main $<

client_main: client_main.o
	$(CC) -o client_main $<

all: server_main client_main

clean:
	rm *.o server_main client_main