<img align="right" style="width:256px" alt="Rugs bindings logo" src="rugs.png"><br>
**Rugs**: Ruby bindings for Raylib following the language's conventions

> [!IMPORTANT]
> This is heavily and still a work in progress.<br>
> Almost all functionality is lacking.

Documentation can be found at the [docs directory]("./Docs").

Note that these bindings modules use the FFI gem to provide the calls to<br>
Raylib's C code.

## Roadmap for features implementation

- [ ] **Structs** (<ins>in progress<ins>)
- [ ] RCore modules
- [ ] RShapes modules
- [ ] RTextures modules
- [ ] RText modules
- [ ] RModels modules
- [ ] RAudio modules

## Minimal reproducible example

- Ensure you have the Raylib 6.0 library installed on your system
- Ensure the `ffi` gem is installed on your system
- Download the repository
- Move the `rugs.rb` file and the `Structs` directory to your project folder
- `require_relative` the `rugs.rb` file from your main
- Optionally, also `include Rugs` to avoid needing to type the namespace to call the bindings functions 
- Follow the example

```Ruby
# Basic window with Rugs
require_relative "rugs"
include Rugs

init_window(640, 480, "Rugs Test")
until window_should_close?
	begin_drawing
	  clear_background(Color::RAY_WHITE)
	  draw_text("That's Ruby for you", 110, 200, 40, Color::LIGHT_GRAY)
	end_drawing
end
close_window
```
