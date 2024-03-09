library verilog;
use verilog.vl_types.all;
entity priority_8bit_encoder_vlg_sample_tst is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end priority_8bit_encoder_vlg_sample_tst;
