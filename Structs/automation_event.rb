# Define the Raylib AutomationEvent struct
require "ffi"

class AutomationEvent < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :frame, :uint,
	       :type, :uint,
	       :params, [:int, 4]
	def initialize(frame, type, params)
		self[:frame] = frame
		self[:type] = type
		self[:params] = params
	end
	# Define the getter methods leveraging library access
	def frame() self[:frame] end
	def type() self[:type] end
	def params() self[:params] end
	# Define the setter methods leveraging library access
	def frame=(new_frame) self[:frame] = new_frame end
	def type=(new_type) self[:type] = new_type end
	def params=(new_params) self[:params] = new_params end
end