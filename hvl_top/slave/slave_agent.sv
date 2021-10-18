`ifndef SLAVE_AGENT_INCLUDED_
`define SLAVE_AGENT_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: slave_agent
// <Description_here>
//--------------------------------------------------------------------------------------------
class slave_agent extends uvm_component;
  `uvm_component_utils(slave_agent)

  slave_agent_config s_age_cfg_h;
  
  slave_driver_proxy s_dri_h;
  slave_monitor_proxy s_mon_h;
  slave_sequencer s_seqr_h;

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "slave_agent", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  //extern virtual function void connect_phase(uvm_phase phase);

endclass : slave_agent

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - slave_agent
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function slave_agent::new(string name = "slave_agent",
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
function void slave_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);
  if(!uvm_config_db #(slave_agent_config)::get(this,"","slave_agent_config",s_age_cfg_h))
    `uvm_fatal("CONFIG","cannot get() the s_cfg from the uvm_config_db. have you set it?")
    
    s_mon_h=slave_monitor_proxy::type_id::create("s_mon_h",this);

    if(s_age_cfg_h.is_active==UVM_ACTIVE)
      begin

        s_dri_h=slave_driver_proxy::type_id::create("s_dri_h",this);
        s_seqr_h=slave_sequencer::type_id::create("s_seqr_h",this);
      
      end


endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
/*
function void slave_agent::connect_phase(uvm_phase phase);

  if(s_cfg.is_active==UVM_ACTIVE)
  begin
    s_dri_h.seq_item_port.connect(s_seqr_h.seq_item_export);
  end
endfunction : connect_phase
*/

`endif

