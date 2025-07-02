----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2025 08:20:51 AM
-- Design Name: 
-- Module Name: tb_HA - Behavioral
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

entity tb_HA is
--  Port ( );
end tb_HA;

architecture Behavioral of tb_HA is
component HalfAdder  Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Sum : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
    end component;
    signal A,B,Sum, Cout: std_logic;
begin
uut: HalfAdder port map(
 A=>A, B=>B, Sum=>Sum, Cout=>Cout);
 simu_pro:process begin
 A<='0'; B<='0'; wait for 10ns;
 A<='0'; B<='1'; wait for 10ns;
 A<='1'; B<='0'; wait for 10ns;
 A<='1'; B<='1'; wait for 10ns;
 end process;
 


end Behavioral;
