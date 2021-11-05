`ifndef SLAVE_SEQUENCER_INCLUDED_
`define SLAVE_SEQUENCER_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: slave_sequencer
// <Description_here>
//--------------------------------------------------------------------------------------------
class slave_sequencer extends uvm_component;
  `uvm_component_utils(slave_sequencer)

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "slave_sequencer", uvm_component parent = null);

endclass : slave_sequencer

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - slave_sequencer
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function slave_sequencer::new(string name = "slave_sequencer",
                                 uvm_component parent = null);
  super.new(name, parent);
endfunction : new

`endif

