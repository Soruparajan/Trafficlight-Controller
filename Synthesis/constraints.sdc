create_clock -name clk -period 1 -waveform {0 0.5} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]
set_input_delay -max 1.0 -clock clk [all_inputs]
set_output_delay -max 1.0 -clock clk [all_outputs]


