# Defines the Raylib GlyphInfo struct
require "ffi"
require_relative "image"

class GlyphInfo < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :value, :int,
	       :offset_x, :int,
	       :offset_y, :int,
	       :advance_x, :int,
	       :image, Image
	def initialize(value, offset_x, offset_y, advance_x, image)
		self[:value] = value
		self[:offset_x] = offset_x
		self[:offset_y] = offset_y
		self[:advance_x] = advance_x
		self[:image] = image
	end
	# Define the getter methods leveraging library access
	def value() self[:value] end
	def offset_x() self[:offset_x] end
	def offset_y() self[:offset_y] end
	def advance_x() self[:advance_x] end
	def image() self[:image] end
	# Define the setter methods leveraging library access
	def value=(new_value) self[:value] = new_value end
	def offset_x=(new_offset_x) self[:offset_x] = new_offset_x end
	def offset_y=(new_offset_y) self[:offset_y] = new_offset_y end
	def advance_x=(new_advance_x) self[:advance_x] = new_advance_x end
	def image=(new_image) self[:image] = new_image end
end