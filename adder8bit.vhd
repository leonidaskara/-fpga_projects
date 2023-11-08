LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY adder8bit IS
PORT (dina, dinb : IN std_logic_vector(7 downto 0);
		cin: IN STD_LOGIC;
		dout: OUT std_logic_vector(7 downto 0);
END adder8bit;
------------------------------------------------
ARCHITECTURE structural of adder8bit IS
component FA
port (A,B,Ci : in std_logic ;
		S,Co : out std_logic) ;
end component;

SIGNAL C : std_logic_vector(7 downto 0);

BEGIN
FA_1 : FA port map (dina(0), dinb(0), cin, dout(0), c(0));
p1 : for i in 1 to 7 generate
FA_2 : FA port map(dina(i), dinb(i), c(i-1), dout(i), c(i));
end generate;
end structural;
