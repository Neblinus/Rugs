# Defines the Raylib Vector3 struct
require "ffi"

class Vector3 < FFI::Struct
	# Defines the struct conforming to the library's original one
	layout :x, :float,
	       :y, :float,
	       :z, :float
	def initialize(x, y, z)
		self[:x] = x
		self[:y] = y
		self[:z] = z
	end
	# Allows for access to the struct fields as required by the library
	def x() self[:x] end
	def y() self[:y] end
	def z() self[:z] end
	# Allows for modification of the struct fields values
	def x=(new_x) self[:x] = new_x end
	def y=(new_y) self[:y] = new_y end
	def z=(new_z) self[:z] = new_z end
end