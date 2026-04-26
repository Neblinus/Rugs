# Define the Raylib Ray struct
require "ffi"
require_relative "vector_3"

class Ray < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :position, Vector3,
	       :direction, Vector3
	def initialize(position, direction)
		self[:position] = position
		self[:direction] = direction
	end
	# Define the getter methods leveraging library access
	def position() self[:position] end
	def direction() self[:direction] end
	# Define the setter methods leveraging library access
	def position=(new_position) self[:position] = new_position end
	def direction=(new_direction) self[:direction] = new_direction end
end