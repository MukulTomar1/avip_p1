//--------------------------------------------------------------------------------------------
// Module      : HDL Top
// Description : Has a interface and slave agent bfm.
//--------------------------------------------------------------------------------------------

//-------------------------------------------------------
// Including SPI interface and Slave Agent BFM Files
//-------------------------------------------------------
`ifndef HDL_TOP_INCLUDED_
`define HDL_TOP_INCLUDED_

module hdl_top;

  initial begin
    $display("HDL_TOP");
  end
  
  //-------------------------------------------------------
  // SPI Interface Instantiation
  //-------------------------------------------------------
  p_if intf();

  //-------------------------------------------------------
  // SPI BFM Agent Instantiation
  //-------------------------------------------------------
  slave_agent_bfm slave_agent_bfm_h(.intf(intf));

endmodule : hdl_top

`endif
