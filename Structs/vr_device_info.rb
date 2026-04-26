# Defines the Raylib VrDeviceInfo struct
require "ffi"

class VrDeviceInfo < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :h_resolution, :int,
	       :v_resolution, :int,
	       :h_screen_size, :float,
	       :v_screen_size, :float,
	       :eye_to_screen_distance, :float,
	       :lens_separation_distance, :float,
	       :interpupillary_distance, :float,
	       :lens_distortion_values, [:float, 4],
	       :chroma_Ab_correction, [:float, 4]
	def initialize(h_resolution, v_resolution, h_screen_size, v_screen_size,
	eye_to_screen_distance, lens_separation_distance, interpupillary_distance,
	lens_distortion_values, chroma_Ab_correction)
	  self[:h_resolution] = h_resolution
	  self[:v_resolution] = v_resolution
	  self[:h_screen_size] = h_screen_size
	  self[:v_screen_size] = v_screen_size
	  self[:eye_to_screen_distance] = eye_to_screen_distance
	  self[:lens_separation_distance] = lens_separation_distance
	  self[:interpupillary_distance] = interpupillary_distance
	  self[:lens_distortion_values] = lens_distortion_values
	  self[:chroma_Ab_correction] = chroma_Ab_correction
  end
	# Define the getter methods leveraging library access
	def h_resolution() self[:h_resolution] end
	def v_resolution() self[:v_resolution] end
	def h_screen_size() self[:h_screen_size] end
	def v_screen_size() self[:v_resolution] end
	def eye_to_screen_distance() self[:eye_to_screen_distance] end
	def lens_separation_distance() self[:lens_separation_distance] end
	def interpupillary_distance() self[:interpupillary_distance] end
	def lens_distortion_values() self[:lens_distortion_values] end
	def chroma_Ab_correction() self[:chroma_Ab_correction] end
	# Define the setter methods leveraging library access
	def h_resolution=(new_h_resolution) self[:h_resolution] = new_h_resolution end
	def v_resolution=(new_v_resolution) self[:v_resolution] = new_v_resolution end
	def h_screen_size=(new_h_screen_size) self[:h_screen_size] = new_h_screen_size end
	def v_screen_size=(new_v_screen_size) self[:v_resolution] = new_v_screen_size end
	def eye_to_screen_distance=(new_eye_to_screen_distance)
		self[:eye_to_screen_distance] = new_eye_to_screen_distance
	end
	def lens_separation_distance=(new_lens_separation_distance)
		self[:lens_separation_distance] = new_lens_separation_distance
	end
	def interpupillary_distance=(new_interpupillary_distance)
		self[:interpupillary_distance] = new_interpupillary_distance
	end
	def lens_distortion_values=(new_lens_distortion_values)
		self[:lens_distortion_values] = new_lens_distortion_values
	end
	def chroma_Ab_correction=(new_chroma_Ab_correction)
		self[:chroma_Ab_correction] = new_chroma_Ab_correction
	end
end