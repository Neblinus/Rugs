# Raylib wrapper for Ruby
# Developed by Neblinus (https://github.com/Neblinus/Rugs)
require "ffi"

### FFI wrappings for Raylib structs and functions
require_relative "Structs/structs"
require_relative "RCore/rcore"

# The library wrapping itself
module Rugs
	extend FFI::Library
	ffi_lib "raylib"
	# Wrap access to the Raylib defining modules
	include RCore
	# Define the wrapper functions with aliasing for Ruby conventions
	attach_function :begin_drawing, :BeginDrawing, [], :void
	attach_function :clear_background, :ClearBackground, [Color.by_value], :void
	attach_function :draw_text, :DrawText, [:string, :int, :int, :int, Color.by_value], :void
	attach_function :end_drawing, :EndDrawing, [], :void
end