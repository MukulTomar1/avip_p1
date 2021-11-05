`ifndef SLAVE_MONITOR_BFM_INCLUDED_
`define SLAVE_MONITOR_BFM_INCLUDED_
//--------------------------------------------------------------------------------------------
// Module       : Slave Monitor BFM
// Description  : Connects the slave monitor bfm with the monitor proxy
//--------------------------------------------------------------------------------------------

interface slave_monitor_bfm(p_if intf);
  
  initial begin
    $display("Slave Monitor BFM");
  end

endinterface : slave_monitor_bfm


`endif
