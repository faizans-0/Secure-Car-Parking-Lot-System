library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity CarParkingSystem is
port 
(
	clk					: in  std_logic;
	reset					: in  std_logic;
	entrance_sensor	: in  std_logic;
	password_in			: in  std_logic_vector(7 downto 0);
	IDcard				: in  std_logic;
	entrance_LED		: out std_logic;
	password_LED		: out std_logic;
	IDcard_LED			: out std_logic;
	gate_LED				: out std_logic;
	alarm					: out std_logic;
	count_out			: out std_logic_vector(1 downto 0)
);
end CarParkingSystem;


architecture Behavioral of CarParkingSystem is
	constant PASSWORD : std_logic_vector(7 downto 0) := "00110101";
	type state_type is (IDLE, ENTER_PASSWORD, CHECK_PASSWORD, PASSWORD_ACCEPTED, PASSWORD_REJECTED, SCAN_IDCARD, IDCARD_ACCEPTED, IDCARD_REJECTED, OPEN_GATE, ALERT);
	signal current_state, next_state : state_type;
	signal count : std_logic_vector(1 downto 0);
	signal entrance_LED_temp : std_logic;
	signal password_LED_temp : std_logic;
	signal IDcard_LED_temp : std_logic;
	signal gate_LED_temp : std_logic;
	signal alarm_temp : std_logic;
	
begin
	state_machine : process(clk, reset)
	begin
		if reset = '0' then
			current_state <= IDLE;
		elsif rising_edge(clk) then
			current_state <= next_state;
		end if;
	end process state_machine;
    
    next_state_logic : process(current_state, entrance_sensor, password_in, IDcard)
    begin
        case current_state is
			
			when IDLE =>
				if entrance_sensor = '0' then
					next_state <= IDLE;
				elsif entrance_sensor = '1' then
					next_state <= ENTER_PASSWORD;
				end if;
			
			when ENTER_PASSWORD =>
				next_state <= CHECK_PASSWORD;
			
			when CHECK_PASSWORD =>
				if password_in = password then
					next_state <= PASSWORD_ACCEPTED;
				else
					next_state <= PASSWORD_REJECTED;
				end if;
			
			when PASSWORD_ACCEPTED =>
				next_state <= SCAN_IDCARD;
				
			when PASSWORD_REJECTED =>
				if count = 2 then
					next_state <= ALERT;
				else
					next_state <= ENTER_PASSWORD;
				end if;
			
			when SCAN_IDCARD =>
				if IDcard = '1' then
					next_state <= IDCARD_ACCEPTED;
				else
					next_state <= IDCARD_REJECTED;
				end if;
				
			when IDCARD_ACCEPTED =>
				next_state <= OPEN_GATE;
			
			when IDCARD_REJECTED =>
				next_state <= ALERT;
				
			when OPEN_GATE =>
				if entrance_sensor = '1' then
					next_state <= OPEN_GATE;
				else
					next_state <= IDLE;
				end if;
			
			when ALERT =>
				if entrance_sensor = '0' then
					next_state <= IDLE;
				else
					next_state <= ALERT;
				end if;	
			
			when others => 
				next_state <= IDLE;
			
		end case;
    end process next_state_logic;
	 
	password_retry : process(clk)
	begin
		if rising_edge(clk) then
			if (current_state = PASSWORD_REJECTED) then
				count <= count + "01";
			elsif current_state = ALERT then
				count <= "00";
			elsif current_state = IDLE then
				count <= "00";
			end if;
		end if;
	end process password_retry;
	
	count_out <= count;
    
	LED_lights : process(clk)
	begin
		if rising_edge(clk) then
			case current_state is
				
				when IDLE =>
					if entrance_sensor = '1' then
						entrance_LED_temp <= '1';
						password_LED_temp <= '0';
						IDcard_LED_temp <= '0';
						gate_LED_temp <= '0';
						alarm_temp <= '0';
					else
						entrance_LED_temp <= '0';
						password_LED_temp <= '0';
						IDcard_LED_temp <= '0';
						gate_LED_temp <= '0';
						alarm_temp <= '0';
					end if;
				
				when ENTER_PASSWORD =>
					entrance_LED_temp <= '1';
					password_LED_temp <= not password_LED_temp;
					IDcard_LED_temp <= '0';
					gate_LED_temp <= '0';
					alarm_temp <= '0';
				
				when CHECK_PASSWORD =>				
					entrance_LED_temp <= '1';
					password_LED_temp <= not password_LED_temp;
					IDcard_LED_temp <= '0';
					gate_LED_temp <= '0';
					alarm_temp <= '0';
					
				
				when PASSWORD_ACCEPTED =>
					entrance_LED_temp <= '1';
					password_LED_temp <= '1';
					IDcard_LED_temp <= '0';
					gate_LED_temp <= '0';
					alarm_temp <= '0';
					
				when PASSWORD_REJECTED =>
					entrance_LED_temp <= '1';
					password_LED_temp <= not password_LED_temp;
					IDcard_LED_temp <= '0';
					gate_LED_temp <= '0';
					alarm_temp <= '0';
				
				when SCAN_IDCARD =>
					entrance_LED_temp <= '1';
					password_LED_temp <= '1';
					IDcard_LED_temp <= not IDcard_LED_temp;
					gate_LED_temp <= '0';
					alarm_temp <= '0';
					
				when IDCARD_ACCEPTED =>
					entrance_LED_temp <= '1';
					password_LED_temp <= '1';
					IDcard_LED_temp <= '1';
					gate_LED_temp <= '0';
					alarm_temp <= '0';
				
				when IDCARD_REJECTED =>
					entrance_LED_temp <= '1';
					password_LED_temp <= '1';
					IDcard_LED_temp <= '0';
					gate_LED_temp <= '0';
					alarm_temp <= '0';
					
				when OPEN_GATE =>
					entrance_LED_temp <= '1';
					password_LED_temp <= '1';
					IDcard_LED_temp <= '1';
					gate_LED_temp <= '1';
					alarm_temp <= '0';
				
				when ALERT =>
					entrance_LED_temp <= '0';
					password_LED_temp <= '0';
					IDcard_LED_temp <= '0';
					gate_LED_temp <= '0';
					alarm_temp <= not alarm_temp;
				
				when others =>
					entrance_LED_temp <= '0';
					password_LED_temp <= '0';
					IDcard_LED_temp <= '0';
					gate_LED_temp <= '0';
					alarm_temp <= '0';
			
			end case;
		end if;
	end process LED_lights;
	
	entrance_LED <= entrance_LED_temp;
	password_LED <= password_LED_temp;
	IDcard_LED <= IDcard_LED_temp;
	gate_LED <= gate_LED_temp;
	alarm <= alarm_temp;
	
end architecture Behavioral;
