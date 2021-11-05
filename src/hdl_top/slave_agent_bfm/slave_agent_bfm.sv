//--------------------------------------------------------------------------------------------
// Module      : Slave Agent BFM
// Description : Instantiates driver and monitor
//--------------------------------------------------------------------------------------------

//-------------------------------------------------------
// Making a copy of the bfm files using `include
//-------------------------------------------------------
`ifndef SLAVE_AGENT_BFM_INCLUDED_
`define SLAVE_AGENT_BFM_INCLUDED_

module slave_agent_bfm(p_if intf);
  
  initial begin
    $display("Slave Agent BFM");
  end

  //-------------------------------------------------------
  //Slave driver bfm instantiation
  //-------------------------------------------------------
  slave_driver_bfm slave_driver_bfm_h(intf);

  //-------------------------------------------------------
  //Slave driver bfm instantiation
  //-------------------------------------------------------
  slave_monitor_bfm slave_monitor_bfm_h(intf);

endmodule : slave_agent_bfm

`endif
