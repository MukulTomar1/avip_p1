`ifndef MASTER_VIRTUAL_SEQUENCE_INCLUDED_
`define MASTER_VIRTUAL_SEQUENCE_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_virtual_sequence
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_virtual_sequence extends uvm_object;
  `uvm_object_utils(master_virtual_sequence)

  master_agent m_seqr_h;
 
  master_virtual_sequencer m_v_seqr_h;

  env_config e_cfg;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_virtual_sequence");
  extern task body();
endclass : master_virtual_sequence

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - master_virtual_sequence
//--------------------------------------------------------------------------------------------
function master_virtual_sequence::new(string name = "master_virtual_sequence");
  super.new(name);
endfunction : new

task master_virtual_sequence::body();
  if(!uvm_config_db #(env_config)::get(null,get_full_name(),"env_config",e_cfg))
    `uvm_fatal("CONFIG","cannot get() the m_cfg from the uvm_config_db, Have you set it?")


    assert($cast(m_v_seqr_h,m_seqr_h))
    else
    begin
      `uvm_error("BODY", "Error in $cast of the virtual sequencer")
    end

    m_seqr_h=m_v_seqr_h.m_seqr_h;

  endtask:body

`endif
 
