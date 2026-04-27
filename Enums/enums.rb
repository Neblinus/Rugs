# Group the Raylib enums together
require_relative "config_flags"
require_relative "trace_log_level"
require_relative "keyboard_key"

module Enums
	include ConfigFlags
	include TraceLogLevel
	include KeyboardKey
end