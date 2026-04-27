# Define the Raylib TraceLogLevel enum (as a module with constants)
require "ffi"

module TraceLogLevel
  # Basic FFI setup
  extend FFI::Library
  ffi_lib "raylib"
  # Define the enum constants
  enum :TraceLogLevel,
  [
    LOG_ALL = 0,
    LOG_TRACE = 1,
    LOG_DEBUG = 2,
    LOG_INFO = 3,
    LOG_WARNING = 4,
    LOG_ERROR = 5,
    LOG_FATAL = 6,
    LOG_NONE = -1
  ]
  # Allows use of the enums as virtual constants
  def TraceLogLevel.const_missing(target_symbol)
    # Use FFI specifics to get the constant value, or raise an exception on error
    value = enum_value(target_symbol)
    return super unless value
    # On success, return the constant value
    value
  end
end