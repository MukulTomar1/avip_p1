`ifndef MASTER_SEQUENCE_INCLUDED_
`define MASTER_SEQUENCE_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_sequence
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_sequence extends uvm_component;
  `uvm_component_utils(master_sequence)

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_sequence", uvm_component parent = null);

endclass : master_sequence

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - master_sequence
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function master_sequence::new(string name = "master_sequence",
                                 uvm_component parent = null);
  super.new(name, parent);
endfunction : new


`endif

