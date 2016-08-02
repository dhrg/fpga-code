library ieee;
use ieee.std_logic_1164.all;

entity ledon is
    port (
        btn_left, btn_right, btn_up, btn_down, btn_center: in std_logic;
	    led_1, led_0: out std_logic
	);
end ledon;

architecture impl1 of ledon is

begin
	led_1 <= btn_left and btn_right;
    led_0 <= btn_up and btn_down;
end impl1;