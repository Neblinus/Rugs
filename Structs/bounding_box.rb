# Define the Raylib BoundingBox struct
require "ffi"
require_relative "vector_3"

class BoundingBox < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :min, Vector3,
	       :max, Vector3
	def initialize(min, max)
		self[:min] = min
		self[:max] = max
	end
	# Define the getter methods leveraging library access
	def min() self[:min] end
	def max() self[:max] end
	# Define the setter methods leveraging library access
	def min=(new_min) self[:min] = new_min end
	def max=(new_max) self[:max] = new_max end
end