library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter6 is
end tb_counter6;

architecture Behavioral of tb_counter6 is
    component counter6
        Port (
            CLK : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    signal CLK : STD_LOGIC := '0';
    signal Q : STD_LOGIC_VECTOR(2 downto 0);
    constant CLK_PERIOD : time := 10 ns;

begin
    uut: counter6
        Port map (
            CLK => CLK,
            Q => Q
        );

    clk_process: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    test_process: process
    begin
        wait for 100 ns;
        wait for 60 * CLK_PERIOD;
        wait;
    end process;

end Behavioral;
