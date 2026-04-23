# Defines the Raylib NPatchInfo struct
require "ffi"
require_relative "rectangle"

class NPatchInfo < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :source, Rectangle.by_value,
	       :left, :int,
	       :top, :int,
	       :right, :int,
	       :bottom, :int,
	       :layout, :int
	def initialize(source, left, top, right, bottom, layout)
		self[:source] = source
		self[:left] = left
		self[:top] = top
		self[:right] = right
		self[:bottom] = bottom
		self[:layout] = layout
	end
	# Define the getter methods leveraging library access
	def source() self[:source] end
	def left() self[:left] end
	def top() self[:top] end
	def right() self[:right] end
	def bottom() self[:bottom] end
	def layout() self[:layout] end
	# Define the setter methods leveraging library access
	def source=(new_source) self[:source] = new_source end
	def left=(new_left) self[:left] = new_left end
	def top=(new_top) self[:top] = new_top end
	def right=(new_right) self[:right] = new_right end
	def bottom=(new_bottom) self[:bottom] = new_bottom end
	def layout=(new_layout) self[:layout] = new_layout end
end