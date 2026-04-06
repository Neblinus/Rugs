# Raylib Wrapper for Ruby
require "ffi"

module Rawby
	# Color class definition for FFI wrapping
  require_relative "raw_color"
  # Basic original library setup
	extend FFI::Library
	ffi_lib "raylib"
	# Define the wrapper functions with aliasing for Ruby conventions
	attach_function :init_window, :InitWindow, [:int, :int, :string], :void
	attach_function :window_should_close, :WindowShouldClose, [], :bool
	attach_function :begin_drawing, :BeginDrawing, [], :void
	attach_function :clear_background, :ClearBackground, [Color], :void
	attach_function :draw_text, :DrawText, [:string, :int, :int, :int, Color], :void
	attach_function :end_drawing, :EndDrawing, [], :void
	attach_function :set_target_fps, :SetTargetFPS, [:int], :void
end