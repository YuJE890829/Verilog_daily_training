library verilog;
use verilog.vl_types.all;
entity MUL4_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end MUL4_vlg_sample_tst;
