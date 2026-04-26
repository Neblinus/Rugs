# Defines the Raylib AutomationEventList struct
require "ffi"

class AutomationEventList < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :capacity, :uint,
	       :count, :uint,
	       :events, :pointer
	def initialize(capacity, count, events)
		self[:capacity] = capacity
		self[:count] = count
		self[:events] = events
	end
	# Define the getter methods leveraging library access
	def capacity() self[:capacity] end
	def count() self[:count] end
	def events() self[:events] end
	# Define the setter methods leveraging library access
	def capacity=(new_capacity) self[:capacity] = new_capacity end
	def count=(new_count) self[:count] = new_count end
	def events=(new_events) self[:events] = new_events end
end