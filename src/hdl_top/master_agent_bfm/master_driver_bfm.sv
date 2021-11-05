`ifndef MASTER_DRIVER_BFM_INCLUDED_
`define MASTER_DRIVER_BFM_INCLUDED_

//-------------------------------------------------------
// master driver BFM
//-------------------------------------------------------

interface master_driver_bfm(p_if intf);


  import master_pkg::master_driver_proxy;

virtual p_if vif;
  
  master_driver_proxy master_driver_proxy_h;
initial 
  begin
    $display("Master driver BFM");
  end
endinterface : master_driver_bfm

`endif
