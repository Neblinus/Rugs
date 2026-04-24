# Defines the Raylib Vector4 struct
require "ffi"

class Vector4 < FFI::Struct
	# Setup the struct layout to be compatible with the library
	layout :x_axis, :float,
	       :y_axis, :float,
	       :z_axis, :float,
	       :w_axis, :float
	def initialize(x_axis, y_axis, z_axis, w_axis)
		self[:x_axis] = x_axis
		self[:y_axis] = y_axis
		self[:z_axis] = z_axis
		self[:w_axis] = w_axis
	end
	# Allows accessing of the struct fields as required by the library
	def x() self[:x_axis] end
	def y() self[:y_axis] end
	def z() self[:z_axis] end
	def w() self[:w_axis] end
	# Allows modifications to the struct's fields values
	def x=(new_x_axis) self[:x_axis] = new_x_axis end
	def y=(new_y_axis) self[:y_axis] = new_y_axis end
	def z=(new_z_axis) self[:z_axis] = new_z_axis end
	def w=(new_w_axis) self[:w_axis] = new_w_axis end
end