# Defines the Raylib Vector3 struct
require "ffi"

class Vector3 < FFI::Struct
	# Defines the struct conforming to the library's original one
	layout :x_coordinate, :float,
	       :y_coordinate, :float,
	       :z_coordinate, :float
	def initialize(x_coordinate, y_coordinate, z_coordinate)
		self[:x_coordinate] = x_coordinate
		self[:y_coordinate] = y_coordinate
		self[:z_coordinate] = z_coordinate
	end
	# Allows for access to the struct fields as required by the library
	def x() self[:x_coordinate] end
	def y() self[:y_coordinate] end
	def z() self[:z_coordinate] end
	# Allows for modification of the struct fields values
	def x=(new_x_coordinate) self[:x_coordinate] = new_x_coordinate end
	def y=(new_y_coordinate) self[:y_coordinate] = new_y_coordinate end
	def z=(new_z_coordinate) self[:z_coordinate] = new_z_coordinate end
end