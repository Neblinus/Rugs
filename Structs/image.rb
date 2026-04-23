# Define the Raylib Image struct
require "ffi"

class Image < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :data, :pointer,
	       :width, :int,
	       :height, :int,
	       :mipmaps, :int,
	       :format, :int
	def initialize(data, width, height, mipmaps=1, format)
		self[:data] = data
		self[:width] = width
		self[:height] = height
		self[:mipmaps] = mipmaps
		self[:format] = format
	end
	# Define the getter methods leveraging library access
	def data() self[:data] end
	def width() self[:width] end
	def height() self[:height] end
	def mipmaps() self[:mipmaps] end
	def format() self[:format] end
	# Define the setter methods leveraging library access
	def data=(new_data) self[:data] = new_data end
	def width=(new_width) self[:width] = new_width end
	def height=(new_height) self[:height] = new_height end
	def mipmaps=(new_mipmaps) self[:mipmaps] = new_mipmaps end
	def format=(new_format) self[:format] = new_format end
end