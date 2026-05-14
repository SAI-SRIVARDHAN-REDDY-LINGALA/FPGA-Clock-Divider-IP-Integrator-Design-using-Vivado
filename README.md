# FPGA Clock Divider & IP Integrator Design using Vivado

## Overview

This project demonstrates a complete FPGA system design workflow using the Xilinx Vivado IP Integrator flow.

The design generates a human-visible **1 Hz clock** from the FPGA onboard high-frequency system clock using:

- Clocking Wizard IP
- RTL-based clock divider
- IP Integrator Block Design
- HDL Wrapper flow
- Custom IP Packaging
- Binary Counter integration
- Hardware validation using LEDs

This project was built as a practical learning exercise to understand:

- FPGA clocking architecture
- IP-based FPGA design
- Vivado Block Design workflow
- RTL + IP integration
- Custom reusable IP generation
- Constraint management
- FPGA hardware debugging concepts

---

# Features

- 125 MHz onboard clock integration
- Clocking Wizard configuration using MMCM/PLL
- 10 MHz intermediate clock generation
- RTL-based 1 Hz clock divider
- LED blinking hardware validation
- Custom IP packaging flow
- Binary counter integration
- External I/O pin mapping
- HDL Wrapper generation
- Vivado IP Integrator workflow
- Reusable FPGA subsystem design

---

# Technologies Used

- Xilinx Vivado
- Verilog HDL
- Vivado IP Integrator
- Clocking Wizard IP
- XDC Constraints
- FPGA Block Design Flow

---

# FPGA Concepts Covered

## FPGA Architecture

- CLB (Configurable Logic Block)
- SLICEL vs SLICEM
- LUTs and Flip-Flops
- Carry Chains
- Distributed RAM

---

## Digital Design Concepts

- Sequential Logic
- Clock Division
- Frequency Scaling
- Counter-Based Timing
- Synchronous Design
- Reset Logic

---

## FPGA System Design Concepts

- IP Integrator Flow
- Block Design (BD)
- HDL Wrapper
- Out-of-Context (OOC) Synthesis
- Custom IP Packaging
- Board Interfaces
- Constraint Management
- VIO Debugging Concepts

---

# System Architecture

```text
Board Clock (125 MHz)
        ↓
Clocking Wizard IP
        ↓
10 MHz Clock
        ↓
RTL Clock Divider
        ↓
1 Hz Clock
        ↓
LED Output / Counter
```

---

# Why 1 Hz Clock Is Needed

FPGA onboard clocks typically operate at very high frequencies such as:

- 100 MHz
- 125 MHz

At these frequencies, LEDs toggle too fast for the human eye to observe.

To visually validate sequential logic behavior, a low-frequency clock such as **1 Hz** is generated.

This allows:

- Visible LED blinking
- Counter observation
- Hardware validation

---

# Clocking Wizard Usage

The Clocking Wizard IP is used to:

- Generate stable clocks
- Perform frequency division/multiplication
- Reduce clock jitter
- Manage FPGA clock resources

### Configuration

- Input Clock: 125 MHz
- Output Clock: 10 MHz
- Primary Clock Only
- Unused ports disabled

---

# Why RTL Divider Is Required

PLL/MMCM blocks inside FPGAs cannot directly generate extremely low frequencies like 1 Hz.

Typical minimum frequencies are in the MHz range.

Therefore:

- MHz clocks → Generated using PLL/MMCM
- Hz clocks → Generated using RTL counters

The 10 MHz clock is divided using Verilog counter logic to create a stable 1 Hz signal.

---

# RTL Clock Divider Logic

The divider works by:

- Counting 10,000,000 clock cycles
- Toggling output every 5,000,000 cycles

Result:

- 0.5 second HIGH
- 0.5 second LOW

Which produces a complete 1 Hz square wave.

---

# HDL Wrapper Concept

Vivado cannot synthesize a pure `.bd` Block Design directly.

An HDL Wrapper is required to:

- Create a synthesizable top module
- Enable implementation
- Generate bitstream

This is a mandatory step in the IP Integrator flow.

---

# Constraint Handling

## Automatic Constraints

The system clock is connected using:

- Board Interface
- Connection Automation

Vivado automatically assigns:

- Clock pins
- Clock constraints

---

## Manual Constraints

Manual XDC constraints were applied for:

- Reset switch
- LED output

Using:

- LVCMOS33 I/O standard

---

# Hardware Validation

The generated 1 Hz clock was validated using onboard LEDs.

Observed result:

- LED toggles once every second

This confirms:

- Correct clock generation
- Proper routing
- Successful synthesis & implementation
- Functional FPGA hardware operation

---

# Custom IP Packaging

The clock divider subsystem was packaged as a reusable custom IP.

Benefits:

- Reusability
- Faster future integration
- Modular FPGA design
- Improved scalability

The packaged IP can be added directly from the Vivado IP Catalog.

---

# Counter Integration Project

The generated 1 Hz clock was connected to a Binary Counter IP.

### Configuration

- 4-bit counter
- LED output display

### Counter Sequence

```text
0000 → 0001 → ... → 1111 → 0000
```

with visible 1-second transitions.

---

# VIO (Virtual Input/Output)

Physical FPGA boards have limited switches and LEDs.

VIO is used to:

- Observe internal signals
- Debug wide buses
- Emulate switches and LEDs
- Monitor high-speed logic

without requiring physical I/O pins.

---

# Language Templates & FPGA Resources

Some FPGA resources cannot be inferred directly from RTL.

Examples:

- BUFG
- PLL
- MMCM
- Clock Buffers
- SERDES blocks

These are instantiated using Vivado Language Templates.

Key idea:

> Inference describes behavior.  
> Instantiation selects hardware.

---

# Skills Demonstrated

- FPGA Design
- RTL Design
- Clock Division
- Vivado IP Integrator
- Custom IP Packaging
- FPGA Constraint Management
- Sequential Logic Design
- Hardware Validation
- FPGA Clocking Architecture
- Modular Hardware Design
- System-Level FPGA Thinking

---

# Industry Relevance

This project reflects real FPGA development workflows used in:

- Embedded Systems
- FPGA Prototyping
- Digital System Integration
- FPGA Verification
- Hardware Acceleration Platforms

---

# Key Takeaways

- Low-frequency clocks are generated using RTL counters
- IP Integrator accelerates FPGA system design
- HDL Wrappers are mandatory for synthesis
- Custom IPs improve modularity and reuse
- Board automation simplifies clock constraints
- VIO solves FPGA I/O limitations
- Hybrid RTL + IP design is industry standard

---

# Author

**Sai Srivardhan Lingala**  
Electronics Engineering Student | FPGA & Digital Design Enthusiast
