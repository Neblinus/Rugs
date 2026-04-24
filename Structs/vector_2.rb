# Defines the Raylib Vector2 struct
require "ffi"

class Vector2 < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :x_axis, :float,
	       :y_axis, :float
	def initialize(x_axis, y_axis)
		self[:x_axis] = x_axis
		self[:y_axis] = y_axis
	end
	# Provides access to the fields as needed by the library
	def x() self[:x_axis] end
	def y() self[:y_axis] end
	# Allows the Vector2 coordinates to be changed safely
	def x=(new_x_axis) self[:x_axis] = new_x_axis end
	def y=(new_y_axis) self[:y_axis] = new_y_axis end
end