RTL to GDS Design Flow of 4-bit ALU
This repository contains the implementation of a 4-bit Arithmetic Logic Unit (ALU) using the RTL to GDS design flow. The project was completed as part of my BTech minor project, utilizing open-source tools to demonstrate a cost-effective and accessible approach to digital circuit design.

Overview
The project involves designing a 4-bit ALU that performs basic arithmetic and logical operations. The design flow starts from Register-Transfer Level (RTL) description and proceeds through synthesis, placement, and routing to generate a final GDSII file. This repository includes all necessary files and scripts to replicate the design flow.

Tools Used
Iverilog: For RTL simulation and verification.

GTKWave: For visualizing waveforms and debugging.

Yosys: For synthesizing the RTL design into a netlist.

OpenSTA: For static timing analysis to ensure the design meets timing requirements.

OpenRoad: For placement and routing to generate the final GDSII file.

Cell Library
SkyWater 130nm HD Cell Library: Used for synthesizing and implementing the design.
