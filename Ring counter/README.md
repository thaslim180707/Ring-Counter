# 4-bit Ring Counter using Verilog

## Overview

This project implements a **4-bit Ring Counter** using Verilog HDL.

A ring counter is a type of shift register where a single logic bit circulates through multiple flip-flops.

## Features

- 4-bit ring counter
- Clock controlled operation
- Asynchronous reset
- Sequential circuit design
- GTKWave waveform simulation support

## Inputs

| Signal | Description |
|--------|-------------|
| clk | Clock signal |
| reset | Reset signal |

## Output

| Signal | Description |
|--------|-------------|
| count[3:0] | Ring counter output |

## Working Principle

After reset:

```
0001
```

Each clock pulse shifts the `1` bit:

```
0001 → 0010 → 0100 → 1000 → 0001
```

## State Sequence

| State | Output |
|------|--------|
| S0 | 0001 |
| S1 | 0010 |
| S2 | 0100 |
| S3 | 1000 |

## Project Files

- `ring_counter.v` - Ring counter design
- `ring_counter_tb.v` - Testbench
- `ring_counter.vcd` - Simulation waveform
- `simulation_result.png` - Waveform screenshot

## Simulation

### Compile

```bash
iverilog -o ring ring_counter.v ring_counter_tb.v
```

### Run

```bash
vvp ring
```

### View Waveform

```bash
gtkwave ring_counter.vcd
```

## Applications

- Frequency division circuits
- Sequence generators
- LED pattern controllers
- Digital timing circuits
- Control systems