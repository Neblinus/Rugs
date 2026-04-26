# Define the Raylib AudioStream struct
require "ffi"

class AudioStream < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :buffer, :pointer,
	       :processor, :pointer,
	       :sample_rate, :uint,
	       :sample_size, :uint,
	       :channels, :uint
	def initialize(buffer, processor, sample_rate, sample_size, channels)
		self[:buffer] = buffer
		self[:processor] = processor
		self[:sample_rate] = sample_rate
		self[:sample_size] = sample_size
		self[:channels] = channels
	end
	# Define the getter methods leveraging library access
	def buffer() self[:buffer] end
	def processor() self[:processor] end
	def sample_rate() self[:sample_rate] end
	def sample_size() self[:sample_size] end
	def channels() self[:channels] end
	# Define the setter methods leveraging library access
	def buffer=(new_buffer) self[:buffer] = new_buffer end
	def processor=(new_processor) self[:processor] = new_processor end
	def sample_rate=(new_sample_rate) self[:sample_rate] = new_sample_rate end
	def sample_size=(new_sample_size) self[:sample_size] = new_sample_size end
	def channels=(new_channels) self[:channels] = new_channels end
end