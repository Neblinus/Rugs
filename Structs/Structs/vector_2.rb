# Defines the Raylib Vector2 struct
require "ffi"

class Vector2 < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :x, :float,
	       :y, :float
	def initialize(x, y)
		self[:x] = x
		self[:y] = y
	end
	# Provides access to the fields as needed by the library
	def x() self[:x] end
	def y() self[:y] end
	# Allows the Vector2 coordinates to be changed safely
	def x=(new_x) self[:x] = new_x end
	def y=(new_y) self[:y] = new_y end
end