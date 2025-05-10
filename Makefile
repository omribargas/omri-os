all:
	as -o helloworld.o helloworld.asm
	ld -o helloworld helloworld.o

clean:
	rm -rf helloworld.o helloworld
    
