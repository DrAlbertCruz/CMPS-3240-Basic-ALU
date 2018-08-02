# CMPS-3240-Basic-ALU

CMPS 3240: Developing MIPS competency with a basic ALU

# Introduction

## Requirements

* SPIM
* Understand 2's compliment
* Understand how artithmetic operations can be represented algorithmically using addition and subtraction

## Objectives

* MIPS competency
* Develop subtraction and multiplication operations on an ALU using only addition and binary operations

## Background

The instruction set, or instruction set architecture, are the low-level instructions a processor can execute. When compiling a program in a high-level language such as C, the code is translated into binary machine language that can be read directly by the processor. Assembly language is a human-readable translation of the machine language instructions. We are currently working with MIPS32 assembly language, but there are many other instruction sets out there, such as x86.

Instruction sets generally include arithmetic operations (add, subtract), logic (and, or, etc.), memory operations and control flow. The number of instructions included in an instruction set can vary. For example, the Intel x86 instruction set has ~980 instructions. x86 has 
MIPS has a 6-bit wide opcode and can only have 64 total operations.

### Why the difference? 

x86 follows complex instruction set (CISC) architecture, where a single instruction can execute what would normally be considered many low-level operations. MIPS follows reduced instruction set (RISC), where there are fewer operations. For example, in x86 you can perform arithmetic directly on memory, whereas with MIPS you would have to load the memory into registers, perform arithmetic on the registers, then store the result back into memory. x86 has instructions to store and interact with numbers larger than word-length that take up multiple registers. Under the hood, the hardawre on the processor is taking care of the overhead for you. x86 even has assembly instructions to compare string data. MIPS is capable of doing all of this as well, though it would just take more low-level operations.

It would seem like CISC is the best way to go, but keep in mind that each instruction is a physical circuit (so an x86 processor would have to be very complex indeed, accounting for its ~980 instructions!). There may be situations when you want to limit the number of transistors and thus limit the number of operations. Additionally, complex instructions can be so complex that a single instruction takes more cycles to execute. With this lab we consider the question, *what would it be like if MIPS had even fewer instructions?*

# Approach


In this lab we will demonstrate competency in MIPS by implementing a MIPS instruction set with an ALU that cannot carry out subtraction and multiplication operations. It is your job to implement code that carries out subtraction using only the addition and binary operations. 

For subtraction, carry out an addition but negate the sign of the second term. Recall that negative numbers are represented as two’s compliment, which is carried out with a NOT and an ADD.

For multiplication, recall from arithmetic that a multiplication is just a repeated addition. You can implement this with loops.

Bare-bones code has been provided. You can use any calling convention you like but if you want to practice with a practical calling convention use the System V ABI. To get started, clone this lab:

```bash
$ git clone https://github.com/DrAlbertCruz/CMPS-3240-Basic-ALU.git
```

# Discussion

1. Provide MIPS code for a division operation
2. Is it possible to represent the addition operation algorithmically using 32-bit boolean operations?
