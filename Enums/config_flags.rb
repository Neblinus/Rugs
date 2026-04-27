# Define the Raylib ConfigFlags enum (as a module with constants)
require "ffi"

module ConfigFlags
  # Basic FFI setup
  extend FFI::Library
  ffi_lib "raylib"
  # Define the enum constants
  enum :ConfigFlags,
  [
	  :FLAG_VSYNC_HINT, 0x00000040,
    :FLAG_FULLSCREEN_MODE, 0x00000002,
    :FLAG_WINDOW_RESIZABLE, 0x00000004,
    :FLAG_WINDOW_UNDECORATED, 0x00000008,
    :FLAG_WINDOW_HIDDEN, 0x00000080,
    :FLAG_WINDOW_MINIMIZED, 0x00000200,
    :FLAG_WINDOW_MAXIMIZED, 0x00000400,
    :FLAG_WINDOW_UNFOCUSED, 0x00000800,
    :FLAG_WINDOW_TOPMOST, 0x00001000,
    :FLAG_WINDOW_ALWAYS_RUN, 0x00000100,
    :FLAG_WINDOW_TRANSPARENT, 0x00000010,
    :FLAG_WINDOW_HIGHDPI, 0x00002000,
    :FLAG_WINDOW_MOUSE_PASSTHROUGH, 0x00004000,
    :FLAG_BORDERLESS_WINDOWED_MODE, 0x00008000,
    :FLAG_MSAA_4X_HINT, 0x00000020,
    :FLAG_INTERLACED_HINT, 0x00010000
  ]
  # Allows use of the enums as virtual constants
  def ConfigFlags.const_missing(target_symbol)
    # Use FFI specifics to get the constant value, or raise an exception on error
    value = enum_value(target_symbol)
    return super unless value
    # On success, return the constant value
    value
  end
end