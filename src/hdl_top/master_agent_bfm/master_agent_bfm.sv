`ifndef MASTER_AGENT_BFM_INCLUDED_
`define MASTER_AGENT_BFM_INCLUDED_

  module master_agent_bfm(p_if intf);

   initial
   begin
      $display("Master Agent BFM");
   end
   
   master_driver_bfm master_driver_bfm_h(intf);
   master_monitor_bfm master_monitor_bfm_h(intf);

  endmodule

`endif
