# Defines the Raylib Matrix struct
require "ffi"

class Matrix < FFI::Struct
	# Setup the struct's fields layout to be compatible with the library
	layout :m0, :float, :m4, :float, :m8, :float, :m12, :float,  # First row
	       :m1, :float, :m5, :float, :m9, :float, :m13, :float,  # Second row
	       :m2, :float, :m6, :float, :m10, :float, :m14, :float, # Third row
	       :m3, :float, :m7, :float, :m11, :float, :m15, :float  # Fourth row
	# Matrix elements should be initialized to 0 to avoid null access 
	def initialize()
		self[:m0] = 0.0 ; self[:m4] = 0.0 ; self[:m8] = 0.0 ; self[:m12] = 0.0
		self[:m1] = 0.0 ; self[:m5] = 0.0 ; self[:m9] = 0.0 ; self[:m13] = 0.0
		self[:m2] = 0.0 ; self[:m6] = 0.0 ; self[:m10] = 0.0 ; self[:m14] = 0.0
		self[:m3] = 0.0 ; self[:m7] = 0.0 ; self[:m11] = 0.0 ; self[:m15] = 0.0
	end
	# Provides access to the matrix elements as required by the library
	# First row
	def m0() self[:m0] end
	def m4() self[:m4] end
	def m8() self[:m8] end
	def m12() self[:m12] end
	# Second row
	def m1() self[:m1] end
	def m5() self[:m5] end
	def m9() self[:m9] end
	def m13() self[:m13] end
	# Third row
	def m2() self[:m2] end
	def m6() self[:m6] end
	def m10() self[:m10] end
	def m14() self[:m14] end
	# Fourth row
	def m3() self[:m3] end
	def m7() self[:m7] end
	def m11() self[:m11] end
	def m15() self[:m15] end
	# Allows for modification of the matrix struct fields
	# First row
	def m0=(new_m0) self[:m0] = new_m0 end
	def m4=(new_m4) self[:m4] = new_m4 end
	def m8=(new_m8) self[:m8] = new_m8 end
	def m12=(new_m12) self[:m12] = new_m12 end
	# Second row
	def m1=(new_m1) self[:m1] = new_m1 end
	def m5=(new_m5) self[:m5] = new_m5 end
	def m9=(new_m9) self[:m9] = new_m9 end
	def m13=(new_m13) self[:m13] = new_m13 end
	# Third row
	def m2=(new_m2) self[:m2] = new_m2 end
	def m6=(new_m6) self[:m6] = new_m6 end
	def m10=(new_m10) self[:m10] = new_m10 end
	def m14=(new_m14) self[:m14] = new_m14 end
	# Fourth row
	def m3=(new_m3) self[:m3] = new_m3 end
	def m7=(new_m7) self[:m7] = new_m7 end
	def m11=(new_m11) self[:m11] = new_m11 end
	def m15=(new_m15) self[:m15] = new_m15 end
end