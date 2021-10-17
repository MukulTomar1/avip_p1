`ifndef SLAVE_VIRTUAL_SEQUENCE_INCLUDED_
`define SLAVE_VIRTUAL_SEQUENCE_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: slave_virtual_sequence
// <Description_here>
//--------------------------------------------------------------------------------------------
class slave_virtual_sequence extends uvm_object;
  `uvm_object_utils(slave_virtual_sequence)

  slave_sequencer s_seqr_h;
 
  slave_virtual_sequncer s_v_seqr_h;

  env_config e_cfg;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "slave_virtual_sequence");
  extern task body();
endclass : slave_virtual_sequence

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - slave_virtual_sequence
//--------------------------------------------------------------------------------------------
function slave_virtual_sequence::new(string name = "slave_virtual_sequence");
  super.new(name);
endfunction : new


task slave_virtual_sequence::body();
  if(!uvm_config_db #(env_config)::get(null,get_full_name(),"env_config",e_cfg))
    `uvm_fatal("CONFIG","cannot get() the m_cfg from the uvm_config_db, Have you set it?")


    assert($cast(s_v_seqr_h,s_seqr_h))
    else
    begin
      `uvm_error("BODY", "Error in $cast of the virtual sequencer")
    end

    s_seqr_h=s_v_seqr_h.s_seqr_h;

  endtask:body

`endif

