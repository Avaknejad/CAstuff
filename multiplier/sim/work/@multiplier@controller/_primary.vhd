library verilog;
use verilog.vl_types.all;
entity MultiplierController is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        co              : in     vl_logic;
        loadV1          : out    vl_logic;
        loadAccumulated : out    vl_logic;
        shiftAccumulated: out    vl_logic;
        shiftV1         : out    vl_logic;
        count           : out    vl_logic;
        selectAccumulated: out    vl_logic;
        ready           : out    vl_logic
    );
end MultiplierController;
