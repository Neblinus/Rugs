# Defines the Raylib Mesh struct
require "ffi"

class Mesh < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :vertex_count, :int,
	       :triangle_count, :int,
	       :vertices, :pointer,
	       :tex_coords, :pointer,
	       :tex_coords_2, :pointer,
	       :normals, :pointer,
	       :tangents, :pointer,
	       :colors, :pointer,
	       :indices, :pointer,
	       :bone_count, :int,
	       :bone_indices, :pointer,
	       :bone_weights, :pointer,
	       :anim_vertices, :pointer,
	       :anim_normals, :pointer,
	       :vao_id, :uint,
	       :vbo_id, :pointer
	def initialize(vertex_count, triangle_count, vertices, tex_coords, tex_coords_2,
	normals, tangents, colors, indices, bone_count, bone_indices, bone_weights,
	anim_vertices, anim_normals, vao_id, vbo_id)
	  self[:vertex_count] = vertex_count
	  self[:triangle_count] = triangle_count
	  self[:vertices] = vertices
	  self[:tex_coords] = tex_coords
	  self[:tex_coords_2] = tex_coords_2
	  self[:normals] = normals
	  self[:tangents] = tangents
	  self[:colors] = colors
	  self[:indices] = indices
	  self[:bone_count] = bone_count
	  self[:bone_indices] = bone_indices
	  self[:bone_weights] = bone_weights
	  self[:anim_vertices] = anim_vertices
	  self[:anim_normals] = anim_normals
	  self[:vao_id] = vao_id
	  self[:vbo_id] = vbo_id
  end
	# Define the getter methods leveraging library access
	def vertex_count() self[:vertex_count] end
	def triangle_count() self[:triangle_count] end
	def vertices() self[:vertices] end
	def tex_coords() self[:tex_coords] end
	def tex_coords_2() self[:tex_coords_2] end
	def normals() self[:normals] end
	def tangents() self[:tangents] end
	def colors() self[:colors] end
	def indices() self[:indices] end
	def bone_count() self[:bone_count] end
	def bone_indices() self[:bone_indices] end
	def bone_weights() self[:bone_weights] end
	def anim_vertices() self[:anim_vertices] end
	def anim_normals() self[:anim_normals] end
	def vao_id() self[:vao_id] end
	def vbo_id() self[:vbo_id] end
	# Define the setter methods leveraging library access
	def vertex_count=(new_vertex_count) self[:vertex_count] = new_vertex_count end
	def triangle_count=(new_triangle_count) self[:triangle_count] = new_triangle_count end
	def vertices=(new_vertices) self[:vertices] = new_vertices end
	def tex_coords=(new_tex_coords) self[:tex_coords] = new_tex_coords end
	def tex_coords_2=(new_tex_coords_2) self[:tex_coords_2] = new_tex_coords_2 end
	def normals=(new_normals) self[:normals] = new_normals end
	def tangents=(new_tangents) self[:tangents] = new_tangents end
	def colors=(new_colors) self[:colors] = new_colors end
	def indices=(new_indices) self[:indices] = new_indices end
	def bone_count=(new_bone_count) self[:bone_count] = new_bone_count end
	def bone_indices=(new_bone_indices) self[:bone_indices] = new_bone_indices end
	def bone_weights=(new_bone_weights) self[:bone_weights] = new_bone_weights end
	def anim_vertices=(new_anim_vertices) self[:anim_vertices] = new_anim_vertices end
	def anim_normals=(new_anim_normals) self[:anim_normals] = new_anim_normals end
	def vao_id=(new_vao_id) self[:vao_id] = new_vao_id end
	def vbo_id=(new_vbo_id) self[:vbo_id] = new_vbo_id end
end