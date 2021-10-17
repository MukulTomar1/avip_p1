//--------------------------------------------------------------------------------------------
// Package: Test
// Description:
// Includes all the files written to run the simulation
//--------------------------------------------------------------------------------------------
package test_pkg;

  //-------------------------------------------------------
  // Import uvm package
  //-------------------------------------------------------
  `include "uvm_macros.svh"
  import uvm_pkg::*;
  
  //-------------------------------------------------------
  // Include master files
  //-------------------------------------------------------
  `include "../hvl_top/master/master_agent_config.sv"
  `include "../hvl_top/slave/slave_agent_config.sv"
  `include "../hvl_top/environment/env_config.sv"
  `include "master_xtn.sv"  
  `include "master_sequencer.sv"
  `include "master_driver_proxy.sv"
  `include "master_monitor_proxy.sv"
  `include "master_agent.sv"
  
 
   
  //-------------------------------------------------------
  // Include all other files
  //-------------------------------------------------------
  //`include "slave_tx.sv"
  `include "slave_sequence.sv"
  `include "slave_sequencer.sv"
  `include "slave_driver_proxy.sv"
  `include "slave_monitor_proxy.sv"
  `include "slave_agent.sv"
  
  `include "../hvl_top/environment/virtual_sequencer/master_virtual_sequencer.sv"
  `include "../hvl_top/environment/virtual_sequencer/slave_virtual_sequencer.sv"
  //`include "slave_virtual_sequence.sv"
  //`include "master_virtual_sequence.sv"
  `include "../hvl_top/environment/env.sv"

  `include "base_test.sv"

  // `include "env_config.sv"

endpackage :test_pkg
