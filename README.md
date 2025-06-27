# IC-based-Morse-Code-Encoder-Decoder

A Verilog-based digital system that encodes and decodes Morse code using binary representations of English alphabets. Developed as part of the EC-201 Logic & Sequential Circuit Design course at the Department of Computer & Software Engineering, College of E&ME, NUST.

## Overview
This project implements a configurable Morse Code Encoder and Decoder in Verilog. The system translates between 5-bit binary representations of alphabets (A–Z) and their Morse code equivalents using dots (0) and dashes (1).

## Objectives
- **Encoder**: Convert 5-bit binary inputs to Morse code sequences.
- **Decoder**: Translate Morse code sequences back to binary representations.
- Configurable system using demultiplexer-based selection logic.

## Implementation Highlights
- **Verilog Modules**: Modular structure with separate encoder and decoder logic.
- **alphaROM**: ROM-based Morse code storage for character mapping.
- **Testbenches**: Simulated with waveform generation via `.vcd` files.
- **Hardware Logic**: K-map derived equations implemented using ICs on breadboard.
- **Switching Logic**: A demux enables dynamic switching between encode/decode modes.

## Technologies Used
- **Languages**: Verilog HDL
- **Tools**: Proteus, GTKWave, ModelSim
- **Components**: 74LS08 (AND), 74LS32 (OR), 74LS04 (NOT), 74LS139 (Demux), LEDs

## Sample Encoding
| Character | Binary | Morse Code |
|-----------|--------|------------|
| A         | 00001  | .-         |
| B         | 00010  | -...       |
| C         | 00011  | -.-.       |
| ...       | ...    | ...        |
| Z         | 11010  | --..       |

## Key Logic Equations
Example (Encoder - 3-bit):
- `Y1 = a'`
- `Y2 = c'e' + cd`
- `Y3 = b + ac`

Example (Decoder - 2-bit):
- `a = 0`, `b = x + y'`, `e = x' + y`

## Learning Outcomes
- Applied Boolean logic and K-map simplification.
- Designed and simulated sequential and combinational circuits.
- Gained hands-on hardware prototyping experience using Verilog and IC-based implementation.

## Troubleshooting
Originally used 7-bit ASCII values, but shifted to 5-bit numeric codes (1–26) for simplified mapping and manageable logic expressions.

## Conclusion
The project reinforces foundational digital design skills through a real-world communication system. It bridges theory and practice in sequential logic, simulation, and hardware testing.
