# Defines the Raylib Vector4 struct
require "ffi"

class Vector4 < FFI::Struct
	# Setup the struct layout to be compatible with the library
	layout :x_coordinate, :float,
	       :y_coordinate, :float,
	       :z_coordinate, :float,
	       :w_coordinate, :float
	def initialize(x_coordinate, y_coordinate, z_coordinate, w_coordinate)
		self[:x_coordinate] = x_coordinate
		self[:y_coordinate] = y_coordinate
		self[:z_coordinate] = z_coordinate
		self[:w_coordinate] = w_coordinate
	end
	# Allows accessing of the struct fields as required by the library
	def x() self[:x_coordinate] end
	def y() self[:y_coordinate] end
	def z() self[:z_coordinate] end
	def w() self[:w_coordinate] end
	# Allows modifications to the struct's fields values
	def x=(new_x_coordinate) self[:x_coordinate] = new_x_coordinate end
	def y=(new_y_coordinate) self[:y_coordinate] = new_y_coordinate end
	def z=(new_z_coordinate) self[:z_coordinate] = new_z_coordinate end
	def w=(new_w_coordinate) self[:w_coordinate] = new_w_coordinate end
end