# Define the Raylib Music struct
require "ffi"
require_relative "audio_stream"

class Music < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :stream, AudioStream,
	       :frame_count, :uint,
	       :looping, :bool,
	       :ctx_type, :int,
	       :ctx_data, :pointer
	def initialize(stream, frame_count, looping, ctx_type, ctx_data)
		self[:stream] = stream
		self[:frame_count] = frame_count
		self[:looping] = looping
		self[:ctx_type] = ctx_type
		self[:ctx_data] = ctx_data
	end
	# Define the getter methods leveraging library access
	def stream() self[:stream] end
	def frame_count() self[:frame_count] end
	def looping() self[:looping] end
	def ctx_type() self[:ctx_type] end
	def ctx_data() self[:ctx_data] end
	# Define the setter methods leveraging library access
	def stream=(new_stream) self[:stream] = new_stream end
	def frame_count=(new_frame_count) self[:frame_count] = new_frame_count end
	def looping=(new_looping) self[:looping] = new_looping end
	def ctx_type=(new_ctx_type) self[:ctx_type] = new_ctx_type end
	def ctx_data=(new_ctx_data) self[:ctx_data] = new_ctx_data end
end