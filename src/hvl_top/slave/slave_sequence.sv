`ifndef SLAVE_SEQUENCE_INCLUDED_
`define SLAVE_SEQUENCE_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: slave_sequence
// <Description_here>
//--------------------------------------------------------------------------------------------
class slave_sequence extends uvm_object;
  `uvm_object_utils(slave_sequence)

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "slave_sequence");
endclass : slave_sequence

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - slave_sequence
//--------------------------------------------------------------------------------------------
function slave_sequence::new(string name = "slave_sequence");
  super.new(name);
endfunction : new

`endif

