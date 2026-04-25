# Defines the Raylib RayCollision struct
require "ffi"
require_relative "vector_3"

class RayCollision < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :hit, :bool,
	       :distance, :float,
	       :point, Vector3,
	       :normal, Vector3
	def initialize(hit, distance, point, normal)
		self[:hit] = hit
		self[:distance] = distance
		self[:point] = point
		self[:normal] = normal
	end
	# Define the getter methods leveraging library access
	def hit() self[:hit] end
	def distance() self[:distance] end
	def point() self[:point] end
	def normal() self[:normal] end
	# Define the setter methods leveraging library access
	def hit=(new_hit) self[:hit] = new_hit end
	def distance=(new_distance) self[:distance] = new_distance end
	def point=(new_point) self[:point] = new_point end
	def normal=(new_normal) self[:normal] = new_normal end
end