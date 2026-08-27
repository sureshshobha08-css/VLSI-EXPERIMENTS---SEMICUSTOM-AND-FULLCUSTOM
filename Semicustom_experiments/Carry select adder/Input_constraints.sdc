create_clock -name clk -period 10
set_input_delay 2 -clock clk [get_ports "A"]
set_input_delay 2 -clock clk [get_ports "B"]
set_input_delay 2 -clock clk [get_ports "cin"]
set_output_delay 2 -clock clk [get_ports "Sum"]
set_output_delay 2 -clock clk [get_ports "cout"]


