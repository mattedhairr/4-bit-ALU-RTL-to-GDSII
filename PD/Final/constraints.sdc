# Create the clock for the design
# Assuming 'clk' is the clock port with a period of 10ns
create_clock -period 10 [get_ports clk]

# Set input delay for the inputs (A, B, opcode)
# Assuming a delay of 2ns for each input
set_input_delay -max 2 -clock [get_clocks clk] [get_ports {A B opcode}]
set_input_delay -min 1 -clock [get_clocks clk] [get_ports {A B opcode}]

# Set output delay for the outputs (result, carry_out)
# Assuming a delay of 2ns for each output
set_output_delay -max 2 -clock [get_clocks clk] [get_ports {result carry_out}]
set_output_delay -min 1 -clock [get_clocks clk] [get_ports {result carry_out}]
