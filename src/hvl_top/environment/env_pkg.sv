`ifndef ENV_PKG_INCLUDED_
`define ENV_PKG_INCLUDED_

//--------------------------------------------------------------------------------------------
// Package: env_pkg
// Includes all the files related to SPI env
//--------------------------------------------------------------------------------------------
package env_pkg;
  
  // Import uvm package
  `include "uvm_macros.svh"
  import uvm_pkg::*;

  // Importing the required packages
  import globals_pkg::*;
  import master_pkg::*;
  import slave_pkg::*;

  // Include all other files
  `include "env_config.sv"
  `include "virtual_sequencer.sv"

  // SCOREBOARD
  `include "scoreboard.sv"

  // Coverage 

  `include "env.sv"

endpackage : env_pkg

`endif
