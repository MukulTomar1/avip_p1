`ifndef ENV_CONFIG_INCLUDED_
`define ENV_CONFIG_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: env_config
// <Description_here>
//--------------------------------------------------------------------------------------------
class env_config extends uvm_object;
  `uvm_object_utils(env_config)

  bit has_master_agent = 1;
  bit has_slave_agent = 1;
  bit has_master_virtual_sequencer = 1;
  bit has_slave_virtual_sequencer = 1;

  master_agent_config m_age_cfg_h;
  slave_agent_config s_age_cfg_h;


  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "env_config");
endclass : env_config

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - env_config
//--------------------------------------------------------------------------------------------
function env_config::new(string name = "env_config");
  super.new(name);
endfunction : new

`endif

