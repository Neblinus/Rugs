# Define the Raylib Font struct
require "ffi"
require_relative "texture"

class Font < FFI::Struct
  # Defines the struct leveraging its compatibility with the library's one
  layout :base_size, :int,
         :glyph_count, :int,
         :glyph_padding, :int,
         :texture, Texture2D,
         :recs, :pointer,
         :glyphs, :pointer
  def initialize(base_size, glyph_count, glyph_padding, texture, recs, glyphs)
  	self[:base_size] = base_size
  	self[:glyph_count] = glyph_count
  	self[:glyph_padding] = glyph_padding
  	self[:texture] = texture
  	self[:recs] = recs
  	self[:glyphs] = glyphs
  end
  # Define the getter methods leveraging library access
  def base_size() self[:base_size] end
  def glyph_count() self[:glyph_count] end
  def glyph_padding() self[:glyph_padding] end
  def texture() self[:texture] end
  def recs() self[:recs] end
  def glyphs() self[:glyphs] end
  # Define the setter methods leveraging library access
  def base_size=(new_size) self[:base_size] = new_size end
  def glyph_count=(new_glyph_count) self[:glyph_count] = new_glyph_count end
  def glyph_padding=(new_glyph_padding) self[:glyph_padding] = new_glyph_padding end
  def texture=(new_texture) self[:texture] = new_texture end
  def recs=(new_recs) self[:recs] = new_recs end
  def glyphs=(new_glyphs) self[:glyphs] = new_glyphs end
end