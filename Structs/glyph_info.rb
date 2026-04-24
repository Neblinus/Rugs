# Defines the Raylib GlyphInfo struct
require "ffi"
require_relative "image"

class GlyphInfo < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :value, :int,
	       :offsetX, :int,
	       :offsetY, :int,
	       :advanceX, :int,
	       :image, Image.by_value
	def initialize(value, offsetX, offsetY, advanceX, image)
		self[:value] = value
		self[:offsetX] = offsetX
		self[:offsetY] = offsetY
		self[:advanceX] = advanceX
		self[:image] = image
	end
	# Define the getter methods leveraging library access
	def value() self[:value] end
	def offsetX() self[:offsetX] end
	def offsetY() self[:offsetY] end
	def advanceX() self[:advanceX] end
	def image() self[:image] end
	# Define the setter methods leveraging library access
	def value=(new_value) self[:value] = new_value end
	def offsetX=(new_offset_x) self[:offsetX] = new_offset_x end
	def offsetY=(new_offset_y) self[:offsetY] = new_offset_y end
	def advanceX=(new_advance_x) self[:advanceX] = new_advance_x end
	def image=(new_image) self[:image] = new_image end
end