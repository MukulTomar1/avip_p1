`ifndef SCOREBOARD_INCLUDED_
`define SCOREBOARD_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: scoreboard
// <Description_here>
//--------------------------------------------------------------------------------------------
class scoreboard extends uvm_component;
  `uvm_component_utils(scoreboard)

  master_tx master_tx_h;

  slave_tx slave_tx_h;
  env_config env_cfg_h;



  uvm_tlm_analysis_fifo#(master_tx)master_analysis_fifo;

  uvm_tlm_analysis_fifo#(slave_tx)slave_analysis_fifo;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "scoreboard", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  //extern virtual task run_phase(uvm_phase phase);

endclass : scoreboard

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - scoreboard
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function scoreboard::new(string name = "scoreboard",
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
function void scoreboard::build_phase(uvm_phase phase);
  super.build_phase(phase);
  master_analysis_fifo=new("master_analysis_fifo",this);
  slave_analysis_fifo=new("slave_analysis_fifo",this);

endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void scoreboard::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
endfunction : connect_phase


`endif

