# Define the Raylib Transform struct
require "ffi"
require_relative "vector_3"
require_relative "vector_4"

class Transform < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :translation, Vector3,
	       :rotation, Quaternion,
	       :scale, Vector3
	def initialize(translation, rotation, scale)
		self[:translation] = translation
		self[:rotation] = rotation
		self[:scale] = scale
	end
	# Define the getter methods leveraging library access
	def translation() self[:translation] end
	def rotation() self[:rotation] end
	def scale() self[:scale] end
	# Define the setter methods leveraging library access
	def translation=(new_translation) self[:translation] = new_translation end
	def rotation=(new_rotation) self[:rotation] = new_rotation end
	def scale=(new_scale) self[:scale] = new_scale end
end

# Set the ModelAnimPose type
ModelAnimPose = [:pointer, Transform]