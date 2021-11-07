`ifndef MASTER_TX_INCLUDED_
`define MASTER_TX_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_tx
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_tx extends uvm_sequence_item;
  `uvm_object_utils(master_tx)

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_tx");

endclass : master_tx

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - master_tx
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function master_tx::new(string name = "master_tx");

  super.new(name);
endfunction : new

`endif

