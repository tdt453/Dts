----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 08:42:28 PM
-- Design Name: 
-- Module Name: cnt7_tff - Behavioral
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

entity TFF_CNT is

    Port (
        CLK : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(2 downto 0)
    );
end TFF_CNT;

architecture Behavioral of TFF_CNT is
    signal Q_tmp : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal T0, T1, T2 : STD_LOGIC;
begin
   --TI?N7
   --T0 <= (Q_tmp(2) nand Q_tmp(1));
    --T1 <= Q_tmp(0)or (Q_tmp(2) and Q_tmp(1));
    --T2 <= (Q_tmp(0) and Q_tmp(1))or(Q_tmp(2) and Q_tmp(1));
               --LÙI 6
                --T0 <= '1';
                  -- T1 <= (not(Q_tmp(0)) and Q_tmp(1)) or(not(Q_tmp(0)) and Q_tmp(2));
                   --T2 <= (not(Q_tmp(0)) and (not Q_tmp(1)));
                   
--0,1,3,5,7
    T0 <= (Q_tmp(2)and Q_tmp(1)) or(not Q_tmp(0));
    T1 <= Q_tmp(0);
    T2 <=  Q_tmp(1);
    
    
    --LÙI5
   -- T0 <= Q_tmp(2)OR Q_tmp(1) or Q_tmp(0);
    --T1 <=  Q_tmp(2)or (Q_tmp(1) and(not Q_tmp(0)));
    --T2 <=  Q_tmp(1) nor Q_tmp(0);

    FF0: entity work.T_FF
        port map (
            T => T0,
            CLK => CLK,
            Q => Q_tmp(0),
            Q_inv => open
        );

    FF1: entity work.T_FF
        port map (
            T => T1,
            CLK => CLK,
            Q => Q_tmp(1),
            Q_inv => open
        );

    FF2: entity work.T_FF
        port map (
            T => T2,
            CLK => CLK,
            Q => Q_tmp(2),
            Q_inv => open
        );

    Q <= Q_tmp;
end Behavioral;

