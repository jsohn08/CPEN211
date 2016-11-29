# CPEN211

### Muchen He: 44638154; p5h0b

[TOC]

---

## LAB 11 - DOUBLE FLOATING POINT PERFORMANCE

### Part 1

**Without cache enabled:**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------------- | :-------------- | :-------------- |
| 57,729         | 0               | 513             |

**With cache enabled**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------------- | :-------------- | :-------------- |
| 4,176          | 73              | 514             |
| 1,502          | 4               | 513             |
| 1,097          | 0               | 513             |

**Without cache enabled, with LDR modified**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------------- | :-------------- | :-------------- |
| 55,207         | 0               | 513             |

**With cache enabled, with LDR modified**

| R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------------- | :-------------- | :-------------- |
| 7,538          | 98              | 513             |
| 1,290          | 4               | 513             |
| 1,077          | 0               | 514             |

> Calculated instruction count: $4 + 2(1 + 256(4) + 3) = 2060$
>
> Calculated cycle time: $\frac{1}{800\text{MHz}} = 1.25\text{ns}$
>
> Calculated average CPI: $\frac{4176}{2060}\approx 2.02 \text{CPI}$
>
> Execution Time: $\text{Instruction Count} \times \text{CPI} \times \text{Cycle Time} = 2060\times 2.02 \times 1.25\times10^{-9}=5.2\mu\text{s}$
>
> Execution Time: $5.22\mu\text{s}$

### Part 2

- Program is most likely execute number of instructions from the formula: $6+N(3+N(5+N(14)+6))$


- Calculated cycle time: $\frac{1}{800\text{MHz}} = 1.25\text{ns}$

#### N = 16

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------ | :------------- | :-------------- | :-------------- |
| No      | 1,046,777      | 0               | 8,221           |
| Yes     | 69,688         | 212             | 8,468           |
| Yes     | 69,620         | 212             | 8,468           |

> Calculated instruction count: $6+(16)(3+(16)(5+(16)(14)+6)) = 60214$
>
> Calculated average CPI: $\frac{69688}{60214} \approx 1.16 \text{CPI}$
>
> Execution Time: $87.11 \mu\text{s}$

#### N = 128

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------ | :------------- | :-------------- | :-------------- |
| No      | 527,954,669    | 0               | 4,210,692       |
| Yes     | 137,569,913    | 2,110,834       | 4,210,823       |

> Calculated instruction count: $6+(128)(3+(128)(5+(128)(14)+6)) = 29,540,742$
>
> Calculated average CPI: $\frac{137,569,913}{29,540,742} \approx 4.66 \text{CPI}$
>
> Execution Time: $0.172 \text{s}$

### Part 2X (Other N values)

#### N = 1

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------ | :------------- | :-------------- | :-------------- |
| No      | 936            | 0               | 7               |
| Yes     | 308            | 21              | 8               |

> Calculated instruction count: $6+(1)(3+(1)(5+(1)(14)+6)) = 34$
>
> Calculated average CPI: $\frac{308}{34} \approx 9.06 \text{CPI}$
>
> Execution Time: $0.385 \mu\text{s}$

#### N = 2

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------ | :------------- | :-------------- | :-------------- |
| No      | 3,142          | 0               | 26              |
| Yes     | 661            | 21              | 27              |

> Calculated instruction count: $6+(2)(3+(2)(5+(2)(14)+6)) = 168$
>
> Calculated average CPI: $\frac{661}{168} \approx 3.93 \text{CPI}$
>
> Execution Time: $0.826 \mu\text{s}$

#### N = 3

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------ | :------------- | :-------------- | :-------------- |
| No      | 9,559          | 0               | 67              |
| Yes     | 1,247          | 26              | 70              |

> Calculated instruction count: $6+(3)(3+(3)(5+(3)(14)+6)) = 492$
>
> Calculated average CPI: $\frac{1,247}{492} \approx 2.53 \text{CPI}$
>
> Execution Time: $1.58\mu\text{s}$

#### N = 4

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------ | :------------- | :-------------- | :-------------- |
| No      | x              | 0               | x               |
| Yes     | 2,185          | 32              | 152             |

> Calculated instruction count: $6+(4)(3+(4)(5+(4)(14)+6)) = 930$
>
> Calculated average CPI: $\frac{2,185}{930}\approx 2.35 \text{CPI}$
>
> Execution Time: $2.73 \mu\text{s}$

#### N = 5

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| :------ | :------------- | :-------------- | :-------------- |
| No      | x              | 0               | x               |
| Yes     | 3,673          | 39              | 283             |

> Calculated instruction count: $6+(5)(3+(5)(5+(5)(14)+6)) = 2,046$
>
> Calculated average CPI: $\frac{3,673}{2,046}\approx 1.795 \text{CPI}$
>
> Execution Time: $4.59\mu\text{s}$

#### N = 6

| Cached? | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| ------- | -------------- | --------------- | --------------- |
| No      | x              | 0               | x               |
| Yes     | 4,898          | 47              | 479             |

> Calculated instruction count: $6+(5)(3+(6)(5+(6)(14)+6)) = 3,444$
>
> Calculated average CPI: $\frac{4,898}{3,444}\approx 1.42\text{CPI}$
>
> Execution Time: $6.12\mu\text{s}$


### Part 3

#### N = 128

| Blocksize | R3 (CPU Cycle) | R4 (Cache Miss) | R5 (Load Count) |
| --------- | -------------- | --------------- | --------------- |
| 16        | 45,131,670     | 160,443         | 4,325,379       |
| 32        | 53,818,909     | 305,727         | 4,259,843       |
> Calculated instruction count (*From part 2*): $=29,540,742$[^note]
>
> Calculated average CPI (blocksize 16): $\frac{45,131,670}{29,540,742} \approx 1.52 \text{CPI}$
>
> Calculated average CPI (blocksize 32): $\frac{53,818,909}{29,540,742} \approx 1.82 \text{CPI}$
>
> $\therefore$ There is a decrease in CPI and increase in optimization since the average CPI in part 2 is **4.66** for $N=128$

[^note]: We can use the same approximate instruction count from part 2 because *R5 (Load count)* is identical: about 4.2 million. This number is also proportional to $N$ and can be modelled using the equation $\text{R5}=2N^3$
