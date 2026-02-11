read_libs /Your path/slow.lib
read_hdl traffilight.v
elaborate
read_sdc input_constraints.sdc

syn_generic
syn_map
syn_opt

write_hdl > traffic_netlist_without.v
write_sdc  > output_constraints.sdc

gui_show

report timing > traffic_timing.rpt
report power > traffic_power.rpt
report area > traffic_cell.rpt
report gates > traffic_gates.rpt
   
