`ifndef TEST_PKG_INCLUDED_
`define TEST_PKG_INCLUDED_

//-----------------------------------------------------------------------------------------
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
  // Importing the required packages
  //-------------------------------------------------------
  import globals_pkg::*;
  import master_pkg::*;
  import slave_pkg::*;
  import env_pkg::*;
  //import spi_master_seq_pkg::*;
  //import spi_slave_seq_pkg::*;
  //import spi_virtual_seq_pkg::*;

 //including base_test for testing
 `include "base_test.sv"

endpackage : test_pkg

`endif
