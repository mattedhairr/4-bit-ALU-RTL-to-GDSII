# 4-BIT ALU RTL to GDS

## Table of Contents

1. [Abstract](#abstract)
2. [Introduction](#introduction)
3. [Objectives](#objectives)
4. [System Design and Methodology](#system-design-and-methodology)
5. [Implementation](#implementation)
   - [RTL Design and Simulation](#rtl-design-and-simulation)
   - [Logic Synthesis](#logic-synthesis)
   - [Static Timing Analysis (STA)](#static-timing-analysis-sta)
   - [Physical Design](#physical-design)
     - [Floorplan](#floorplan)
     - [Power Distribution Network (PDN)](#power-distribution-network-pdn)
     - [Placement](#placement)
     - [Clock Tree Synthesis (CTS)](#clock-tree-synthesis-cts)
     - [Routing](#routing)
6. [Analysis and Conclusion](#analysis-and-conclusion)
7. [Future Work](#future-work)
8. [References](#references)

## Abstract
This project presents the design and implementation of a 4-bit Arithmetic Logic Unit (ALU) following a complete RTL to GDS (Register Transfer Level to GDSII) design flow. The ALU, a key component in digital systems, performs various arithmetic and logical operations.

The design process includes:
- RTL design in Verilog
- Synthesis and optimization using Yosys
- Functional verification with Icarus Verilog and GTKWave
- Static timing analysis with OpenSTA
- Physical design using OpenROAD
- Final layout generation in GDSII format

The SkyWater 130nm HD cell library ensures compatibility with modern fabrication processes.

## Introduction
The Arithmetic Logic Unit (ALU) is a fundamental component of digital processors. This project implements a 4-bit ALU capable of performing arithmetic (addition, subtraction, multiplication, division) and logical (AND, OR, NOT) operations.

The structured RTL-to-GDS flow consists of:
1. Verilog RTL coding and testbench creation
2. Simulation and verification using GTKWave
3. Logic synthesis with Yosys
4. Static Timing Analysis (STA) using OpenSTA
5. Physical design with OpenROAD
6. GDSII layout generation

This methodology supports scalability for extending the design to 8-bit or 16-bit ALUs.

## Objectives
- Design and optimize a 4-bit ALU
- Perform logic synthesis for gate-level representation
- Conduct STA to ensure timing constraints are met
- Implement physical design and generate the final layout
- Utilize open-source EDA tools and the SkyWater 130nm HD cell library

## System Design and Methodology
The ALU is designed modularly. The RTL is written in Verilog, verified through simulation, synthesized into a gate-level netlist, and physically implemented.

## Implementation

### RTL Design and Simulation
#### **Files Used**
##### **Input Files:**
- `ALU_TB.v` - Testbench for verifying ALU functionality.
- `ALU.v` - RTL description of the 4-bit ALU.

##### **Output Files:**
- `ALU.vcd` - Value Change Dump file for waveform analysis.
- `ALU.vvp` - Compiled simulation output.

#### **Tools Used**
- **iverilog** - For Verilog simulation.
- **gtkwave** - For waveform visualization.

#### **Simulation and Verification Commands**
To compile the Verilog code:
```sh
iverilog -o ALU.vvp ALU_TB.v ALU.v
```
To run the simulation:
```sh
vvp ALU.vvp
```
To view waveforms in GTKWave:
```sh
gtkwave ALU.vcd
```

### Logic Synthesis
#### **Files Used**
##### **Input Files:**
- `ALU.v` - RTL description of the 4-bit ALU.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd__tt_025C_1v80.lib` - Standard cell library for synthesis.
- `synthesis.ys` - Yosys script for synthesis.

##### **Output Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `ALU.blif` - Berkeley Logic Interchange Format representation.
- `ALU.json` - JSON format of the synthesized design.
- `Dot View.png` - Graphical representation of the synthesized logic circuit.
- `Show_JSON.svg` - Visualized representation of the synthesized JSON.

#### **Tool Used**
- **Yosys** - Open-source synthesis tool.

#### **Logic Synthesis Commands**
To run logic synthesis using Yosys:
```sh
yosys synthesis.ys
```
Alternatively, if running manually:
```sh
yosys
read_verilog ALU.v
read_liberty -lib sky130_fd_sc_hd__tt_025C_1v80.lib
synth -top ALU
write_verilog ALU_synth.v
write_blif ALU.blif
write_json ALU.json
```

### Static Timing Analysis (STA)
#### **Files Used**
##### **Input Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd__tt_025C_1v80.lib` - Standard cell library for timing analysis.
- `sta.ys` - OpenSTA script for running static timing analysis.

##### **Output Files:**
- `ALU.sdf` - Standard Delay Format file with timing information.

#### **Tool Used**
- **OpenSTA** - Static timing analysis tool.

#### **Static Timing Analysis Commands**
To run STA using OpenSTA:
```sh
sta sta.ys
```
Alternatively, if running manually:
```sh
sta
read_liberty sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog ALU_synth.v
read_sdc constraints.sdc
report_checks -path_delay max -format full
report_checks -path_delay min -format full
write_sdf ALU.sdf
```

### Floorplan
#### **Files Used**
##### **Input Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd_merged.lef` - LEF file containing standard cell layouts.
- `sky130_fd_sc_hd.tlef` - Technology LEF file defining layer rules.
- `sky130hd.tracks` - Track definition file for routing.
- `sky130hd.vars` - Variables configuration file for OpenROAD.
- `ALU_PD.tcl` - TCL script to execute floorplanning in OpenROAD.
- `Flow_Floorplan.tcl` - Script handling automated floorplanning flow.
- `flow_helpers.tcl` - Helper functions for the flow.
- `helpers.tcl` - Additional helper functions for automation.

##### **Output Files:**
- `alu_post_tapcell.def` - Design Exchange Format (DEF) file after tapcell insertion.
- `Floorplan.log` - Log file containing details of the floorplanning process.

#### **Tool Used**
- **OpenROAD** - Open-source physical design tool.

#### **Floorplanning Command**
To execute floorplanning using OpenROAD:
```sh
openroad -gui -log ALU_Floorplan.log ALU_PD.tcl
```

### Power Distribution Network (PDN)
#### **Files Used**
##### **Input Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd_merged.lef` - LEF file containing standard cell layouts.
- `sky130_fd_sc_hd.tlef` - Technology LEF file defining layer rules.
- `sky130hd.tracks` - Track definition file for routing.
- `sky130hd.vars` - Variables configuration file for OpenROAD.
- `sky130hd.pdn.tcl` - TCL script defining the power distribution network.
- `ALU_PD.tcl` - TCL script for executing PDN generation in OpenROAD.
- `Flow_PDN.tcl` - Script handling automated PDN generation.
- `flow_helpers.tcl` - Helper functions for the flow.
- `helpers.tcl` - Additional helper functions for automation.

##### **Output Files:**
- `alu_post_pdn.def` - DEF file after power distribution network insertion.
- `ALU_PDN.log` - Log file containing details of the PDN generation process.

#### **Tool Used**
- **OpenROAD** - Open-source physical design tool.

#### **PDN Generation Command**
To execute PDN generation using OpenROAD:
```sh
openroad -gui -log ALU_PDN.log ALU_PD.tcl
```

### Placement
#### **Files Used**
##### **Input Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd_merged.lef` - LEF file containing standard cell layouts.
- `sky130_fd_sc_hd.tlef` - Technology LEF file defining layer rules.
- `sky130hd.tracks` - Track definition file for routing.
- `sky130hd.vars` - Variables configuration file for OpenROAD.
- `sky130hd.pdn.tcl` - TCL script defining the power distribution network.
- `ALU_PD.tcl` - TCL script for executing placement in OpenROAD.
- `flow_helpers.tcl` - Helper functions for the flow.
- `helpers.tcl` - Additional helper functions for automation.

##### **Output Files:**
- `ALU_sky130hd_global_place-tcl.db` - Database file generated after placement.
- `ALU_Placement.log` - Log file containing details of the placement process.

#### **Tool Used**
- **OpenROAD** - Open-source physical design tool.

#### **Placement Command**
To execute placement using OpenROAD:
```sh
openroad -gui -log ALU_Placement.log ALU_PD.tcl
```

### Clock Tree Synthesis (CTS)
#### **Files Used**
##### **Input Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd_merged.lef` - LEF file containing standard cell layouts.
- `sky130_fd_sc_hd.tlef` - Technology LEF file defining layer rules.
- `sky130hd.tracks` - Track definition file for routing.
- `sky130hd.vars` - Variables configuration file for OpenROAD.
- `sky130hd.pdn.tcl` - TCL script defining the power distribution network.
- `sky130hd.rc` - Resistance-capacitance information for clock tree synthesis.
- `ALU_PD.tcl` - TCL script for executing CTS in OpenROAD.
- `Flow_CTS.tcl` - TCL script for automated CTS flow.
- `flow_helpers.tcl` - Helper functions for the flow.
- `helpers.tcl` - Additional helper functions for automation.

##### **Output Files:**
- `ALU_sky130hd_cts-tcl.db` - Database file generated after CTS.
- `ALU_sky130hd_dpl-tcl.db` - Database file after detailed placement.
- `ALU_sky130hd_global_place-tcl.db` - Database file after global placement.
- `ALU_sky130hd-tcl.v` - Verilog file representing the CTS result.
- `openroad_cts.db` - Final database file generated after CTS.
- `ALU_CTS.log` - Log file containing details of the CTS process.

#### **Tool Used**
- **OpenROAD** - Open-source physical design tool.

#### **CTS Execution Command**
To execute CTS using OpenROAD:
```sh
openroad -gui -log ALU_CTS.log ALU_PD.tcl
```

### Routing
#### **Files Used**
##### **Input Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd_merged.lef` - LEF file containing standard cell layouts.
- `sky130_fd_sc_hd.tlef` - Technology LEF file defining layer rules.
- `sky130hd.tracks` - Track definition file for routing.
- `sky130hd.vars` - Variables configuration file for OpenROAD.
- `sky130hd.pdn.tcl` - TCL script defining the power distribution network.
- `sky130hd.rc` - Resistance-capacitance information for routing.
- `sky130hd.rcx_rules` - Extraction rules file for routing.
- `ALU_PD.tcl` - TCL script for executing routing in OpenROAD.
- `Flow_Routing.tcl` - TCL script for automated routing flow.
- `flow_helpers.tcl` - Helper functions for the flow.
- `helpers.tcl` - Additional helper functions for automation.

##### **Output Files:**
- `ALU_sky130hd_cts-tcl.db` - Database file generated after CTS.
- `ALU_sky130hd_dpl-tcl.db` - Database file after detailed placement.
- `ALU_sky130hd_fill-tcl.db` - Database file after filler cell insertion.
- `ALU_sky130hd_global_place-tcl.db` - Database file after global placement.
- `ALU_sky130hd_output_guide-tcl.mod` - Modified routing guide.
- `ALU_sky130hd_repaired_route-tcl.odb` - Routed design database.
- `ALU_sky130hd_route_drc-tcl.rpt` - Design rule check (DRC) report after routing.
- `ALU_sky130hd_route-tcl.db` - Database file after routing.
- `ALU_sky130hd_route-tcl.def` - DEF file after routing completion.
- `ALU_sky130hd-tcl.route_guide` - Routing guide file.
- `ALU_sky130hd-tcl.spef` - Standard Parasitic Exchange Format file for post-route timing analysis.
- `ALU_sky130hd-tcl.v` - Verilog file representing the routed design.
- `ALU_Routing.log` - Log file containing details of the routing process.

#### **Tool Used**
- **OpenROAD** - Open-source physical design tool.

#### **Routing Execution Command**
To execute routing using OpenROAD:
```sh
openroad -gui -log ALU_Routing.log ALU_PD.tcl
```

### Final 
#### **Files Used**
##### **Input Files:**
- `ALU_synth.v` - Gate-level netlist after synthesis.
- `constraints.sdc` - SDC file specifying timing constraints.
- `sky130_fd_sc_hd_merged.lef` - LEF file containing standard cell layouts.
- `sky130_fd_sc_hd.tlef` - Technology LEF file defining layer rules.
- `sky130hd.tracks` - Track definition file for routing.
- `sky130hd.vars` - Variables configuration file for OpenROAD.
- `sky130hd.pdn.tcl` - TCL script defining the power distribution network.
- `sky130hd.rc` - Resistance-capacitance information for routing.
- `sky130hd.rcx_rules` - Extraction rules file for final design verification.
- `ALU_PD.tcl` - TCL script for executing the final step in OpenROAD.
- `Flow_PD.tcl` - TCL script for automated final design flow.
- `Flow_Routing.tcl` - TCL script for automated routing.
- `flow_helpers.tcl` - Helper functions for the flow.
- `helpers.tcl` - Additional helper functions for automation.

##### **Output Files:**
- `ALU_sky130hd_cts-tcl.db` - Database file generated after CTS.
- `ALU_sky130hd_dpl-tcl.db` - Database file after detailed placement.
- `ALU_sky130hd_fill-tcl.db` - Database file after filler cell insertion.
- `ALU_sky130hd_global_place-tcl.db` - Database file after global placement.
- `ALU_sky130hd_output_guide-tcl.mod` - Modified routing guide.
- `ALU_sky130hd_repaired_route-tcl.odb` - Routed design database.
- `ALU_sky130hd_route_drc-tcl.rpt` - Design rule check (DRC) report after final routing.
- `ALU_sky130hd_route-tcl.db` - Database file after final routing.
- `ALU_sky130hd_route-tcl.def` - DEF file after routing completion.
- `ALU_sky130hd-tcl.route_guide` - Routing guide file.
- `ALU_sky130hd-tcl.spef` - Standard Parasitic Exchange Format file for post-route timing analysis.
- `ALU_sky130hd-tcl.v` - Verilog file representing the final design.
- `ALU_Final.log` - Log file containing details of the final physical design step.

#### **Tool Used**
- **OpenROAD** - Open-source physical design tool.

#### **Final Execution Command**
To execute the final step using OpenROAD:
```sh
openroad -gui -log ALU_Final.log ALU_PD.tcl
```

## Analysis and Conclusion
### **Analysis**
1. **Tool and Environment Setup**
   - OpenROAD v2.0 used with GPU acceleration, GUI, and Python scripting.
   - Sky130_fd_sc_hd library with 441 cells and 13 layers.
2. **Floorplanning**
   - Die area: 65,000 x 65,000 units, core area: 59,800 x 59,840 units.
   - 21 rows of standard cells, 125 sites per row, 63.009% utilization.
3. **Placement**
   - Nesterov optimization achieved HPWL of 1,649,837 units.
   - Legalization resulted in a total displacement of 446.6 units.
4. **Clock Tree Synthesis (CTS)**
   - Clock tree built using sky130_fd_sc_hd__clkbuf_4 buffers.
   - Clock net `clk` has 5 sinks, achieving a maximum depth of 2 buffers.
5. **Routing**
   - Design routed using 5 metal layers, total wirelength of 5,230 µm.
   - No antenna violations, all nets successfully routed.
6. **Timing Analysis**
   - Setup Slack: 5.925 ns, Hold Slack: 0.967 ns.
   - Total Negative Slack (TNS): 0.000 ns.
7. **Power Analysis**
   - Total Power: 8.69e-05 W (Combinational: 40.9%, Clock: 32.9%, Sequential: 26.2%).
8. **Antenna Checks**
   - No antenna violations detected.
9. **Parasitic Extraction**
   - 138 nets, 687 resistance segments, 687 capacitances extracted.
10. **Final Checks**
   - No DRC or LVS violations, successful PDN insertion.

### **Conclusions**
- The 4-bit ALU implementation was fully successful with no timing violations.
- Achieved positive slack for setup and hold, ensuring reliable operation.
- Efficient power consumption with no leakage issues.
- Successful routing with no congestion or violations.
- 63.009% utilization indicates efficient use of available area.

## Future Work
1. **Scalability to Higher Bit-Widths**
   - Extend design to 8-bit or 16-bit ALUs.
2. **Advanced Operations**
   - Add bitwise shifts, rotates, or floating-point arithmetic.
3. **Power Optimization**
   - Implement clock gating, power gating, or DVFS.
4. **Technology Node Migration**
   - Adapt design to advanced nodes (e.g., 90nm, 65nm).
5. **Integration with a Microprocessor**
   - Embed ALU into a complete processor design.
6. **Automation and Scripting**
   - Develop scripts to further automate the RTL-to-GDS flow.
7. **Exploration of Other Open-Source Tools**
   - Use tools like Magic for layout editing and Netgen for LVS checks.

## References
1. **GitHub Repositories:**
   - The OpenROAD Project: <https://github.com/The-OpenROAD-Project>
   - SkyWater PDK: <https://github.com/google/skywater-pdk>
2. **Online Courses:**
   - NPTEL Course: [VLSI Design Flow: RTL to GDS](https://nptel.ac.in/)
3. **Tools Used:**
   - [Icarus Verilog](http://iverilog.icarus.com/)
   - [GTKWave](http://gtkwave.sourceforge.net/)
   - [Yosys](http://www.clifford.at/yosys/)
   - [OpenSTA](https://github.com/The-OpenROAD-Project/OpenSTA)
   - [OpenROAD](https://openroad.readthedocs.io/)



