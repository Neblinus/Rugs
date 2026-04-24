# Defines the Raylib Vector3 struct
require "ffi"

class Vector3 < FFI::Struct
	# Defines the struct conforming to the library's original one
	layout :x_axis, :float,
	       :y_axis, :float,
	       :z_axis, :float
	def initialize(x_axis, y_axis, z_axis)
		self[:x_axis] = x_axis
		self[:y_axis] = y_axis
		self[:z_axis] = z_axis
	end
	# Allows for access to the struct fields as required by the library
	def x() self[:x_axis] end
	def y() self[:y_axis] end
	def z() self[:z_axis] end
	# Allows for modification of the struct fields values
	def x=(new_x_axis) self[:x_axis] = new_x_axis end
	def y=(new_y_axis) self[:y_axis] = new_y_axis end
	def z=(new_z_axis) self[:z_axis] = new_z_axis end
end