create_clock -name clk -period 10
set_input_delay 2 -clock clk [get_ports "a"]
set_input_delay 2 -clock clk [get_ports "b"]
set_input_delay 2 -clock clk [get_ports "c0"]
set_output_delay 2 -clock clk [get_ports "s"]
set_output_delay 2 -clock clk [get_ports "c4"]

