# Defines the Raylib window-related functions
require "ffi"
require_relative "../Structs/image"
require_relative "../Structs/vector_2"
require_relative "../Enums/enums"

module WindowFunctions
	extend FFI::Library
	ffi_lib "raylib"
	# Provides access to the enums used on some functions as arguments
	include Enums
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
	attach_function :set_window_title, :SetWindowTitle, [:string], :void
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
	attach_function :get_render_height, :GetRenderHeight, [], :int
	attach_function :get_monitor_count, :GetMonitorCount, [], :int
	attach_function :get_current_monitor, :GetCurrentMonitor, [], :int
	attach_function :get_monitor_position, :GetMonitorPosition, [:int], Vector2.by_value
	attach_function :get_monitor_height, :GetMonitorHeight, [:int], :int
	attach_function :get_monitor_physical_width, :GetMonitorPhysicalWidth, [:int], :int
	attach_function :get_monitor_physical_height, :GetMonitorPhysicalHeight, [:int], :int
	attach_function :get_monitor_refresh_rate, :GetMonitorRefreshRate, [:int], :int
	attach_function :get_window_position, :GetWindowPosition, [], Vector2.by_value
	attach_function :get_window_scale_DPI, :GetWindowScaleDPI, [], Vector2.by_value
	attach_function :get_monitor_name, :GetMonitorName, [:int], :string
	attach_function :set_clipboard_text, :SetClipboardText, [:string], :void
	attach_function :get_clipboard_text, :GetClipboardText, [], :string
	attach_function :get_clipboard_image, :GetClipboardImage, [], Image.by_value
	attach_function :enable_event_waiting, :EnableEventWaiting, [], :void
	attach_function :disable_event_waiting, :DisableEventWaiting, [], :void
end