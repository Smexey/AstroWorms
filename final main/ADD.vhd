library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADD is
	port
	(
		-- Input ports
		a: in std_logic_vector(4 downto 0);
		b: in std_logic_vector(4 downto 0);
		c0: in std_logic;
		
		-- Output ports
		f:out std_logic_vector(4 downto 0);
		c5: out std_logic
	);
end;

architecture rtl of ADD is
	 signal bc : std_logic_vector(4 downto 0);
begin
	bc(0) <= c0;
	
	f(0) <= a(0) xor b(0) xor bc(0);
	bc(1) <= (a(0)and b(0)) or (bc(0)and(a(0) or b(0)));
	
	f(1) <= a(1) xor b(1) xor bc(1);
	bc(2) <= (a(1)and b(1)) or (bc(1)and(a(1) or b(1)));
	
	f(2) <= a(2) xor b(2) xor bc(2);
	bc(3) <= (a(2)and b(2)) or (bc(2)and(a(2) or b(2)));
	
	f(3) <= a(3) xor b(3) xor bc(3);
	bc(4) <= (a(3)and b(3)) or (bc(3)and(a(3) or b(3)));
	
	f(4) <= a(4) xor b(4) xor bc(4);
	c5 <= (a(4)and b(4)) or (bc(4)and(a(4) or b(4)));
	
end;

