# Defines the Raylib ModelSkeleton struct
require "ffi"
require_relative "transform"

class ModelSkeleton < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :bone_count, :int,
	       :bones, :pointer,
	       :bind_pose, ModelAnimPose
	def initialize(bone_count, bones, bind_pose)
		self[:bone_count] = bone_count
		self[:bones] = bones
		self[:bind_pose] = bind_pose
	end
	# Define the getter methods leveraging library access
	def bone_count() self[:bone_count] end
	def bones() self[:bones] end
	def bind_pose() self[:bind_pose] end
	# Define the setter methods leveraging library access
	def bone_count=(new_bone_count) self[:bone_count] = new_bone_count end
	def bones=(new_bones) self[:bones] = new_bones end
	def bind_pose=(new_bind_pose) self[:bind_pose] = new_bind_pose end
end