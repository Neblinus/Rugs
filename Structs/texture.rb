# Defines the Raylib Texture struct
require "ffi"

class Texture < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :id, :uint,
	       :width, :int,
	       :height, :int,
	       :mip_maps, :int,
	       :format, :int
	def initialize(id, width, height, mip_maps=1, format)
		self[:id] = id
		self[:width] = width
		self[:height] = height
		self[:mip_maps] = mip_maps
		self[:format] = format
	end
	# Define the getter methods leveraging library access
	def id() self[:id] end
	def width() self[:width] end
	def height() self[:height] end
	def mip_maps() self[:mip_maps] end
	def format() self[:format] end
	# Define the setter methods leveraging library access
	def id=(new_id) self[:id] = new_id end
	def width=(new_width) self[:width] = new_width end
	def height=(new_height) self[:height] = new_height end
	def mip_maps=(new_mip_maps) self[:mip_maps] = new_mip_maps end
	def format=(new_format) self[:format] = new_format end
end