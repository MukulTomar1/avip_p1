`ifndef BASE_TEST_INCLUDED_
`define BASE_TEST_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: base_test
// <Description_here>
//--------------------------------------------------------------------------------------------
class base_test extends uvm_test;
  `uvm_component_utils(base_test)

  env env_h;
  env_config e_cfg;
  master_agent_config m_age_cfg_h;
  slave_agent_config s_age_cfg_h[];

  int has_master_agent = 1;
  int has_slave_agent = 1;
  int no_of_duts = 4;
  int i;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "base_test", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  // extern function void config_p();
  extern virtual function void end_of_elaboration_phase(uvm_phase phase);

endclass : base_test

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - base_test
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function base_test::new(string name = "base_test",
                                 uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// function :config_p
//--------------------------------------------------------------------------------------------
//
//function void base_test::config_p();
//
//  if(has_master_agent)
//  begin
//  /*
//    if(!uvm_config_db #(virtual spi_if)::get(this,"","vif",m_age_cfg_h.vif))
//    `uvm_fatal("VIF_CONFIG","cannot get()interface vif from the uvm_config_db. Have you set it?")
//*/
//    m_age_cfg_h.is_active = UVM_ACTIVE;
//    e_cfg.m_age_cfg_h = m_age_cfg_h;
//
//  end
//  if(has_slave_agent)//  begin
//  
//  /*
//    if(!uvm_config_db #(virtual spi_if)::get(this,"","vif",s_age_cfg_h.vif))
//    `uvm_fatal("VIF_CONFIG","cannot get()interface vif from the uvm_config_db. Have you set it?")
//*/
//    
//  begin 
//    s_age_cfg_h=new[no_of_duts];
//    foreach(s_age_cfg_h[i])
//    begin
//    s_age_cfg_h[i]=slave_agent_config::type_id::create($sformatf("s_age_cfg_h[%0d]",i));
//    e_cfg.s_age_cfg_h=new[no_of_duts];
//
//  end 
//    s_age_cfg_h[i].is_active = UVM_ACTIVE;
//    e_cfg.s_age_cfg_h[i] = s_age_cfg_h[i];
//  end 
//  e_cfg.no_of_duts = no_of_duts;
//  e_cfg.has_master_agent = has_master_agent;
//  e_cfg.has_slave_agent = has_slave_agent;
//
//endfunction : config_p

//--------------------------------------------------------------------------------------------
// Function: build_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void base_test::build_phase(uvm_phase phase);
  super.build_phase(phase);
    
  
    e_cfg=env_config::type_id::create("e_cfg",this);
   
  if(has_master_agent)
    m_age_cfg_h=master_agent_config::type_id::create("m_age_cfg_h");

    m_age_cfg_h.is_active = UVM_ACTIVE;
    e_cfg.m_age_cfg_h = m_age_cfg_h;
  
  if(has_slave_agent)
    begin 
    s_age_cfg_h=new[no_of_duts];
    foreach(s_age_cfg_h[i])
    begin
    s_age_cfg_h[i]=slave_agent_config::type_id::create($sformatf("s_age_cfg_h[%0d]",i));
    e_cfg.s_age_cfg_h=new[no_of_duts];
    end
    s_age_cfg_h[i].is_active = UVM_ACTIVE;
    e_cfg.s_age_cfg_h[i] = s_age_cfg_h[i];
    end
 // config_p;
    
  //  e_cfg=env_config::type_id::create("e_cfg",this);

    e_cfg.no_of_duts = no_of_duts;
    e_cfg.has_master_agent = has_master_agent;
    e_cfg.has_slave_agent = has_slave_agent;
    
    uvm_config_db #(env_config)::set(this,"*","env_config",e_cfg);

    super.build();

    env_h=env::type_id::create("env_h",this);

endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: end_of_elaboration_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void base_test::end_of_elaboration_phase(uvm_phase phase);

  uvm_top.print_topology();
endfunction  : end_of_elaboration_phase


`endif

