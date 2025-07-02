----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2025 02:54:41 PM
-- Design Name: 
-- Module Name: Adder - Behavioral
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

entity FullAdder_4bit is
Port ( 
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector( 3 downto 0);
cin : in std_logic;
sum: out std_logic_vector(3 downto 0);
cout: out std_logic);
end FullAdder_4bit;

architecture Behavioral of FullAdder_4bit is
signal c : std_logic_vector( 4 downto 0);
begin
c(0)<= cin;
FA0: entity work.FullAdder port map(a(0),b(0),c(0),sum(0),c(1));
FA1: entity work.FullAdder port map(a(1),b(1),c(1),sum(1),c(2));
FA2: entity work.FullAdder port map(a(2),b(2),c(2),sum(2),c(3));
FA3: entity work.FullAdder port map(a(3),b(3),c(3),sum(3),c(4));
cout<= c(4);



end Behavioral;
