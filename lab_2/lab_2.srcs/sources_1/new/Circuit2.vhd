----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2023 10:34:42 AM
-- Design Name: 
-- Module Name: Circuit2 - Behavioral
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

entity Circuit2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           G : out STD_LOGIC;
           Y : out STD_LOGIC;
           R : out STD_LOGIC);
end Circuit2;

architecture Behavioral of Circuit2 is

begin



    G<= A AND B AND C;
    Y<=(A AND ( NOT B) AND C) OR (B AND ( NOT A) AND C)OR (A AND ( NOT C) AND B);
    R<= ((NOT A)AND (NOT C)) OR ((NOT A)AND (NOT B)) OR ( A AND (NOT C) AND (NOT B));
    
    
   



end Behavioral;
