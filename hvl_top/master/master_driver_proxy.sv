`ifndef MASTER_DRIVER_PROXY_INCLUDED_
`define MASTER_DRIVER_PROXY_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_driver_proxy
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_driver_proxy extends uvm_component;
  `uvm_component_utils(master_driver_proxy)
 
  master_agent_config m_cfg;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_driver_proxy", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
 // extern virtual function void connect_phase(uvm_phase phase);
 // extern virtual function void end_of_elaboration_phase(uvm_phase phase);
 // extern virtual function void start_of_simulation_phase(uvm_phase phase);
 // extern virtual task run_phase(uvm_phase phase);

endclass : master_driver_proxy

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - master_driver_proxy
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function master_driver_proxy::new(string name = "master_driver_proxy",
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
function void master_driver_proxy::build_phase(uvm_phase phase);
  super.build_phase(phase);
  if(!uvm_config_db #(master_agent_config)::get(this,"","master_agent_config",m_cfg))
    `uvm_fatal("CONFIG","cannot get () m_cfg from uvm_config_db. Have you set it?")
endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
/*
function void master_driver_proxy::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
endfunction : connect_phase

//--------------------------------------------------------------------------------------------
// Function: end_of_elaboration_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_driver_proxy::end_of_elaboration_phase(uvm_phase phase);
  super.end_of_elaboration_phase(phase);
endfunction  : end_of_elaboration_phase

//--------------------------------------------------------------------------------------------
// Function: start_of_simulation_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_driver_proxy::start_of_simulation_phase(uvm_phase phase);
  super.start_of_simulation_phase(phase);
endfunction : start_of_simulation_phase

//--------------------------------------------------------------------------------------------
// Task: run_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
task master_driver_proxy::run_phase(uvm_phase phase);

  phase.raise_objection(this, "master_driver_proxy");

  super.run_phase(phase);

  // Work here
  // ...

  phase.drop_objection(this);

endtask : run_phase
*/
`endif

