`ifndef SLAVE_DRIVER_BFM_INCLUDED_
`define SLAVE_DRIVER_BFM_INCLUDED_
//--------------------------------------------------------------------------------------------
// Module       : Slave Driver BFM
// Description  : Connects the slave driver bfm with the driver proxy
//--------------------------------------------------------------------------------------------
interface slave_driver_bfm(p_if intf);

  initial begin
    $display("Slave Driver BFM");
  end

endinterface : slave_driver_bfm

`endif
