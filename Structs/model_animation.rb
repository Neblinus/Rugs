# Defines the Raylib ModelAnimation struct
require "ffi"

class ModelAnimation < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :name, [:char, 32],
	       :bone_count, :int,
	       :key_frame_count, :int,
	       :key_frame_poses, :pointer
	def initialize(name, bone_count, key_frame_count, key_frame_poses)
		self[:name] = name
		self[:bone_count] = bone_count
		self[:key_frame_count] = key_frame_count
		self[:key_frame_poses] = key_frame_poses
	end
	# Define the getter methods leveraging library access
	def name() self[:name] end
	def bone_count() self[:bone_count] end
	def key_frame_count() self[:key_frame_count] end
	def key_frame_poses() self[:key_frame_poses] end
	# Define the setter methods leveraging library access
	def name=(new_name) self[:name] = new_name end
	def bone_count=(new_bone_count) self[:bone_count] = new_bone_count end
	def key_frame_count=(new_frame_count) self[:key_frame_count] = new_key_frame_count end
	def key_frame_poses=(new_frame_poses) self[:key_frame_poses] = new_key_frame_poses end
end