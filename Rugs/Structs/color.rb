# Defines the Raylib Color struct
require "ffi"

class Color < FFI::Struct
	# Defines the struct leveraging its compatibility with the library's one
	layout :red, :uchar,
		     :green, :uchar,
		     :blue, :uchar,
		     :alpha, :uchar
	def initialize(red, green, blue, alpha)
		self[:red] = red
		self[:green] = green
		self[:blue] = blue
		self[:alpha] = alpha
	end
	# The library needs access to the color through this exact names
	def r() self[:red] end
	def g() self[:green] end
	def b() self[:blue] end
	def a() self[:alpha] end
  # Define the constants manually, as macros reading isn't supported
  LIGHT_GRAY = Color.new(200, 200, 200, 255) ; GRAY = Color.new(130, 130, 130, 255)
  DARK_GRAY = Color.new(80, 80, 80, 255) ; YELLOW = Color.new(253, 249, 0, 255)
  GOLD = Color.new(255, 203, 0, 255) ; ORANGE = Color.new(255, 161, 0, 255)
  PINK = Color.new(255, 109, 194, 255) ; RED = Color.new(230, 41, 55, 255)
  MAROON = Color.new(190, 33, 55, 255) ; GREEN = Color.new(0, 228, 48, 255)
  LIME = Color.new(0, 158, 47, 255) ; DARK_GREEN = Color.new(0, 117, 44, 255)
  SKY_BLUE = Color.new(102, 191, 255, 255) ; BLUE = Color.new(0, 121, 241, 255)
  DARK_BLUE = Color.new(0, 82, 172, 255) ; PURPLE = Color.new(200, 122, 255, 255)
  VIOLET = Color.new(135, 60, 190, 255) ; DARK_PURPLE = Color.new(112, 31, 126, 255)
  BEIGE = Color.new(211, 176, 131, 255) ; BROWN = Color.new(127, 106, 79, 255)
  DARK_BROWN = Color.new(76, 63, 47, 255) ; WHITE = Color.new(255, 255, 255, 255)
  BLACK = Color.new(0, 0, 0, 255) ; BLANK = Color.new(0, 0, 0, 0)
  MAGENTA = Color.new(255, 0, 255, 255) ; RAY_WHITE = Color.new(245, 245, 245, 255)
end