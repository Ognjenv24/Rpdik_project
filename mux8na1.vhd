library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux32to1 is
    Port (
        D0, D1, D2, D3, D4, D5, D6, D7,
        D8, D9, D10, D11, D12, D13, D14, D15,
        D16, D17, D18, D19, D20, D21, D22, D23,
        D24, D25, D26, D27, D28, D29, D30, D31 : in STD_LOGIC;
        Sel : in STD_LOGIC_VECTOR(4 downto 0);
        Y : out STD_LOGIC
    );
end mux32to1;

architecture Behavioral of mux32to1 is

    component mux8to1
        port (
            D0, D1, D2, D3, D4, D5, D6, D7 : in STD_LOGIC;
            Sel : in STD_LOGIC_VECTOR(2 downto 0);
            En : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal MUX8_0_out, MUX8_1_out, MUX8_2_out, MUX8_3_out, sig1, sig2, sig3, sig4 : STD_LOGIC;

begin

    mux1: mux8to1 port map (
        D0 => D0, D1 => D1, D2 => D2, D3 => D3, D4 => D4, D5 => D5, D6 => D6, D7 => D7,
        Sel => Sel(2 downto 0),
        En => sig1,
        Y => MUX8_0_out
    );

    mux2: mux8to1 port map (
        D0 => D8, D1 => D9, D2 => D10, D3 => D11, D4 => D12, D5 => D13, D6 => D14, D7 => D15,
        Sel => Sel(2 downto 0),
        En => sig2,
        Y => MUX8_1_out
    );

    mux3: mux8to1 port map (
        D0 => D16, D1 => D17, D2 => D18, D3 => D19, D4 => D20, D5 => D21, D6 => D22, D7 => D23,
        Sel => Sel(2 downto 0),
        En => sig3,
        Y => MUX8_2_out
    );

    mux4: mux8to1 port map (
        D0 => D24, D1 => D25, D2 => D26, D3 => D27, D4 => D28, D5 => D29, D6 => D30, D7 => D31,
        Sel => Sel(2 downto 0),
        En => sig4,
        Y => MUX8_3_out
    );

    sig1 <= (not Sel(3) and not Sel(4));
    sig2 <= (Sel(3) and not Sel(4));
    sig3 <= (not Sel(3) and Sel(4));
    sig4 <= (Sel(3) and Sel(4));

    Y <= MUX8_0_out or MUX8_1_out or MUX8_2_out or MUX8_3_out;

end Behavioral;
