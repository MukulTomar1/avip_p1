`ifndef MASTER_SEQUENCER_INCLUDED_
`define MASTER_SEQUENCER_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_sequencer
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_sequencer extends uvm_component;
  `uvm_component_utils(master_sequencer)

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_sequencer", uvm_component parent = null);

endclass : master_sequencer

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - master_sequencer
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function master_sequencer::new(string name = "master_sequencer",
                                 uvm_component parent = null);
  super.new(name, parent);
endfunction : new

`endif

