# Raylib wrapper for Ruby
require "ffi"

### FFI wrappings for Raylib structs
require_relative "Structs/color"
require_relative "Structs/vector_2"
require_relative "Structs/vector_3"
require_relative "Structs/vector_4"
require_relative "Structs/matrix"
require_relative "Structs/rectangle"

# The library wrapping itself
module Rugs
	extend FFI::Library
	ffi_lib "raylib"
	# Define the wrapper functions with aliasing for Ruby conventions
	attach_function :init_window, :InitWindow, [:int, :int, :string], :void
	attach_function :window_should_close?, :WindowShouldClose, [], :bool
	attach_function :begin_drawing, :BeginDrawing, [], :void
	attach_function :clear_background, :ClearBackground, [Color.by_value], :void
	attach_function :draw_text, :DrawText, [:string, :int, :int, :int, Color.by_value],
	:void
	attach_function :end_drawing, :EndDrawing, [], :void
	attach_function :set_target_fps, :SetTargetFPS, [:int], :void
end