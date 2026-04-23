# Defines the Raylib Texture struct
require "ffi"

class Texture < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :id, :uint,
	       :width, :int,
	       :height, :int,
	       :mipmaps, :int,
	       :format, :int
	def initialize(id, width, height, mipmaps=1, format)
		self[:id] = id
		self[:width] = width
		self[:height] = height
		self[:mipmaps] = mipmaps
		self[:format] = format
	end
	# Define the getter methods leveraging library access
	def id() self[:id] end
	def width() self[:width] end
	def height() self[:height] end
	def mipmaps() self[:mipmaps] end
	def format() self[:format] end
	# Define the setter methods leveraging library access
	def id=(new_id) self[:id] = new_id end
	def width=(new_width) self[:width] = new_width end
	def height=(new_height) self[:height] = new_height end
	def mipmaps=(new_mipmaps) self[:mipmaps] = new_mipmaps end
	def format=(new_format) self[:format] = new_format end
end