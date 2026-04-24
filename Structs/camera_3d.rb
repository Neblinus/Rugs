# Defines the Raylib Camera3D struct
require "ffi"
require_relative "vector_3"

class Camera3D < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :position, Vector3,
	       :target, Vector3,
	       :up, Vector3,
	       :fovy, :float,
	       :projection, :int
	def initialize(position, target, up, fovy, projection)
		self[:position] = position
		self[:target] = target
		self[:up] = up
		self[:fovy] = fovy
		self[:projection] = projection
	end
	# Define the getter methods leveraging library access
	def position() self[:position] end
	def target() self[:target] end
	def up() self[:up] end
	def fovy() self[:fovy] end
	def projection() self[:projection] end
	# Define the setter methods leveraging library access
	def position=(new_position) self[:position] = new_position end
	def target=(new_target) self[:target] = new_target end
	def up=(new_up) self[:up] = new_up end
	def fovy=(new_fovy) self[:fovy] = new_fovy end
	def projection=(new_projection) self[:projection] = new_projection end
end

# Camera is the same type as Camera3D
Camera = Camera3D