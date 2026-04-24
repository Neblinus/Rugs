# Defines the Raylib Camera2D struct
require "ffi"
require_relative "vector_2"

class Camera2D < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :offset, Vector2,
	       :target, Vector2,
	       :rotation, :float,
	       :zoom, :float
	def initialize(offset, target, rotation, zoom)
		self[:offset] = offset
		self[:target] = target
		self[:rotation] = rotation
		self[:zoom] = zoom
	end
	# Define the getter methods leveraging library access
	def offset() self[:offset] end
	def target() self[:target] end
	def rotation() self[:rotation] end
	def zoom() self[:zoom] end
	# Define the setter methods leveraging library access
	def offset=(new_offset) self[:offset] = new_offset end
	def target=(new_target) self[:target] = new_target end
	def rotation=(new_rotation) self[:rotation] = new_rotation end
	def zoom=(new_zoom) self[:zoom] = new_zoom end
end