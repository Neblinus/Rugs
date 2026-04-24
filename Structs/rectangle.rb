# Defines the Raylib Rectangle struct
require "ffi"

class Rectangle < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :x, :float,
	       :y, :float,
	       :width, :float,
	       :height, :float
	def initialize(x, y, width, height)
		self[:x] = x
		self[:y] = y
		self[:width] = width
		self[:height] = height
	end
	# Define the getter methods leveraging library access
	def x() self[:x] end
	def y() self[:y] end
	def width() self[:width] end
	def height() self[:height] end
	# Define the setter methods leveraging library access
	def x=(new_x) self[:x] = new_x end
	def y=(new_y) self[:y] = new_y end
	def width=(new_width) self[:width] = new_width end
	def height=(new_height) self[:height] = new_height end
end