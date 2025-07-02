----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2025 03:45:35 PM
-- Design Name: 
-- Module Name: full_adder_test - Behavioral
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

entity TB_FA is
--  Port ( );
end  TB_FA;

architecture Behavioral of  TB_FA is
component full_adder
Port ( 
a: in std_logic;
b: in std_logic;
cin: in std_logic;
sum : out std_logic;
count: out std_logic);
end component;
signal a: std_logic;
signal b: std_logic;
signal cin: std_logic;
signal sum: std_logic;
signal count: std_logic;

begin
uut: full_adder port map(
a=>a,
b=>b,
cin=>cin,
sum=>sum,
count=> count);
simu_process: process
begin
a<='0'; b<='0'; cin<='0';
wait for 10ns;
a<='0'; b<='0'; cin<='1';
wait for 10ns;
a<='0'; b<='1'; cin<='0';
wait for 10ns;
a<='0'; b<='1'; cin<='1';
wait for 10ns;
a<='1'; b<='0'; cin<='0';
wait for 10ns;
a<='1'; b<='0'; cin<='1';
wait for 10ns;
a<='1'; b<='1'; cin<='0';
wait for 10ns;
a<='1'; b<='1'; cin<='1';
wait for 10ns;

end process;


end Behavioral;
