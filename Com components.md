# CPU
ALU
PC
REGISTER
# MEMORY 
CELLS: 1 byte/cell (std)
	address: fixed phys loc 
	data: change 
	bus: 32 = > 4gb
		**WORD:** n bits = the system bus => MIPS = 32 bits = 4 bytes
		Constraint: 4 cells considerate 1 address  //  1 cell can only belong to 1 address
		=> offset = 4 => the lowest add in the WORD is div by 4 => that address is the add of the WORD
		how we store data in WORD:
		broken down the data into smaller one with the MSB and LSB is store in the lowest address is depend on the SYSTEM ( big or little endian)
		
# I/O MODULE
