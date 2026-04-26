# Define the Raylib Sound struct
require "ffi"
require_relative "audio_stream"

class Sound < FFI::Struct
  # Defines the struct leveraging its compatibility with the library's one
  layout :stream, AudioStream,
         :frame_count, :uint
  def initialize(stream, frame_count)
  	self[:stream] = stream
  	self[:frame_count] = frame_count
  end
  # Define the getter methods leveraging library access
  def stream() self[:stream] end
  def frame_count() self[:frame_count] end
  # Define the setter methods leveraging library access
  def stream=(new_stream) self[:stream]= new_stream end
  def frame_count=(new_frame_count) self[:frame_count] = new_frame_count end
end