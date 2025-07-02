----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2025 03:13:21 PM
-- Design Name: 
-- Module Name: Adder_tb - Behavioral
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

entity TB_FullAdder_4bit is
--  Port ( );
end TB_FullAdder_4bit;

architecture Behavioral of TB_FullAdder_4bit is
component FullAdder_4bit
port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector( 3 downto 0);
cin : in std_logic;
sum: out std_logic_vector(3 downto 0);
cout: out std_logic);
end component;
signal a: std_logic_vector( 3 downto 0);
signal b : std_logic_vector( 3 downto 0);
signal cin : std_logic;
signal sum : std_logic_vector( 3 downto 0);
signal cout: std_logic;

begin
uut: FullAdder_4bit port map(
a=>a,
b=>b, 
cin=> cin,
sum=> sum,
cout=> cout);
simu_process: process
begin
a<="1000"; b<="1111";cin<='0';
wait for 10ns;
a<="1001"; b<="1110";cin<='1';
wait for 10ns;
a<="1010"; b<="1101";cin<='0';
wait for 10ns;
a<="1100"; b<="1011";cin<='1';
wait for 10ns;
a<="1110"; b<="0011";cin<='1';
wait for 10ns;
a<="1011"; b<="0001";cin<='0';
wait for 10ns;
a<="1110"; b<="0101";cin<='0';
wait for 10ns;

end process;

end Behavioral;
