----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 04:37:29 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is

end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    component sevenseg_decoder
    
        Port(i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
             o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal w_hex : STD_LOGIC_VECTOR(3 downto 0);
    signal w_seg_n : STD_LOGIC_VECTOR(6 downto 0);

begin
    
    UUT : sevenseg_decoder
    
        port map(i_hex => w_hex,
                 o_seg_n => w_seg_n);
    test_process : process
    
    begin
    
        w_Hex <= x"0"; wait for 10 ns;
            assert (w_seg_n = "1000000") report "0" severity failure;
        w_Hex <= x"1"; wait for 10 ns;
            assert (w_seg_n = "1111001") report "1" severity failure;
        w_Hex <= x"2"; wait for 10 ns;
            assert (w_seg_n = "0100100") report "2" severity failure;
        w_Hex <= x"3"; wait for 10 ns;
            assert (w_seg_n = "0110000") report "3" severity failure;
        w_Hex <= x"4"; wait for 10 ns;
            assert (w_seg_n = "0011001") report "4" severity failure;
        w_Hex <= x"5"; wait for 10 ns;
            assert (w_seg_n = "0010010") report "5" severity failure;
        w_Hex <= x"6"; wait for 10 ns;
            assert (w_seg_n = "0000010") report "6" severity failure;
        w_Hex <= x"7"; wait for 10 ns;
            assert (w_seg_n = "1111000") report "7" severity failure;
        w_Hex <= x"8"; wait for 10 ns;
            assert (w_seg_n = "0000000") report "8" severity failure;
        w_Hex <= x"9"; wait for 10 ns;
            assert (w_seg_n = "0011000") report "9" severity failure;
        w_Hex <= x"A"; wait for 10 ns;
            assert (w_seg_n = "0001000") report "A" severity failure;
        w_Hex <= x"B"; wait for 10 ns;
            assert (w_seg_n = "0000011") report "B" severity failure;
        w_Hex <= x"C"; wait for 10 ns;
            assert (w_seg_n = "0100111") report "C" severity failure;
        w_Hex <= x"D"; wait for 10 ns;
            assert (w_seg_n = "0100001") report "D" severity failure;
        w_Hex <= x"E"; wait for 10 ns;
            assert (w_seg_n = "0000110") report "E" severity failure;
        w_Hex <= x"F"; wait for 10 ns;
            assert (w_seg_n = "0001110") report "F" severity failure;
    
        wait;
    
    end process;

end Behavioral;
