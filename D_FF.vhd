library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port (
        D : in STD_LOGIC;
        CLK : in STD_LOGIC;
        Q : buffer STD_LOGIC;
        Q_inv : buffer STD_LOGIC
    );
end D_FF;

architecture Behavioral of D_FF is
    signal Q_tmp : STD_LOGIC := '0';
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            Q_tmp <= D;
        end if;
    end process;

    Q <= Q_tmp;
    Q_inv <= not Q_tmp;
end Behavioral;
