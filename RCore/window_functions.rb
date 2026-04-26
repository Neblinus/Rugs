# Defines the Raylib window-related functions
require "ffi"
require_relative "../Structs/image"

module WindowFunctions
	extend FFI::Library
	ffi_lib "raylib"
	# Defines the functions aliased to Ruby conventions
	attach_function :init_window, :InitWindow, [:int, :int, :string], :void
	attach_function :close_window, :CloseWindow, [], :void
	attach_function :window_should_close?, :WindowShouldClose, [], :bool
	attach_function :is_window_ready?, :IsWindowReady, [], :bool
	attach_function :is_window_fullscreen?, :IsWindowFullscreen, [], :bool
	attach_function :is_window_hidden?, :IsWindowHidden, [], :bool
	attach_function :is_window_minimized?, :IsWindowMinimized, [], :bool
	attach_function :is_window_maximized?, :IsWindowMaximized, [], :bool
	attach_function :is_window_focused?, :IsWindowFocused, [], :bool
	attach_function :is_window_resized?, :IsWindowResized, [], :bool
	attach_function :is_window_state?, :IsWindowState, [:uint], :bool
	attach_function :set_window_state, :SetWindowState, [:uint], :void
	attach_function :clear_window_state, :ClearWindowState, [:uint], :void
	attach_function :toggle_fullscreen, :ToggleFullscreen, [], :void
	attach_function :toggle_borderless_windowed, :ToggleBorderlessWindowed, [], :void
	attach_function :maximize_window, :MaximizeWindow, [], :void
	attach_function :minimize_window, :MinimizeWindow, [], :void
	attach_function :restore_window, :RestoreWindow, [], :void
	attach_function :set_window_icon, :SetWindowIcon, [Image.by_value], :void
	attach_function :set_window_icons, :SetWindowIcons, [:pointer, :int], :void
	attach_function :set_window_title, :SetWindowTitle, [:pointer], :void
	attach_function :set_window_position, :SetWindowPosition, [:int, :int], :void
	attach_function :set_window_monitor, :SetWindowMonitor, [:int], :void
	attach_function :set_window_min_size, :SetWindowMinSize, [:int, :int], :void
	attach_function :set_window_max_size, :SetWindowMaxSize, [:int, :int], :void
	attach_function :set_window_size, :SetWindowSize, [:int, :int], :void
	attach_function :set_window_opacity, :SetWindowOpacity, [:float], :void
	attach_function :set_window_focused, :SetWindowFocused, [], :void
	attach_function :get_window_handle, :GetWindowHandle, [], :pointer
	attach_function :get_screen_width, :GetScreenWidth, [], :int
	attach_function :get_screen_height, :GetScreenHeight, [], :int
	attach_function :get_render_width, :GetRenderWidth, [], :int
end