`ifndef SLAVE_MONITOR_PROXY_INCLUDED_
`define SLAVE_MONITOR_PROXY_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: slave_monitor_proxy
// <Description_here>
//--------------------------------------------------------------------------------------------
class slave_monitor_proxy extends uvm_component;
  `uvm_component_utils(slave_monitor_proxy)

  slave_agent_config s_cfg;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "slave_monitor_proxy", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  //extern virtual function void connect_phase(uvm_phase phase);
  //extern virtual function void end_of_elaboration_phase(uvm_phase phase);
  //extern virtual function void start_of_simulation_phase(uvm_phase phase);
  //extern virtual task run_phase(uvm_phase phase);

endclass : slave_monitor_proxy

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - slave_monitor_proxy
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function slave_monitor_proxy::new(string name = "slave_monitor_proxy",
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
function void slave_monitor_proxy::build_phase(uvm_phase phase);
  super.build_phase(phase);
  if(!uvm_config_db #(slave_agent_config)::get(this,"","slave_agent_config",s_cfg))
    `uvm_fatal("CONFIG","cannot get() the m_cfg from uvm_config_db. Have you set it?")
endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
/*
function void slave_monitor_proxy::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
endfunction : connect_phase

//--------------------------------------------------------------------------------------------
// Function: end_of_elaboration_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void slave_monitor_proxy::end_of_elaboration_phase(uvm_phase phase);
  super.end_of_elaboration_phase(phase);
endfunction  : end_of_elaboration_phase

//--------------------------------------------------------------------------------------------
// Function: start_of_simulation_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void slave_monitor_proxy::start_of_simulation_phase(uvm_phase phase);
  super.start_of_simulation_phase(phase);
endfunction : start_of_simulation_phase

//--------------------------------------------------------------------------------------------
// Task: run_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
task slave_monitor_proxy::run_phase(uvm_phase phase);

  phase.raise_objection(this, "slave_monitor_proxy");

  super.run_phase(phase);

  // Work here
  // ...

  phase.drop_objection(this);

endtask : run_phase
*/
`endif

