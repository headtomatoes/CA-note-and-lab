#### 1. **CPU Time**
**Definition**: time for CPU done a specific task
CPU Time= Number of Clock Cycles × Clock Cycle Time
Alternatively:
    CPU Time=Number of Clock Cycles /Clock Rate

#### 2. **CPU Clock Cycles**
**Definition**: the number of cycles the CPU completes while executing
Number of Clock Cycles=Instructions × Cycles per Instruction (CPI)

#### 3. **Clock Rate** & **Clock Cycle Time**
Clock Cycle Time = 1/ Clock Rate
	(s,ms,us,ns)             (Hz,KHz,MHz,GHz)
#### 4. **Instruction count & CPI**
$$
\text{Clock Cycles} = \text{Instruction count} \times \text{Cycles per Instruction}
$$

$$
\text{CPU Time} = \text{Instruction count} \times \text{Cycles per Instruction} \times \text{Clock Cycle Time}
$$

$$
\text{CPU Time} = \frac{\text{Instruction count} \times \text{Cycles per Instruction}}{\text{Clock Rate}} = \frac{\text{IC} \times \text{CPI}}{\text{Clock Rate}}
$$
- These formulas are interrelated:
    - More instructions → longer execution time
    - Higher CPI → longer execution time
    - Faster clock rate → shorter execution time
- Performance Optimization:
    - Reduce instruction count through better algorithms
    - Reduce CPI through better CPU architecture
    - Increase clock rate (though limited by power/heat constraints)

#### 5. **Mixed Instructions CPI (Cycles Per Instruction)**
The average CPI for a program with mixed instructions is calculated as:
$$
\text{Average CPI} = \sum_{i=1}^{n} (\text{CPI}_i \times \text{Frequency}_i)
$$

Where:

- CPI i​: Cycles per instruction for instruction type i.
    
- Frequency i: Fraction of total instructions that are of type ii.
    
- n: Total number of instruction types.

### EX:
#### Steps to Calculate Mixed Instructions CPI

1. **Identify Instruction Types**:
    
    - Classify instructions into types (e.g., arithmetic, load/store, branch).
        
2. **Determine CPI for Each Type**:
    
    - Find the CPI for each instruction type (e.g., arithmetic = 1 cycle, load/store = 2 cycles, branch = 3 cycles).
        
3. **Calculate Frequency of Each Type**:
    
    - Determine the fraction of total instructions for each type.
        
4. **Compute Weighted CPI**:
    
    - Multiply the CPI of each type by its frequency and sum the results.

![[Pasted image 20250215084800.png]]

#### 6. **Performance summary**
![[Pasted image 20250215093402.png]]
Performance depends on 
- Algorithm: IC, possibly CPI 
- Programming language: IC, CPI 
- Compiler: IC, CPI 
- Instruction set architecture: IC, CPI, T
-
