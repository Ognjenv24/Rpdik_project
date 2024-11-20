library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux32to1_tb is
end mux32to1_tb;

architecture testbench of mux32to1_tb is
    signal D0, D1, D2, D3, D4, D5, D6, D7,
           D8, D9, D10, D11, D12, D13, D14, D15,
           D16, D17, D18, D19, D20, D21, D22, D23,
           D24, D25, D26, D27, D28, D29, D30, D31 : STD_LOGIC;

    signal S : STD_LOGIC_VECTOR(4 downto 0);
    signal Y : STD_LOGIC;

    -- Instantiate the mux32to1 component
    component mux32to1
        Port (
            D0, D1, D2, D3, D4, D5, D6, D7,
            D8, D9, D10, D11, D12, D13, D14, D15,
            D16, D17, D18, D19, D20, D21, D22, D23,
            D24, D25, D26, D27, D28, D29, D30, D31 : in STD_LOGIC;
            S : in STD_LOGIC_VECTOR(4 downto 0);
            Y : out STD_LOGIC
        );
    end component;

begin
    -- Instantiate the mux32to1 component
    mux32to1_inst : mux32to1
        Port Map (
            D0 => D0, D1 => D1, D2 => D2, D3 => D3,
            D4 => D4, D5 => D5, D6 => D6, D7 => D7,
            D8 => D8, D9 => D9, D10 => D10, D11 => D11,
            D12 => D12, D13 => D13, D14 => D14, D15 => D15,
            D16 => D16, D17 => D17, D18 => D18, D19 => D19,
            D20 => D20, D21 => D21, D22 => D22, D23 => D23,
            D24 => D24, D25 => D25, D26 => D26, D27 => D27,
            D28 => D28, D29 => D29, D30 => D30, D31 => D31,
            S => S,
            Y => Y
        );

    -- Initialize inputs
    D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1';
    D4 <= '0'; D5 <= '1'; D6 <= '0'; D7 <= '1';
    D8 <= '0'; D9 <= '1'; D10 <= '0'; D11 <= '1';
    D12 <= '0'; D13 <= '1'; D14 <= '0'; D15 <= '1';
    D16 <= '0'; D17 <= '1'; D18 <= '0'; D19 <= '1';
    D20 <= '0'; D21 <= '1'; D22 <= '0'; D23 <= '1';
    D24 <= '0'; D25 <= '1'; D26 <= '0'; D27 <= '1';
    D28 <= '0'; D29 <= '1'; D30 <= '0'; D31 <= '1';

    S <= "00000" after 0 ms,
         "00001" after 100 ms,
         "00010" after 200 ms,
         "00011" after 300 ms,
         "00100" after 400 ms,
         "00101" after 500 ms,
         "00110" after 600 ms,
         "00111" after 700 ms,
         "01000" after 800 ms,
         "01001" after 900 ms,
         "01010" after 1000 ms,
         "01011" after 1100 ms,
         "01100" after 1200 ms,
         "01101" after 1300 ms,
         "01110" after 1400 ms,
         "01111" after 1500 ms,
         "10000" after 1600 ms,
         "10001" after 1700 ms,
         "10010" after 1800 ms,
         "10011" after 1900 ms,
         "10100" after 2000 ms,
         "10101" after 2100 ms,
         "10110" after 2200 ms,
         "10111" after 2300 ms,
         "11000" after 2400 ms,
         "11001" after 2500 ms,
         "11010" after 2600 ms,
         "11011" after 2700 ms,
         "11100" after 2800 ms,
         "11101" after 2900 ms,
         "11110" after 3000 ms,
         "11111" after 3100 ms;

end testbench;
