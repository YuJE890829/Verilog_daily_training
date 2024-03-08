library verilog;
use verilog.vl_types.all;
entity seven_stage_monitor is
    port(
        num             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(6 downto 0)
    );
end seven_stage_monitor;
