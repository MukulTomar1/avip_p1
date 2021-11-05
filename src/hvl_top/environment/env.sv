`ifndef ENV_INCLUDED_
`define ENV_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: env
// <Description_here>
//--------------------------------------------------------------------------------------------
class env extends uvm_env;
  `uvm_component_utils(env)

  master_agent master_agent_h;

  slave_agent slave_agent_h[];
  virtual_sequencer virtual_seqr_h;

  env_config env_cfg_h;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "env", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);

endclass : env

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - env
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function env::new(string name = "env",
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
function void env::build_phase(uvm_phase phase);
  super.build_phase(phase);

  if(!uvm_config_db #(env_config)::get(this,"","env_config",env_cfg_h)) begin
    `uvm_fatal("CONFIG","cannot get() the env_cfg_h from the uvm_config_db . Have you set it?")
  end
      
     master_agent_h=master_agent::type_id::create("master_agent_h",this);
    
     slave_agent_h=new[env_cfg_h.no_of_slaves];    
      foreach(slave_agent_h[i])
      begin    
      slave_agent_h[i]=slave_agent::type_id::create($sformatf("slave_agent_h[%0d]",i),this);
    end
   
    if(env_cfg_h.has_virtual_sequencer)

     virtual_seqr_h=virtual_sequencer::type_id::create("virtual_seqr_h",this);

endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void env::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  if(env_cfg_h.has_virtual_sequencer)
  begin
      virtual_seqr_h.master_seqr_h=master_agent_h.master_seqr_h;
    foreach(slave_agent_h[i])begin
      virtual_seqr_h.slave_seqr_h=slave_agent_h[i].slave_seqr_h;

    end
  end
endfunction : connect_phase


`endif

