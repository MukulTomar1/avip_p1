`ifndef ENV_INCLUDED_
`define ENV_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: env
// <Description_here>
//--------------------------------------------------------------------------------------------
class env extends uvm_env;
  `uvm_component_utils(env)

  master_agent m_age_h;
  master_virtual_sequencer m_v_seqr_h;

  slave_agent s_age_h[];
  slave_virtual_sequencer s_v_seqr_h;

  env_config e_cfg;
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

  if(!uvm_config_db #(env_config)::get(this,"","env_config",e_cfg))
    `uvm_fatal("CONFIG","cannot get() the e_cfg from the uvm_config_db . Have you set it?")

    if(e_cfg.has_master_agent)
    
    begin
    
      uvm_config_db #(master_agent_config)::set(this,"m_age_h*","master_agent_config",
      e_cfg.m_age_cfg_h);
      
      m_age_h=master_agent::type_id::create("m_age_h",this);
    
    end

    if(e_cfg.has_slave_agent)
     begin    
    s_age_h=new[e_cfg.no_of_duts];    
    
      foreach(s_age_h[i])
      begin    
    
      uvm_config_db #(slave_agent_config)::set(this,$sformatf("s_age_h[%0d]*",i),"slave_agent_config",
      e_cfg.s_age_cfg_h[i]);
      s_age_h[i]=slave_agent::type_id::create($sformatf("s_age_h[%0d]",i),this);
    end
  end
   
    if(e_cfg.has_master_virtual_sequencer)

     m_v_seqr_h=master_virtual_sequencer::type_id::create("m_v_seqr_h",this);
   
    if(e_cfg.has_slave_virtual_sequencer)

     s_v_seqr_h=slave_virtual_sequencer::type_id::create("s_v_seqr_h",this);

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
  if(e_cfg.has_master_virtual_sequencer)
  begin
    if(e_cfg.has_master_agent)
    begin
      m_v_seqr_h.m_seqr_h=m_age_h.m_seqr_h;
    end
    if(e_cfg.has_slave_agent)
    begin
      foreach(s_age_h[i])
      s_v_seqr_h.s_seqr_h[i]=s_age_h[i].s_seqr_h;
    end
  end
endfunction : connect_phase


`endif

