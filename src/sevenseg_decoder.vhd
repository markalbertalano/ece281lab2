----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 03:50:23 PM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

begin --g left a right
    
    with i_Hex select
    o_seg_n <= "0111111" when x"0",--0
               "0000110" when x"1",
               "1011011" when x"2",
               "1001111" when x"3",
               "1100110" when x"4",
               "0000110" when x"5",--5
               "1111101" when x"6",
               "0000111" when x"7",
               "1111111" when x"8",
               "1100111" when x"9",--9
               "1110111" when x"A",--A
               "1111100" when x"B",--B
               "1011000" when x"C",--c
               "1011110" when x"D",--d
               "1111001" when x"E",--E
               "1110001" when x"F",--F
               "0000000" when others;

end Behavioral;
