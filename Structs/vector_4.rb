# Defines the Raylib Vector4 struct
require "ffi"

class Vector4 < FFI::Struct
	# Setup the struct layout to be compatible with the library
	layout :x, :float,
	       :y, :float,
	       :z, :float,
	       :w, :float
	def initialize(x, y, z, w)
		self[:x] = x
		self[:y] = y
		self[:z] = z
		self[:w] = w
	end
	# Allows accessing of the struct fields as required by the library
	def x() self[:x] end
	def y() self[:y] end
	def z() self[:z] end
	def w() self[:w] end
	# Allows modifications to the struct's fields values
	def x=(new_x) self[:x] = new_x end
	def y=(new_y) self[:y] = new_y end
	def z=(new_z) self[:z] = new_z end
	def w=(new_w) self[:w] = new_w end
end

# Quaternion is the same type as Vector4
Quaternion = Vector4