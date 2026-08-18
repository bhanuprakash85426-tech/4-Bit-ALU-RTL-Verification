# 4-Bit ALU RTL Design and Functional Verification

## 1. Project Overview
This project presents the RTL design and functional verification of a 4-bit Arithmetic Logic Unit (ALU) implemented in Verilog HDL. The ALU is a combinational digital circuit that performs a set of arithmetic and logical operations on two 4-bit inputs, selected using a 3-bit operation select signal. The design was verified using a self-written Verilog testbench, with simulation carried out on the EcrioniX Online Verilog Simulator.

## 2. Objectives
- Design a 4-bit ALU supporting arithmetic and logical operations using Verilog HDL.
- Implement the ALU as a combinational RTL module.
- Develop a testbench to apply test vectors and verify functional correctness.
- Verify the ALU output, carry output, and zero flag for all supported operations.
- Document the design and verification process in a clear, recruiter-readable format.

## 3. Technologies and Tools Used
- **Hardware Description Language:** Verilog HDL
- **Design Methodology:** RTL (Register Transfer Level) combinational design
- **Verification Method:** Testbench-based functional simulation
- **Simulation Platform:** EcrioniX Online Verilog Simulator
- **Version Control:** Git and GitHub

## 4. ALU Specifications
| Parameter            | Description                              |
|-----------------------|--------------------------------------------|
| Operand Width         | 4 bits                                     |
| Operation Select      | 3 bits (`ALU_Sel`)                         |
| Number of Operations  | 8                                          |
| Design Type           | Combinational logic                        |
| Output Width          | 4 bits (`Y`), plus Carry and Zero flags    |

## 5. ALU Operations
| ALU_Sel | Operation      |
|---------|----------------|
| 000     | Addition       |
| 001     | Subtraction    |
| 010     | AND            |
| 011     | OR             |
| 100     | XOR            |
| 101     | NOT            |
| 110     | Left Shift     |
| 111     | Right Shift    |

## 6. Inputs and Outputs
**Inputs**
| Signal    | Width | Description                  |
|-----------|-------|-------------------------------|
| A         | 3:0   | First 4-bit operand           |
| B         | 3:0   | Second 4-bit operand          |
| ALU_Sel   | 2:0   | Operation select signal       |

**Outputs**
| Signal | Width | Description                              |
|--------|-------|-------------------------------------------|
| Y      | 3:0   | 4-bit result of the selected operation    |
| Carry  | 1     | Carry-out flag (relevant for arithmetic)  |
| Zero   | 1     | Set when the result Y is zero             |

## 7. RTL Design
The ALU is implemented as a combinational RTL module in Verilog. Based on the value of `ALU_Sel`, the module selects between addition, subtraction, AND, OR, XOR, NOT, left shift, and right shift operations on the inputs `A` and `B`. The result is driven onto the output `Y`, along with the `Carry` and `Zero` status flags. The design uses a `case` statement structure within a combinational always block to implement the operation selection logic.

RTL source file:
```
RTL/alu_4bit.v
```

## 8. Functional Verification
A dedicated Verilog testbench was developed to verify the functional correctness of the ALU design.

Verification approach:
- Applied input combinations for `A`, `B`, and `ALU_Sel` covering all eight operations.
- Monitored the output `Y` for each operation to confirm correctness against expected results.
- Verified the `Carry` output for arithmetic operations (Addition and Subtraction).
- Verified the `Zero` flag for cases where the result equals zero.
- Simulated the design and testbench together on the EcrioniX Online Verilog Simulator to observe output values and waveform behavior.

Testbench file:
```
testbench/tb_alu_4bit.v
```

## 9. Simulation Results
Simulation was performed on the EcrioniX Online Verilog Simulator. All eight ALU operations were exercised, and the corresponding output (`Y`), `Carry`, and `Zero` values were verified against expected results.

Simulation screenshots included in this repository:
- `rtl_simulator.png` — RTL simulation setup on the EcrioniX Online Verilog Simulator
- `testbench_simulation_results.png` — Testbench simulation output and results

## 10. Project Structure
```
4-Bit-ALU-RTL-Verification/
├── README.md
├── RTL/
│   └── alu_4bit.v
├── testbench/
│   └── tb_alu_4bit.v
├── rtl_simulator.png
└── testbench_simulation_results.png
```

## 11. Skills Demonstrated
- Verilog HDL coding for combinational RTL design
- Understanding of arithmetic and logic operations at the hardware level
- Testbench development for functional verification
- Simulation-based debugging and result verification
- Structured documentation of a digital design project
- Use of Git and GitHub for version control and project presentation

## 12. Key Learning Outcomes
- Gained hands-on experience translating a digital logic specification into synthesizable Verilog RTL code.
- Understood the role of operation-select-based multiplexing in ALU design.
- Learned to write and apply testbenches for functional verification of digital circuits.
- Developed the ability to trace and validate simulation outputs against expected behavior, including flag conditions such as carry and zero.
- Strengthened understanding of the RTL design and verification flow relevant to Digital Design and VLSI roles.

## 13. Author
**Bhanu Prakash**
Electronics and Communication Engineering (ECE)
