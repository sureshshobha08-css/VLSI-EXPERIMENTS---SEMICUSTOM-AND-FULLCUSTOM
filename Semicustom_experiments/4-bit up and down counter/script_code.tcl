read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl source.v
elaborate 
read_sdc input_constraints.sdc
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing > timing.rep
report_area > area.rep
report_power > power.rep
write_hdl > netlist.v
write_sdc > output_constraints.sdc
report_gates > gates.v
gui_show
