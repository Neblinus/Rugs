# Rugs Structs Specifics
This section of the documentation presents the changes made on the Raylib's structs fields and constants names in order to
better integrate the library usage on code provided by these bindings.

> [!NOTE]
> This documentation section is still a WIP - work in progress.<br>
> Some content may be lacking.

Read the page to see the changes made.<br>
Also note that the struct's names themselves are not modified, as Ruby convention for class (which they are, as FFI has a defined `Struct` class) names
is to use `UpperCamelCase`.

> [!TIP]
> Fields and constants not presented here had no change and can be used the same way as shown on the Raylib's docs.

## Struct's fields/constants naming comparision between Raylib and Rugs

| Struct      | Classification     | Raylib name    | Rugs name       |
|-------------|--------------------|----------------|-----------------|
| `Color`     | Constant           | `LIGHTGRAY`    | `LIGHT_GRAY`    |
| `Color`     | Constant           | `DARKGRAY`     | `DARK_GRAY`     |
| `Color`     | Constant           | `DARKGREEN`    | `DARK_GREEN`    |
| `Color`     | Constant           | `SKYBLUE`      | `SKY_BLUE`      |
| `Color`     | Constant           | `DARKBLUE`     | `DARK_BLUE`     |
| `Color`     | Constant           | `DARKPURPLE`   | `DARK_PURPLE`   |
| `Color`     | Constant           | `DARKBROWN`    | `DARK_BROWN`    |
| `Color`     | Constant           | `RAYWHITE`     | `RAY_WHITE`     |
| `Font`      | Field              | `baseSize`     | `base_size`     |
| `Font`      | Field              | `glyphCount`   | `glyph_count`   |
| `Font`      | Field              | `glyphPadding` | `glyph_padding` |
| `GlyphInfo` | Field              | `offsetX `     | `offset_x`      |
| `GlyphInfo` | Field              | `offsetY `     | `offset_y`      |
| `GlyphInfo` | Field              | `advanceX `    | `advance_x`     |
| `Image`     | Field              | `mipmaps`      | `mip_maps`      |
| `Texture`   | Field              | `mipmaps`      | `mip_maps`      |
