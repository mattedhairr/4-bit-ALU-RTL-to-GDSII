# 1. Create clock with a period of 10ns
create_clock -period 10 [get_ports clk]

# 2. Define maximum input arrival time for input ports (A, B, opcode)
set_input_arrival_time -max 2 [get_ports A]
set_input_arrival_time -max 2 [get_ports B]
set_input_arrival_time -max 2 [get_ports opcode]

# 3. Define required arrival time for input ports (A, B, opcode)
set_input_required_time -max 8 [get_ports A]
set_input_required_time -max 8 [get_ports B]
set_input_required_time -max 8 [get_ports opcode]

# 4. Define input transition time for input ports (A, B, opcode)
set_input_transition_time -max 0.5 [get_ports A]
set_input_transition_time -max 0.5 [get_ports B]
set_input_transition_time -max 0.5 [get_ports opcode]

# 5. Define required arrival time for output ports (result, carry_out)
set_output_required_time -max 8 [get_ports result]
set_output_required_time -max 8 [get_ports carry_out]

# 6. Define output transition time for output ports (result, carry_out)
set_output_transition_time -max 0.5 [get_ports result]
set_output_transition_time -max 0.5 [get_ports carry_out]

