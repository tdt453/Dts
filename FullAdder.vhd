library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Cin : in STD_LOGIC;
        Sum : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end FullAdder;

architecture Behavioral of FullAdder is
 
    signal S1, C1, C2 : STD_LOGIC;
begin
    
    HA1: entity work.HalfAdder
        Port map (
            A => A,
            B => B,
            Sum => S1,
            Cout => C1
        );

    
    HA2: entity work.HalfAdder
        Port map (
            A => S1,
            B => Cin,
            Sum => Sum,
            Cout => C2
        );

 
    Cout <= C1 OR C2;
end Behavioral;