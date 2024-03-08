library verilog;
use verilog.vl_types.all;
entity seven_stage_monitor_vlg_sample_tst is
    port(
        num             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end seven_stage_monitor_vlg_sample_tst;
