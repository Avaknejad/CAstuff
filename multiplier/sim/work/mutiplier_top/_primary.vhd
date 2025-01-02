library verilog;
use verilog.vl_types.all;
entity mutiplier_top is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        v1              : in     vl_logic_vector(7 downto 0);
        v2              : in     vl_logic_vector(7 downto 0);
        ready           : out    vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end mutiplier_top;
