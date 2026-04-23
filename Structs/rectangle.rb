# Defines the Raylib Rectangle struct
require "ffi"

class Rectangle < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :x_axis, :float,
	       :y_axis, :float,
	       :width, :float,
	       :height, :float
	def initialize(x_axis, y_axis, width, height)
		self[:x_axis] = x_axis
		self[:y_axis] = y_axis
		self[:width] = width
		self[:height] = height
	end
	# Define the getter methods leveraging library access
	def x() self[:x_axis] end
	def y() self[:y_axis] end
	def width() self[:width] end
	def height() self[:height] end
	# Define the setter methods leveraging library access
	def x=(new_x) self[:x_axis] = new_x end
	def y=(new_y) self[:y_axis] = new_y end
	def width=(new_width) self[:width] = new_width end
	def height=(new_height) self[:height] = new_height end
end