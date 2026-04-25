# Define the Raylib Model struct
require "ffi"
require_relative "model_skeleton"
require_relative "transform"
require_relative "matrix"

class Model < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :transform, Matrix,
	       :mesh_count, :int,
	       :material_count, :int,
	       :meshes, :pointer,
	       :materials, :pointer,
	       :mesh_material, :pointer,
	       :skeleton, ModelSkeleton,
	       :current_pose, ModelAnimPose,
	       :bone_matrices, :pointer
	def initialize(transform, mesh_count, material_count, meshes, materials, mesh_material,
	skeleton, current_pose, bone_matrices)
	  self[:transform] = transform
	  self[:mesh_count] = mesh_count
	  self[:material_count] = material_count
	  self[:meshes] = meshes
	  self[:materials] = materials
	  self[:mesh_material] = mesh_material
	  self[:skeleton] = skeleton
	  self[:current_pose] = current_pose
	  self[:bone_matrices] = bone_matrices
  end
	# Define the getter methods leveraging library access
	def transform() self[:transform] end
	def mesh_count() self[:mesh_count] end
	def material_count() self[:material_count] end
	def meshes() self[:meshes] end
	def materials() self[:materials] end
	def mesh_material() self[:mesh_material] end
	def skeleton() self[:skeleton] end
	def current_pose() self[:current_pose] end
	def bone_matrices() self[:bone_matrices] end
	# Define the setter methods leveraging library access
	def transform=(new_transform) self[:transform] = new_transform end
	def mesh_count=(new_mesh_count) self[:mesh_count] = new_mesh_count end
	def material_count=(new_material_count) self[:material_count] = new_material_count end
	def meshes=(new_meshes) self[:meshes] = new_meshes end
	def materials=(new_materials) self[:materials] = new_materials end
	def mesh_material=(new_mesh_material) self[:mesh_material] = new_mesh_material end
	def skeleton=(new_skeleton) self[:skeleton] = new_skeleton end
	def current_pose=(new_current_pose) self[:current_pose] = new_current_pose end
	def bone_matrices=(new_bone_matrices) self[:bone_matrices] = new_bone_matrices end
end