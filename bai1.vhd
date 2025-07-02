----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 06:53:17 PM
-- Design Name: 
-- Module Name: bai1 - Behavioral
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

entity bai1 is
 Port (
  a,b,c: in std_logic;
  y: out std_logic
  );
end bai1;

architecture Behavioral of bai1 is
signal m,n,p,q,r: std_logic;
begin
m<=a nand a;
n<=m nand b;
p<=m nand c;
q<=n nand p;
r<= b nand c;
y<=q nand r;

end Behavioral;
