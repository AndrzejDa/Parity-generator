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
        led7_an_o : out std_logic_vector(3 downto 0);
        led7_seg_o : out std_logic_vector(7 downto 0));     --7=A 6=B ... 1=G 0=DP
end ParityGenerator;

architecture Behavioral of ParityGenerator is

    signal led7_even : std_logic_vector(7 downto 0) := "01100001";  --E na wyswietlaczu 7 seg
    signal led7_odd : std_logic_vector(7 downto 0) := "00000011";   --O na wyswietlaczu 7 seg

begin
    process(sw_i)
        variable num_bits : integer range 0 to sw_i'length;
        begin
        led7_an_o <= "1111";    --wylaczenie wszystkich z 4 dostepnych segmentow
        num_bits := 0;
        for i in sw_i'range loop
            if sw_i(i) = '1' then
                num_bits := num_bits + 1;
            end if;
        end loop;
        
        if num_bits mod 2 = 0 then led7_seg_o <= led7_even;
        else led7_seg_o <= led7_odd;
        end if;
        led7_an_o(0) <= '0';    --wlaczenie 1 z 4 segmentow
    end process;
end Behavioral;
