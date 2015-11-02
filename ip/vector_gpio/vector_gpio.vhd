----------------------------------------------------------------------------------------------------
--! @file vector_gpio.vhd
--! @brief 
--! @author Antti Lukats
--! @version 1.0
--! @date 2015
--! @license MIT License
--! @copyright Copyright 2015 Trenz Electronic GmbH
--! @pre Vivado 2014.4+
----------------------------------------------------------------------------------------------------
--! Use standard library
library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;


entity vector_gpio is  
	generic (
    --! 
    --! 
    --!         
    C_VECTOR_LSB    : integer range 0 to 1023    := 0; --!
    C_VECTOR_WIDTH  : integer range 1 to 1024    := 32; --!
    C_GPIO_WIDTH    : integer range 1 to 1024    := 32 --!   
    );
    port (
    --!
    --! 
    --!
	vector_i      : out std_logic_vector(C_VECTOR_WIDTH-1 downto 0);
    vector_o      : in std_logic_vector(C_VECTOR_WIDTH-1 downto 0) := (others => '0');
    vector_t      : in std_logic_vector(C_VECTOR_WIDTH-1 downto 0) := (others => '1');
    --
	-- 
	--
	gpio_i      : in  std_logic_vector(C_GPIO_WIDTH-1 downto 0);
	gpio_o      : out std_logic_vector(C_GPIO_WIDTH-1 downto 0);
	gpio_t      : out std_logic_vector(C_GPIO_WIDTH-1 downto 0)
	);
	
end vector_gpio;

architecture Behavioral of vector_gpio is

begin
	vector_i 	<= gpio_i;
	gpio_o      <= vector_o;
	gpio_t      <= vector_t;

end Behavioral;
