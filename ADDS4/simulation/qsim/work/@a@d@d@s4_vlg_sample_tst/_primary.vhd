library verilog;
use verilog.vl_types.all;
entity ADDS4_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ADDS4_vlg_sample_tst;
