RISC = 1 operation / 1 MIPS instruction
# PRINCIPLE
• Simplicity favors regularity 
• Smaller is faster
• Make the common case fast 
• Good design demands good compromises 
## OPERANDS
#### REGISTERS
32-BIT -> 32 register (start wth **$**)

| Regs                                                           | Names                                                          | Description                                                                                                           |
| -------------------------------------------------------------- | -------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `$0`                                                           | `$zero`                                                        | the value **0**; writes are discarded                                                                                 |
| `$1`                                                           | `$at`                                                          | **a**ssembler **t**emporary; reserved for assembler use                                                               |
| `$2` `$3`                                                      | `$v0` `$v1`                                                    | **v**alue from expression evaluation or function return                                                               |
| `$4` `$5`  <br>`$6` `$7`                                       | `$a0` `$a1`  <br>`$a2` `$a3`                                   | first four **a**rguments to a function/subroutine                                                                     |
| `$8` `$9`  <br>`$10` `$11`  <br>`$12` `$13`  <br>`$14` `$15`   | `$t0` `$t1`  <br>`$t2` `$t3`  <br>`$t4` `$t5`  <br>`$t6` `$t7` | **t**emporary; callers relying on their values must save them before calling subroutines as they may be overwritten   |
| `$16` `$17`  <br>`$18` `$19`  <br>`$20` `$21`  <br>`$22` `$23` | `$s0` `$s1`  <br>`$s2` `$s3`  <br>`$s4` `$s5`  <br>`$s6` `$s7` | **s**aved; subroutines must guarantee their values are unchanged (by, for example, restoring them)                    |
| `$24` `$25`                                                    | `$t8` `$t9`                                                    | **t**emporary; callers relying on their values must save them before calling subroutines as they may be overwritten   |
| `$26` `$27`                                                    | `$k0` `$k1`                                                    | for **k**ernel use; may change unexpectedly — avoid using in user programs                                            |
| `$28`                                                          | `$gp`                                                          | **g**lobal **p**ointer (address of global area)                                                                       |
| `$29`                                                          | `$sp`                                                          | **s**tack **p**ointer (top of stack)                                                                                  |
| `$30`                                                          | `$fp`                                                          | **f**rame **p**ointer (bottom of current stack frame);  <br>if not using a frame pointer, becomes a **s**ave register |
| `$31`                                                          | `$ra`                                                          | **r**eturn **a**ddress of most recent caller                                                                          |
#### MEMORY
**COPY:** 
• Load (l): **copy** data from memory to a register 
• Store (s): **copy** data from a register to memory

STEP to update/load data from M to R
P send the addr(8) to the M
M go the WORD at addr(8)
M take the data of the WORD
M send the data into the P
P update the R(destination) with the new value

STEP to store data from R to M
P send the value in the source R and the destination of R in the M
M go to WORD at the dest
M update the new value
#### SHORT INT IMMEDIATE 
Constraint: 16 bits
	#text immediate = know the exact value

## Group of instruction
#### 1st group: arithmetic instructions
Assembly instruction format:

| Opcode | Destination register | Source register 1 | Source register 2(*) |
| ------ | -------------------- | ----------------- | -------------------- |
|        |                      |                   |                      |
Opcode: 
	add
	sub
	addi
	..........
#### 2nd group: data transfer instructions
Assembly instruction format: 

| Opcode | Register | Memory operand |
| ------ | -------- | -------------- |
|        |          |                |

Opcode: Register Memory operand– Size of data: 1 byte, 2 bytes (half of word), or 4 bytes (word) – Behaviors: load or store 
Register: 
	+In Load: destination
	+In Store: source
Memory operand: offset(base register)
	offset must be in the constrain of short int
Mem ADDr = offset + valueOfAddress(base regs)

lw: load word 
lh:
lhu
lb
lbu
sign extended= 
u = unsigned => zero-extend 