all:
	make clean; make compile; make simulate

compile:
	vlib work; 
	vlog -sv \
	+incdir+../src/globals/ \
	+incdir+../src/hvl_top/master/ \
	+incdir+../src/hdl_top/master_agent_bfm/  \
	+incdir+../src/hvl_top/environment/virtual_sequencer/ \
  +incdir+../src/hvl_top/test/virtual_sequence/ \
	+incdir+../src/hvl_top/environment \
	+incdir+../src/hvl_top/slave \
	+incdir+../src/hvl_top/test \
	+incdir+../src/hdl_top/slave_agent_bfm \
	+incdir+../src/hdl_top/interface \
	../src/globals/globals_pkg.sv \
	../src/hvl_top/master/master_pkg.sv \
	../src/hvl_top/slave/slave_pkg.sv \
	../src/hvl_top/environment/env_pkg.sv \
	../src/hvl_top/test/test_pkg.sv \
	../src/hdl_top/interface/p_if.sv \
	../src/hdl_top/master_agent_bfm/master_driver_bfm.sv \
	../src/hdl_top/master_agent_bfm/master_monitor_bfm.sv \
	../src/hdl_top/master_agent_bfm/master_agent_bfm.sv \
	../src/hdl_top/slave_agent_bfm/slave_driver_bfm.sv \
	../src/hdl_top/slave_agent_bfm/slave_monitor_bfm.sv \
	../src/hdl_top/slave_agent_bfm/slave_agent_bfm.sv \
	../src/hvl_top/hvl_top.sv \
	../src/hdl_top/hdl_top.sv

simulate:
	vsim -novopt work.hvl_top work.hdl_top -c -do "log -r /*; add wave -r /*; run -all;" \
	-wlf waveform.wlf

clean:
	rm -rf work/ transcript vsim.wlf
