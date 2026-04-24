# Rugs API specifics
This section documents the particular differences of these bindings to the original Raylib library.

> [!NOTE]
> This documentation section is still a WIP - work in progress.<br>
> Some content may be lacking.

## Functions signature and usage
With the intent of adjusting the functions defined by Raylib to the Ruby language conventions, their signatures are aliased from their original
form (`UpperCamelCase`) to the Ruby's one (`snake_case`).<br>
This helps with making the codebase more coherent, also avoiding the disruption of the language common style.

Also, functions that return boolean values are also aliased to the Ruby way, meaning that they end in `?`.

Look at the examples on the table to see the differences:

### Function signature comparision between Raylib and Rugs:

| Raylib (original library) | Rugs (Ruby bindings)  |
|---------------------------|-----------------------|
| `InitWindow`              | `init_window`         |
| `WindowShouldClose`       | `window_should_close?`|
| `ClearBackground`         | `clear_background`    |

## Structs fields and usage
...
