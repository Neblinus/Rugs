# Defines the Raylib Shader struct
require "ffi"

class Shader < FFI::Struct
  # Defines the struct leveraging its compatibility with the library's one
  layout :id, :uint,
         :locs, :pointer
  def initialize(id, locs)
    self[:id] = id
    self[:locs] = locs
  end
  # Define the getter methods leveraging library access
  def id() self[:id] end
  def locs() self[:locs] end
  # Define the setter methods leveraging library access
  def id=(new_id) self[:id] = new_id end
  def locs=(new_locs) self[:locs] = new_locs end
end