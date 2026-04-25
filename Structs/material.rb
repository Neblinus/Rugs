# Defines the Raylib Material struct
require "ffi"
require_relative "shader"

class Material < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :shader, Shader,
	       :maps, :pointer,
	       :params, [:float, 4]
	def initialize(shader, maps, params)
		self[:shader] = shader
		self[:maps] = maps
		self[:params] = params
	end
	# Define the getter methods leveraging library access
	def shader() self[:shader] end
	def maps() self[:maps] end
	def params() self[:params] end
	# Define the setter methods leveraging library access
	def shader=(new_shader) self[:shader] = new_shader end
	def maps=(new_maps) self[:maps] = new_maps end
	def params=(new_params) self[:params] = new_params end
end