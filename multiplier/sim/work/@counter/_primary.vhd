library verilog;
use verilog.vl_types.all;
entity Counter is
    generic(
        WIDTH           : vl_notype
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \in\            : in     vl_logic_vector;
        load            : in     vl_logic;
        count           : in     vl_logic;
        \out\           : out    vl_logic_vector;
        co              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 5;
end Counter;
