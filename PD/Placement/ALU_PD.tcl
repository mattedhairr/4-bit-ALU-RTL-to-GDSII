source "helpers.tcl"
source "flow_helpers.tcl"
source "sky130hd.vars"

# Design-specific variables
set synth_verilog "ALU_synth.v"
set design "ALU"
set top_module "ALU"  ;# Update this with your top module name
set sdc_file "constraints.sdc"

# Die and Core Area (Proportionally Adjusted for Density Control)
set die_area {0 0 65 65}       ;# Die area adjusted to ~4202.9 µm²
set core_area {2.3 2.72 59.96 59.89}  ;# Core area adjusted to ~3315.1 µm²

# Load and run the flow
source -echo "Flow_Placement.tcl"
