# Define the Raylib FilePathLib struct
require "ffi"

class FilePathList < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :count, :uint,
	       :paths, :pointer
	def initialize(count, paths)
		self[:count] = count
		self[:paths] = paths
	end
	# Define the getter methods leveraging library access
	def count() self[:count] end
	def paths() self[:paths] end
	# Define the setter methods leveraging library access
	def count=(new_count) self[:count] = new_count end
	def paths=(new_paths) self[:paths] = new_paths end
end