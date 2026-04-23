# Defines the Raylib RenderTexture struct
require "ffi"
require_relative "texture"

class RenderTexture < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :id, :uint,
	       :texture, Texture.by_value,
	       :depth, Texture.by_value
	def initialize(id, texture, depth)
		self[:id] = id
		self[:texture] = texture
		self[:depth] = depth
	end
	# Define the getter methods leveraging library access
	def id() self[:id] end
	def texture() self[:texture] end
	def depth() self[:depth] end
	# Define the setter methods leveraging library access
	def id=(new_id) self[:id] = new_id end
	def texture=(new_texture) self[:texture] = new_texture end
	def depth=(new_depth) self[:depth] = new_depth end
end