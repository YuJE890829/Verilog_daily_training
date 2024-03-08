library verilog;
use verilog.vl_types.all;
entity seven_stage_monitor_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end seven_stage_monitor_vlg_check_tst;
