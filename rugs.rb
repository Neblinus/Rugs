# Raylib wrapper for Ruby
# Developed by Neblinus (https://github.com/Neblinus/Rugs)
require "ffi"

### FFI wrappings for Raylib structs and functions
require_relative "Structs/structs"

# The library wrapping itself
module Rugs
	extend FFI::Library
	ffi_lib "raylib"
	# Define the wrapper functions with aliasing for Ruby conventions
	attach_function :init_window, :InitWindow, [:int, :int, :string], :void
	attach_function :window_should_close?, :WindowShouldClose, [], :bool
	attach_function :begin_drawing, :BeginDrawing, [], :void
	attach_function :clear_background, :ClearBackground, [Color], :void
	attach_function :draw_text, :DrawText, [:string, :int, :int, :int, Color], :void
	attach_function :end_drawing, :EndDrawing, [], :void
	attach_function :close_window, :CloseWindow, [], :void
end
