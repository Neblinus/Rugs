# Group the Raylib enums together
require_relative "config_flags"
require_relative "trace_log_level"

module Enums
	include ConfigFlags
	include TraceLogLevel
end