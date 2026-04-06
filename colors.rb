# Define the Raylib Color struct
require "ffi"
require 'ffi/tools/const_generator'

# Allows for FFI struct wrapping
class Color < FFI::Struct
	# Define the layout of the struct as per the orginal library
	layout :r, :uchar,
		     :g, :uchar,
		     :b, :uchar,
		     :a, :uchar
	# Parse the original library constant definitions
  colors = FFI::ConstGenerator.new("raylib") do |gen|
	  gen.const(:LIGHTGRAY); gen.const(:GRAY); gen.const(:DARKGRAY); gen.const(:YELLOW)
	  gen.const(:GOLD); gen.const(:ORANGE); gen.const(:PINK); gen.const(:RED)
	  gen.const(:MAROON); gen.const(:GREEN); gen.const(:LIME); gen.const(:DARKGREEN)
	  gen.const(:SKYBLUE);gen.const(:BLUE); gen.const(:DARKBLUE); gen.const(:PURPLE)
	  gen.const(:VIOLET); gen.const(:DARKPURPLE); gen.const(:BEIGE); gen.const(:BROWN)
	  gen.const(:DARKBROWN); gen.const(:WHITE); gen.const(:BLACK); gen.const(:BLANK)
	  gen.const(:MAGENTA); gen.const(:RAYWHITE)
  end
  # Define the constants on the struct itself
  LIGHT_GRAY = colors["LIGHTGRAY"]; GRAY = colors["GRAY"]; DARK_GRAY = colors["DARKGRAY"]
  YELLOW = colors["YELLOW"]; GOLD = colors["GOLD"]; ORANGE = colors["ORANGE"]
  PINK = colors["PINK"]; RED = colors["RED"]; MAROON = colors["MAROON"]
  GREEN = colors["GREEN"]; LIME = colors["LIME"]; DARK_GREEN = colors["DARKGREEN"]
  SKY_BLUE = colors["SKYBLUE"]; BLUE = colors["BLUE"]; DARK_BLUE = colors["DARKBLUE"]
  PURPLE = colors["PURPLE"]; VIOLET = colors["VIOLET"]; DARK_PURPLE = colors["DARKPURPLE"]
  BEIGE = colors["BEIGE"]; BROWN = colors["BROWN"]; DARK_BROWN = colors["DARKBROWN"]
  WHITE = colors["WHITE"]; BLACK = colors["BLACK"]; BLANK = colors["BLANK"]
  MAGENTA = colors["MAGENTA"]; RAY_WHITE = colors["RAYWHITE"]
end