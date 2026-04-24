# Define the Raylib Texture2D type
require "ffi"
require_relative "texture"

FFI::typedef(Texture.by_value, :Texture2D)