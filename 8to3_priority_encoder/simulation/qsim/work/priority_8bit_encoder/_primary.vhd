library verilog;
use verilog.vl_types.all;
entity priority_8bit_encoder is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(2 downto 0);
        valid           : out    vl_logic
    );
end priority_8bit_encoder;
