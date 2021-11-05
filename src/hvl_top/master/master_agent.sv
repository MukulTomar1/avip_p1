`ifndef MASTER_AGENT_INCLUDED_
`define MASTER_AGENT_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_agent
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_agent extends uvm_component;
  `uvm_component_utils(master_agent)

  master_agent_config master_agent_cfg_h;


  master_monitor_proxy master_monitor_h;
  master_sequencer master_seqr_h;
  master_driver_proxy master_driver_h;

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_agent", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  //extern virtual function void connect_phase(uvm_phase phase);

endclass : master_agent

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - master_agent
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function master_agent::new(string name = "master_agent",
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
function void master_agent::build_phase(uvm_phase phase);
  
  super.build_phase(phase);
  if(!uvm_config_db #(master_agent_config)::get(this,"","master_agent_config",master_agent_cfg_h))
    `uvm_fatal("config","cannot get the config m_cfg from uvm_config_db. Have u set it ?")
    
    master_monitor_h=master_monitor_proxy::type_id::create("master_monitor_h",this);
  
  if(master_agent_cfg_h.is_active==UVM_ACTIVE)
  
  begin
    master_driver_h=master_driver_proxy::type_id::create("master_driver_h",this);
    master_seqr_h=master_sequencer::type_id::create("master_seqr_h",this);
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
function void master_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  if(master_agent_cfg_h.is_active==UVM_ACTIVE)
    begin
      master_driver_h.seq_item_port.connect(master_seqr_h.seq_item_export);
    end

endfunction : connect_phase
*/

`endif

