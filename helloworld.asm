.intel_syntax noprefix
.code64
.global _start
.global hello


#########################
#      TEXT SECTION     #
#########################

.text

_start:
    # WIRTE TO STDOUT
    MOV RAX, 1     # SYS_WRITE()
    MOV RDI, 1     # STDOUT
    LEA RSI, hello # ADDRESS    
    MOV RDX, 13    #SIZE
    SYSCALL

    # WE ARE GOING TO EXIT NOW 
    MOV RAX, 60
    MOV RDI, 0
    SYSCALL

#########################
#      DATA SECTION     #
#########################

.data

hello:
.ascii "Hello world!\n"


