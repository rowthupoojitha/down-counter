# Verilog Down Counter

## 📌 Project Overview

This project implements a **4-bit synchronous down counter** using Verilog HDL.

The counter decreases its value by 1 on every positive edge of the clock. When reset is activated, the counter is initialized to its maximum value, `15`.

## 📂 Project Structure

```text
verilog-down-counter/
│
├── README.md
├── down_counter.v
├── down_counter_tb.v
└── simulation/
    └── waveform.png
```

## ⚙️ Features

* 4-bit down counter
* Verilog HDL implementation
* Asynchronous reset
* Testbench included
* Simulation waveform included
* Easy to understand and modify

## 🔢 Counting Sequence

```text
15 → 14 → 13 → 12 → 11 → 10 → ... → 3 → 2 → 1 → 0 → 15
```

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* GitHub

## ▶️ Simulation

Compile the Verilog files:

```bash
iverilog -o down_counter_sim down_counter.v down_counter_tb.v
```

Run the simulation:

```bash
vvp down_counter_sim
```

To view the waveform:

```bash
gtkwave dump.vcd
```

## 📊 Expected Output

After reset, the counter starts at:

```text
15
```

Then it decreases on every rising edge of the clock:

```text
15
14
13
12
11
10
9
8
7
6
5
4
3
2
1
0
15
14
...
```

## 🎯 Applications

Down counters are commonly used in:

* Digital clocks
* Timers
* Frequency dividers
* Digital systems
* FPGA projects
* Control circuits

## 👩‍💻 Author

**Rowthu Shiva Naga Poojitha**

## 📜 License

This project is created for educational purposes.
