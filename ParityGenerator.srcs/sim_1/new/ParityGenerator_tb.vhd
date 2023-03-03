----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2023 22:55:56
-- Design Name: 
-- Module Name: ParityGenerator_tb - Behavioral
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

entity ParityGenerator_tb is
--  Port ( );
end ParityGenerator_tb;

architecture Behavioral of ParityGenerator_tb is
    COMPONENT ParityGenerator
    Port (sw_i : in std_logic_vector(7 downto 0);
        led7_an_o : out std_logic_vector(3 downto 0);
        led7_seg_o : out std_logic_vector(7 downto 0));
    end COMPONENT;
    
    --inputs
    signal sw_i : std_logic_vector(7 downto 0) := (others => '0');
    
    --outputs
    signal led7_an_o : std_logic_vector(3 downto 0);
    signal led7_seg_o : std_logic_vector(7 downto 0);
    
    constant delay : time := 10 ns;
    
begin
    --instance the uut
    uut: ParityGenerator PORT MAP(
        sw_i => sw_i,
        led7_an_o => led7_an_o,
        led7_seg_o => led7_seg_o
    );
    --stimulus process
    stim_proc: process
    begin

        sw_i <= "00000000";
        wait for delay;
        
        sw_i <= "01010101";
        wait for delay;
        
        sw_i <= "00010011";
        wait for delay;
        
        sw_i <= "11000111";
        wait for delay;
        
        sw_i <= "11101111";
        wait for delay;
        wait for 50 ns;

        
    end process;

end Behavioral;
