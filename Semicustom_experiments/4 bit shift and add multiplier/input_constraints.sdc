create_clock -name clk -period 2 -waveform {0 1} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]
set_input_delay -max 1.0 [get_ports "rst"] -clock [get_clock "clk"]
set_input_delay -max 1.0 [get_ports "a"] -clock [get_clock "clk"]
set_input_delay -max 1.0 [get_ports "b"] -clock [get_clock "clk"]
set_output_delay -max 1.0 [get_ports "c"] -clock [get_clock "clk"]

