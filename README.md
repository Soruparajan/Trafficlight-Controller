# 🚦 Traffic Light Controller (Verilog)

A finite state machine (FSM) based traffic light controller implemented in Verilog HDL.  
The controller manages traffic signals for a **North–South (NS)** and **West–East (WE)** intersection with proper timing for **Green, Yellow, and Red** states.

---

## 📌 Features
- FSM-based design with **6 well-defined states**
- Separate LED outputs for **NS** and **WE** directions
- Configurable timing using an internal counter
- Synchronous design with **active-high reset**
- Includes **testbench, SDC constraints, and TCL script**

---

## 🧠 State Encoding

| State | NS Light | WE Light | Description |
|------|---------|----------|-------------|
| S0 | Green | Red | NS traffic flows |
| S1 | Yellow | Red | NS slowing down |
| S2 | Red | Red | All stop (safety) |
| S3 | Red | Green | WE traffic flows |
| S4 | Red | Yellow | WE slowing down |
| S5 | Red | Red | All stop (safety) |

---

## ⏱ Timing Details
- Green: 14 clock cycles  
- Yellow: 2 clock cycles  
- All-Red: 2 clock cycles  

(Timing controlled using an internal counter)

---

## 📂 Project Structure
traffic-light-controller-verilog/
├── rtl/ # Verilog RTL design
├── tb/ # Testbench
├── constraints/ # SDC timing constraints
├── scripts/ # TCL scripts for simulation/synthesis
├── docs/ # Waveforms / diagrams


---

## ▶️ How to Simulate

Using **ModelSim / Questa / Xcelium**:

```tcl
vlog rtl/traffic_light.v tb/traffic_light_tb.v
vsim traffic_light_tb
run -all
