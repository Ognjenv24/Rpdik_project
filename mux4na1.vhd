library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8to1 is
    port (
        D0, D1, D2, D3, D4, D5, D6, D7 : in STD_LOGIC;
        Sel : in STD_LOGIC_VECTOR(2 downto 0);
        En : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end mux8to1;

architecture structural of mux8to1 is
    -- Component declaration for 4-to-1 multiplexer
    component mux4to1
        port (
            D0, D1, D2, D3 : in STD_LOGIC;
            Sel : in STD_LOGIC_VECTOR(1 downto 0);
            EN : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- Signals for intermediate outputs
    signal MUX4a_out, MUX4b_out : STD_LOGIC;
    signal MUX4a_EN, MUX4b_EN : STD_LOGIC;
    signal zero : STD_LOGIC_VECTOR(1 downto 0);

begin
    -- Instantiation of 4-to-1 multiplexers
    mux1: mux4to1 port map (
        D0 => D0,
        D1 => D1,
        D2 => D2,
        D3 => D3,
        Sel => Sel(1 downto 0),
        EN => MUX4a_EN,
        Y => MUX4a_out
    );

    mux2: mux4to1 port map (
        D0 => D4,
        D1 => D5,
        D2 => D6,
        D3 => D7,
        Sel => Sel(1 downto 0),
        EN => MUX4b_EN,
        Y => MUX4b_out
    );

    -- Control signal assignment
    MUX4a_EN <= not Sel(2);
    MUX4b_EN <= Sel(2);

    Y <= MUX4a_out or MUX4b_out;

end structural;
