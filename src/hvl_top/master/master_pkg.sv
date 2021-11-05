`ifndef MASTER_PKG_INCLUDED_
`define MASTER_PKG_INCLUDED_

//--------------------------------------------------------------------------------------------
// Package: master_pkg
//  Includes all the files related to SPI master
//--------------------------------------------------------------------------------------------
package master_pkg;

  //-------------------------------------------------------
  // Import uvm package
  //-------------------------------------------------------
  `include "uvm_macros.svh"
  import uvm_pkg::*;
 
  // Import spi_globals_pkg 
  import globals_pkg::*;

  //-------------------------------------------------------
  // Include all other files
  //-------------------------------------------------------
  `include "master_tx.sv"
  `include "master_agent_config.sv"
  `include "master_sequencer.sv"
//`include "master_sequence.sv"
  `include "master_driver_proxy.sv"
  `include "master_monitor_proxy.sv"
  `include "master_agent.sv"
  
endpackage : master_pkg

`endif
