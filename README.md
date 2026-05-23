# Arithmetic-Logic-Unit
# 8-Bit Custom Arithmetic Logic Unit (ALU) & Data Path

![SystemVerilog](https://img.shields.io/badge/Language-SystemVerilog-blue.svg)
![EDA](https://img.shields.io/badge/Tool-Xilinx_Vivado-orange.svg)
![Status](https://img.shields.io/badge/Status-Simulation_Verified-success.svg)

## Overview
This project contains the RTL (Register Transfer Level) design and verification of a fully custom 8-bit Arithmetic Logic Unit (ALU) and instruction data path written in SystemVerilog. 

Designed with foundational digital logic principles, this project demonstrates an understanding of low-level computer architecture, instruction decoding, and hardware verification—skills highly relevant to microprocessor design and semiconductor engineering.

##  Future Scope: Physical Hardware Implementation
*Note: This architecture is currently verified via RTL simulation. I am in the process of acquiring the necessary physical components (74HC series logic ICs) to transition this digital blueprint into a physical breadboard.*

## Architecture Highlights
- **Custom Instruction Decoder (ROM):** Implements a dedicated opcode map to route signals across the data path, dynamically slicing a control bus into operation, multiplexer select, and flag-enable zones.
- **Optimized Two's Complement Subtraction:** Reuses the core addition logic by implementing a conditional Bitwise XOR array combined with a dynamic Carry-In (+1), avoiding the silicon overhead of a dedicated subtraction module.
- **Hardware Status Flags:** Extracts real-time CPU status flags directly from the combinational logic:
  - **Carry Flag (CF):** Indicates mathematical overflow during addition, and acts as an inverted borrow flag during subtraction.
  - **Sign Flag (SF):** Extracts the Most Significant Bit (MSB) to indicate negative results in Two's Complement arithmetic.
- **Combinational Logic Routing:** Utilizes a custom 8-to-1 Multiplexer as the central switchboard to handle parallel execution results without latches or floating wires.

## Instruction Set Architecture (ISA) Map
The custom ROM decoder maps the following 3-bit operations to specific ALU outputs:

| Opcode | Operation | Description |
| :---: | :--- | :--- |
| `000` | **ADD** | Arithmetic Addition (A + B) |
| `001` | **SUB** | Arithmetic Subtraction (A - B) using Two's Complement |
| `010` | **SHR** | Logical Shift Right (A >> B) |
| `011` | **NOTA** | Bitwise Inversion (~A) |
| `100` | **AND** | Bitwise AND (A & B) |
| `101` | **SHL** | Logical Shift Left (A << B) |
| `110` | **XOR** | Bitwise XOR (A ^ B) |
| `111` | **NOTB** | Bitwise Inversion (~B) |

## Module Hierarchy
* `ALU_TOP.sv` - The top-level data path combining the math blocks, multiplexer, and flag registers.
  * `ROM.sv` - The Instruction Decoder.
  * `mux7.sv` - The 8-to-1 routing switchboard.
  * `addertop.sv` - The Arithmetic core routing.
    * `adder_8bit.sv` - The pure mathematical adder block.
    * `substr_xor.sv` - The Two's Complement logic handler.
  * *(Logic & Shift Modules)* - Independent hardware blocks for `AND`, `XOR`, `SHL`, `SHR`, `NOTA`, and `NOTB`.

## Project's Schematic



## Verification & Testing

The ALU is strictly verified using Vivado's simulation suite to ensure mathematical accuracy and correct flag generation across all instruction types. 

Included is a **Verification Testbench** (`ALU_TB.sv`) that tests:
1. Normal arithmetic bounds.
2. Arithmetic overflow (Carry flag verification).
3. Subtraction into negative decimal ranges (Sign flag and Inverted Borrow verification).
4. Logic masking and bit-shifting edge cases.
