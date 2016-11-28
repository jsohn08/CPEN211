# CPEN211

## LAB 11 - Performance

### Part 1

**Without cache enabled:**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- |
| 57729 | 0 | 513 |

**With cache enabled**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- |
| 4176 | 73 | 514 | Trial 1 |
| 1502 | 4 | 513 | Trial 2 |
| 1097 | 0 | 513 | Trial 3 |

**Without cache enabled, with LDR modified**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- |
| 55207 | 0 | 513 |

**With cache enabled, with LDR modified**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- |
| 7538 | 98 | 513 | Trial 1 |
| 1290 | 4 | 513 | Trial 2 |
| 1077 | 0 | 514 | Trial 3 |

Calculated instruction count: $4 + 2(1 + 256(4) + 3) = 2060$

Calculated cycle time: $\frac{1}{800\text{MHz}} = 1.25\text{ns}$

Calculated average CPI: $\frac{4176}{2060}\approx 2.02 \text{CPI}$

Execution Time: $\text{Instruction Count} \times \text{CPI} \times \text{Cycle Time} = 2060\times 2.02 \times 1.25\times10^{-9}=5.2\mu\text{s}$

### Part 2

#### N = 2 (small)

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- | :--- |
| No | 3142 | 0 | 26 |
| Yes | 661 | 21 | 27 |

#### N = 3 (medium)

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- | :--- |
| No | 9559 | 0 | 67 |
| Yes | 1247 | 26 | 70 |

#### N = 16 (large)

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- | :--- |
| No | 1046777 | 0 | 8221 |
| Yes | 69688 | 212 | 8468 |

#### N = 128 (very large)

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :--- | :--- | :--- | :--- |
| No | 527954669 | 0 | 4210692 |
| Yes | 137569913 | 2110834 | 4210823 |

## LAB 10 - I/O INTERRUPT
[DONE]: PART 1

[DONE]: PART 2

- ~~Create Part 2 Files~~

- ~~Add JTAG UART interrupt~~

- ~~Add timer (200MHz) interrupt before IDLE (generate interrupt every 0.5 seconds)~~

- ~~Add code to configure timer~~

- ~~Extend SERVICE_IRQ to process interrupts generated by the timer~~

- ~~Fix timer not triggering interrupt issue~~

[DONE]: PART 3

- ~~Create part 3 files~~

- ~~Configure JTAG UART to interrupt when detecting keyboard~~

- ~~Extend SERVICE_IRQ to process new interrupts~~

- ~~Modify IDLE loop~~

[IN PROGRESS]: PART 4

- ~~Create part 4 files~~

- ~~Create second process PROC1~~

- ~~Copy code from LAB 8 - PART 4~~

- ~~Remove code that updates LEDs~~

- ~~Create global variable CURRENT_PID~~

- ~~Add global array PD_ARRAY~~

- ~~Modify SERVICE_IRQ to store interrupted program to appropriate location~~

- ~~Save and restore PC properly~~???

- ~~Read and save status register using MRS (read) or MSR (write)~~

- ~~Save or restore LR and SP by changing CPU mode to Supervisor with disabled interrupt~~

- ~~Toggle CURRENT_PID~~

- ~~Load registers from the other process~~

- ~~Last two register (pc & lr) should be restored using `SUBS PC, LR, #4`~~

- Debug this piece of shit

Pseudo Code for step 7:

```
check which process it is (0 or 1)

if process 0:
store process 0 regs in first half
switch to process 1
load process 1 regs from second half

else process 1:
store process 1 regs in second half
switch to process 0
load process 0 regs from first half

get out IRQ

```

## LAB 9 - RECURSIVE FUNCTION

[X] TODO: Modify main function to test all three cases

[X] TODO: Modify main function to test each case only on HIGH switch signals

[X] TODO: Modify recursion function so middleIndex is stored in R11 and backed up to memory

[X] TODO: Modify recursion function so r4 is passed into stack as argument

[X] TODO: Modify recursion so all register that might get overwritten is backed up to memory

## LAB 7 - Branching

[X] TODO: added modifications to program counter

[X] TODO: make datapath and FSM work with new prog


## LAB 6 - RISC MACHINE PART 2 - MEMORIES AND FSM

**Implemented FSM controller and RAM for Datapath**
