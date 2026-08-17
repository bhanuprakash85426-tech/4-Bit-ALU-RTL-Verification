# 4-Bit ALU RTL Verification

## Project Overview

This project implements and verifies a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

The ALU performs multiple arithmetic, logical, and shift operations based on a 3-bit operation select signal. A Verilog testbench is used to apply different input combinations and verify the output, carry, and zero flags.

The design was simulated using the EcrioniX Online Verilog Simulator.

## Objectives

- Design a 4-bit ALU using Verilog RTL.
- Implement multiple arithmetic and logical operations.
- Develop a Verilog testbench for functional verification.
- Verify the ALU output for all operation select values.
- Verify carry generation for arithmetic and shift operations.
- Verify the zero flag.
- Analyze simulation results.

## ALU Specifications

| Parameter | Description |
|---|---|
| Data Width | 4-bit |
| Input A | 4-bit |
| Input B | 4-bit |
| Operation Select | 3-bit |
| Output Y | 4-bit |
| Carry | 1-bit |
| Zero | 1-bit |
| HDL | Verilog |
| Design Type | RTL |
| Simulation Tool | EcrioniX Online Verilog Simulator |

## Operations

| ALU_Sel | Operation | Description |
|---|---|---|
| `000` | Addition | A + B |
| `001` | Subtraction | A - B |
| `010` | AND | A & B |
| `011` | OR | A \| B |
| `100` | XOR | A ^ B |
| `101` | NOT | ~A |
| `110` | Left Shift | A << 1 |
| `111` | Right Shift | A >> 1 |

## Design Description

The ALU uses a combinational `always @(*)` block.

The `ALU_Sel` input determines which operation is performed.

### Addition

For `ALU_Sel = 3'b000`:

```verilog
{carry, y} = A + B;
