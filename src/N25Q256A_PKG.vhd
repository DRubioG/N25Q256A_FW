library ieee;
use ieee.std_logic_1164.all;

package N25Q256A_PKG is

subtype command_type is std_logic_vector(7 downto 0);

-- commands
-- reset operations
constant RESET_ENABLE_PKG                                       : command_type := x"66";
constant RESET_MEMORY_PKG                                       : command_type := x"99";

-- identification operations
constant READ_ID_PKG                                            : command_type := x"9E";
constant READ_ID2_PKG                                           : command_type := x"9F";
constant MULTIPLE_I_O_READ_ID_PKG                               : command_type := x"AF";
constant READ_SERIAL_FLASH_DISCOVERY_PARAMETER_PKG              : command_type := x"5A";

-- READ_operations
constant READ_PKG                                               : command_type := x"03";
constant FAST_READ_PKG                                          : command_type := x"0B";
constant DUAL_OUTPUT_FAST_READ_PKG                              : command_type := x"3B";
constant DUAL_INPUT_OUTPUT_FAST_READ_PKG                        : command_type := x"BB"; -- three options : 0x0B, 0x3B & 0xBB
constant QUAD_OUTPUT_FAST_READ_PKG                              : command_type := x"6B";
constant QUAD_INPUT_OUTPUT_FAST_READ_PKG                        : command_type := x"EB";
constant FAST_READ_DTR_PKG                                      : command_type := x"0D";
constant DUAL_OUTPUT_FAST_READ_DTR_PKG                          : command_type := x"3D";
constant DUAL_INPUT_OUTPUT_FAST_READ_DTR_PKG                    : command_type := x"BD";
constant QUAD_OUTPUT_FAST_READ_DTR_PKG                          : command_type := x"6D";
constant QUAD_INPUT_OUTPUT_FAST_READ_DTR_PKG                    : command_type := x"ED";
constant 4_BYTE_READ_PKG                                        : command_type := x"13";
constant 4_BYTE_FAST_READ_PKG                                   : command_type := x"0C";
constant 4_BYTE_DUAL_OUTPUT_FAST_READ_PKG                       : command_type := x"3C";
constant 4_BYTE_DUAL_INPUT_OUTPUT_FAST_READ_PKG                 : command_type := x"BC";
constant 4_BYTE_QUAD_OUTPUT_FAST_READ_PKG                       : command_type := x"6C";
constant 4_BYTE_QUAD_INPUT_OUTPUT_FAST_READ_PKG                 : command_type := x"EC";

-- write operations
constant WRITE_ENABLE_PKG                                       : command_type := x"06";
constant WRITE_DISABLE_PKG                                      : command_type := x"04";

-- register operations
constant READ_STATUS_REGISTER_PKG                               : command_type := x"05";
constant WRITE_STATUS_REGISTER_PKG                              : command_type := x"01";
constant READ_LOCK_REGISTER_PKG                                 : command_type := x"E8";
constant WRITE_LOCK_REGISTER_PKG                                : command_type := x"E5";
constant READ_FLAG_STATUS_REGISTER_PKG                          : command_type := x"70";
constant CLEAR_FLAG_STATUS_REGISTER_PKG                         : command_type := x"50";
constant READ_NONVOLATILE_CONFIGURATION_REGISTER_PKG            : command_type := x"B5";
constant WRITE_NONVOLATILE_CONFIGURATION_REGISTER_PKG           : command_type := x"B1";
constant READ_VOLATILE_CONFIGURATION_REGISTER_PKG               : command_type := x"85";
constant WRITE_VOLATILE_CONFIGURATION_REGISTER_PKG              : command_type := x"81";
constant READ_ENHANCED_VOLATILE_CONFIGURATION_REGISTER_PKG      : command_type := x"65";
constant WRITE_ENHANCED_VOLATILE_CONFIGURATION_REGISTER_PKG     : command_type := x"61";
constant READ_EXTENDED_ADDRESS_REGISTER_PKG                     : command_type := x"C8";
constant WRITE_EXTENDED_ADDRESS_REGISTER_PKG                    : command_type := x"C5";

-- program operations
constant PAGE_PROGRAM_PKG                                       : command_type := x"02";
constant 4_BYTE_PAGE_PROGRAM_PKG                                : command_type := x"12";
constant DUAL_INPUT_FAST_PROGRAM_PKG                            : command_type := x"A2";
constant EXTENDED_DUAL_INPUT_FAST_PROGRAM_PKG                   : command_type := x"D2";
constant QUAD_INPUT_FAST_PROGRAM_PKG                            : command_type := x"32";
constant 4_BYTE_QUAD_INPUT_FAST_PROGRAM_PKG                     : command_type := x"34";
constant EXTENDED_QUAD_INPUT_FAST_PROGRAM_PKG                   : command_type := x"38";

-- erase operations
constant SUBSECTOR_ERASE_PKG                                    : command_type := x"20";
constant 4_BYTE_SUBSECTOR_ERASE_PKG                             : command_type := x"21";
constant SECTOR_ERASE_PKG                                       : command_type := x"D8";
constant 4_BYTE_SECTOR_ERASE_PKG                                : command_type := x"DC";
constant BULK_ERASE_PKG                                         : command_type := x"C7";
constant PROGRAM_ERASE_RESUME_PKG                               : command_type := x"7A";
constant PROGRAM_ERASE_SUSPEND_PKG                              : command_type := x"75";

-- one-time programmable operations
constant READ_OTP_ARRAY_PKG                                     : command_type := x"4B";
constant PROGRAM_OTP_ARRAY_PKG                                  : command_type := x"42";

-- 4_byte address mode operations
constant ENTER_4_BYTE_ADDRESS_MODE_PKG                          : command_type := x"B7";
constant EXIT_4_BYTE_ADDRESS_MODE_PKG                           : command_type := x"E9";

-- quad operations
constant ENTER_QUAD_PKG                                         : command_type := x"35";
constant EXIT_QUAD_PKG                                          : command_type := x"F5";

-- deep power-down operations
constant ENTER_DEEP_POWER_DOWN_PKG                              : command_type := x"B9";
constant RELEASE_FROM_DEEP_POWER_DOWN_PKG                       : command_type := x"AB";

end package;