# Defines the Raylib Wave struct
require "ffi"

class Wave < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :frame_count, :uint,
	       :sample_rate, :uint,
	       :sample_size, :uint,
	       :channels, :uint,
	       :data, :pointer
	def initialize(frame_count, sample_rate, sample_size, channels, data)
		self[:frame_count] = frame_count
		self[:sample_rate] = sample_rate
		self[:sample_size] = sample_size
		self[:channels] = channels
		self[:data] = data
	end
	# Define the getter methods leveraging library access
	def frame_count() self[:frame_count] end
	def sample_rate() self[:sample_rate] end
	def sample_size() self[:sample_size] end
	def channels() self[:channels] end
	def data() self[:data] end
	# Define the setter methods leveraging library access
	def frame_count=(new_frame_count) self[:frame_count] = new_frame_count end
	def sample_rate=(new_sample_rate) self[:sample_rate] = new_sample_rate end
	def sample_size=(new_sample_size) self[:sample_size] = new_sample_size end
	def channels=(new_channels) self[:channels] = new_channels end
	def data=(new_data) self[:data] = new_data end
end