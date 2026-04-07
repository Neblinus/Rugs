# Defines the Raylib Vector2 struct
require "ffi"

class Vector2 < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :x_coordinate, :float,
	       :y_coordinate, :float
	def initialize(x_coordinate, y_coordinate)
		self[:x_coordinate] = x_coordinate
		self[:y_coordinate] = y_coordinate
	end
	# Provides access to the fields as needed by the library
	def x() self[:x_coordinate] end
	def y() self[:y_coordinate] end
	# Allows the Vector2 coordinates to be changed safely
	def x=(new_x_coordinate)
		if new_x_coordinate.is_a?(Numeric) then self[:x_coordinate] = new_x_coordinate else
		raise TypeError.new("Expected a Numeric object for the Vector2 X-coordinate.") end
	end
	def y=(new_y_coordinate)
		if new_y_coordinate.is_a?(Numeric) then self[:y_coordinate] = new_y_coordinate else
		raise TypeError.new("Expected a Numeric object for the Vector2 Y-coordinate.") end
	end
end