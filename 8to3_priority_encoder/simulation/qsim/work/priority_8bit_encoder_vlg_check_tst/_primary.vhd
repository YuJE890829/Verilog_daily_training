library verilog;
use verilog.vl_types.all;
entity priority_8bit_encoder_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(2 downto 0);
        valid           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end priority_8bit_encoder_vlg_check_tst;
