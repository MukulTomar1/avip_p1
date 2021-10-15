`ifndef MASTER_VIRTUAL_SEQUENCER_INCLUDED_
`define MASTER_VIRTUAL_SEQUENCER_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_virtual_sequencer
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_virtual_sequencer extends uvm_component;
  `uvm_component_utils(master_virtual_sequencer)

  master_sequencer m_seqr_h;
  env_config e_cfg;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_virtual_sequencer", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);

endclass : master_virtual_sequencer

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - master_virtual_sequencer
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function master_virtual_sequencer::new(string name = "master_virtual_sequencer",
                                 uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Function: build_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_virtual_sequencer::build_phase(uvm_phase phase);
  super.build_phase(phase);
  if(!uvm_config_db #(env_config)::get(this,"","env_config",e_cfg))
    `uvm_fatal("CONFIG","cannot get() the e_cfg from the uvm_config_db . Have you set it?")

    m_seqr_h=master_sequencer::type_id::create("m_seqr_h",this);

endfunction : build_phase


`endif

