# Define the Raylib Font struct
require "ffi"
require_relative "texture_2d"
require_relative "rectangle"
require_relative "glyph_info"

class Font < FFI::Struct
  # Defines the struct leveraging its compatibility with the library's one
  layout :baseSize, :int,
         :glyphCount, :int,
         :glyphPadding, :int,
         :texture, :Texture2D,
         :recs, :pointer,
         :glyphs, :pointer
  def initialize(baseSize, glyphCount, glyphPadding, texture, recs, glyphs)
  	self[:baseSize] = baseSize
  	self[:glyphCount] = glyphCount
  	self[:glyphPadding] = glyphPadding
  	self[:texture] = texture
  	self[:recs] = recs
  	self[:glyphs] = glyphs
  end
  # Define the getter methods leveraging library access
  def baseSize() self[:baseSize] end
  def glyphCount() self[:glyphCount] end
  def glyphPadding() self[:glyphPadding] end
  def texture() self[:texture] end
  def recs() self[:recs] end
  def glyphs() self[:glyphs] end
  # Define the setter methods leveraging library access
  def baseSize=(new_size) self[:baseSize] = new_size end
  def glyphCount=(new_glyph_count) self[:glyphCount] = new_glyph_count end
  def glyphPadding=(new_glyph_padding) self[:glyphPadding] = new_glyph_padding end
  def texture=(new_texture) self[:texture] = new_texture end
  def recs=(new_recs) self[:recs] = new_recs end
  def glyphs=(new_glyphs) self[:glyphs] = new_glyphs end
end