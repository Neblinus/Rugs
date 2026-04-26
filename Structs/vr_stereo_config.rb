# Defines the Raylib VrStereoConfig struct
require "ffi"
require_relative "matrix"

class VrStereoConfig < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :projection, [Matrix, 2],
	       :view_offset, [Matrix, 2],
	       :left_lens_center, [:float, 2],
	       :right_lens_center, [:float, 2],
	       :left_screen_center, [:float, 2],
	       :right_screen_center, [:float, 2],
	       :scale, [:float, 2],
	       :scale_in, [:float, 2]
	def initialize(projection, view_offset, left_lens_center, right_lens_center,
	left_screen_center, right_screen_center, scale, scale_in)
	  self[:projection] = projection
	  self[:view_offset] = view_offset
	  self[:left_lens_center] = left_lens_center
	  self[:right_lens_center] = right_lens_center
	  self[:left_screen_center] = left_screen_center
	  self[:right_screen_center] = right_screen_center
	  self[:scale] = scale
	  self[:scale_in] = scale_in
  end
	# Define the getter methods leveraging library access
	def projection() self[:projection] end
	def view_offset() self[:view_offset] end
	def left_lens_center() self[:left_lens_center] end
	def right_lens_center() self[:right_lens_center] end
	def left_screen_center() self[:left_screen_center] end
	def right_screen_center() self[:right_screen_center] end
	def scale() self[:scale] end
	def scale_in() self[:scale_in] end
	# Define the setter methods leveraging library access
	def projection=(new_projection) self[:projection] = new_projection end
	def view_offset=(new_view_offset) self[:view_offset] = new_view_offset end
	def left_lens_center=(new_left_lens_center)
		self[:left_lens_center] = new_left_lens_center
	end
	def right_lens_center=(new_right_lens_center)
		self[:right_lens_center] = new_right_lens_center
	end
	def left_screen_center=(new_left_screen_center)
		self[:left_screen_center] = new_left_screen_center
	end
	def right_screen_center=(new_right_screen_center)
		self[:right_screen_center] = new_right_screen_center
	end
	def scale=(new_scale) self[:scale] = new_scale end
	def scale_in=(new_scale_in) self[:scale_in] = new_scale_in end
end