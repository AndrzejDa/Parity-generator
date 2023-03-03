----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2023 21:07:37
-- Design Name: 
-- Module Name: ParityGenerator - Behavioral
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

entity ParityGenerator is
  Port (sw_i : in std_logic_vector(7 downto 0);
        led7_an_i : in std_logic_vector(3 downto 0);
        led7_seg_o : out std_logic_vector(7 downto 0));
end ParityGenerator;

architecture Behavioral of ParityGenerator is

begin


end Behavioral;
