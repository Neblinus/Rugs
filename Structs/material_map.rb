# Defines the Raylib MaterialMap struct
require "ffi"
require_relative "texture"
require_relative "color"

class MaterialMap < FFI::Struct
  # Defines the struct leveraging its compatibility with the library's one
  layout :texture, Texture2D,
         :color, Color,
         :value, :float
  def initialize(texture, color, value)
  	self[:texture] = texture
  	self[:color] = color
  	self[:value] = value
  end
  # Define the getter methods leveraging library access
  def texture() self[:texture] end
  def color() self[:color] end
  def value() self[:value] end
  # Define the setter methods leveraging library access
  def texture=(new_texture) self[:texture] = new_texture end
  def color=(new_color) self[:color] = new_color end
  def value=(new_value) self[:value] = new_value end
end