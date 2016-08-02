library ieee;
use ieee.std_logic_1164.all;

entity decoder24 is
    port (
        btn_left, btn_right, btn_up, btn_down, btn_center: in std_logic;
	    led: out std_logic_vector(7 downto 0)
	);
end decoder24;

architecture impl1 of decoder24 is
signal btns: std_logic_vector(1 downto 0);
signal code: std_logic_vector(7 downto 0);
begin
    
	btns <= btn_left & btn_right;
    with btns select
    code <=
        "00000001" when "00", -- ASCII NULL
        "00000010" when "01", -- ASCII 
		"00000100" when "10",
		"00001000" when "11",
		"00000000" when others;
	led <= code;
	
end impl1;