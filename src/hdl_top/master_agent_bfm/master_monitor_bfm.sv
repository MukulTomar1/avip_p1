`ifndef MASTER_MONITOR_BFM_INCLUDED_
`define MASTER_MONITOR_BFM_INCLUDED_
//-------------------------------------------------------
//master monitor
//-------------------------------------------------------
interface master_monitor_bfm(p_if intf);
 
  import master_pkg::master_monitor_proxy;

  
  master_monitor_proxy master_monitor_proxy_h;


  
  initial
  begin
    $display("Master Monitor BFM");
  end

endinterface : master_monitor_bfm

`endif
