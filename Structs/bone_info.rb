# Define the Raylib BoneInfo struct
require "ffi"

class BoneInfo < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :name, [:char, 32],
	       :parent, :int
	def initialize(name, parent)
		self[:name] = name
		self[:parent] = parent
	end
	# Define the getter methods leveraging library access
	def name() self[:name] end
	def parent() self[:parent] end
	# Define the setter methods leveraging library access
	def name=(new_name) self[:name] = new_name end
	def parent=(new_parent) self[:parent] = new_parent end
end