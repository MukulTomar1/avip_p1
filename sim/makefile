all:
	make clean; make compile; make simulate

compile:
	vlib work; 
	vlog -sv \
	+incdir+../hvl_top/master/ \
	+incdir+../hdl_top/master_agent_bfm/  \
	+incdir+../hvl_top/env/virtual_sequencer/ \
  +incdir+../hvl_top/test/virtual_sequence/ \
	+incdir+../hvl_top/env \
	+incdir+../hvl_top/slave \
	+incdir+../hvl_top/test \
	+incdir+../hdl_top/slave_agent_bfm \
	+incdir+../hdl_top/spi_interface \
	../hvl_top/test/test_pkg.sv \
	../hvl_top/hvl_top.sv \
	../hdl_top/hdl_top.sv

simulate:
	vsim -novopt work.hvl_top work.hdl_top -c -do "log -r /*; add wave -r /*; run -all;" \
	-wlf waveform.wlf

clean:
	rm -rf work/ transcript vsim.wlf
