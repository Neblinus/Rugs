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

## Color

| Category | Raylib name  | Rugs name     |
|----------|--------------|---------------|
| Constant | `LIGHTGRAY`  | `LIGHT_GRAY`  |
| Constant | `DARKGRAY`   | `DARK_GRAY`   |
| Constant | `DARKGREEN`  | `DARK_GREEN`  |
| Constant | `SKYBLUE`    | `SKY_BLUE`    |
| Constant | `DARKBLUE`   | `DARK_BLUE`   |
| Constant | `DARKPURPLE` | `DARK_PURPLE` |
| Constant | `DARKBROWN`  | `DARK_BROWN`  |
| Constant | `RAYWHITE`   | `RAY_WHITE`   |

## Font

| Category | Raylib name    | Rugs name       |
|----------|----------------|-----------------|
| Field    | `baseSize`     | `base_size`     |
| Field    | `glyphCount`   | `glyph_count`   |
| Field    | `glyphPadding` | `glyph_padding` |

## GlyphInfo

| Category | Raylib name | Rugs name   |
|----------|-------------|-------------|
| Field    | `offsetX`   | `offset_x`  |
| Field    | `offsetY`   | `offset_y`  |
| Field    | `advanceX`  | `advance_x` |

## Image

| Category | Raylib name | Rugs name  |
|----------|-------------|------------|
| Field    | `mipmaps`   | `mip_maps` |

## Texture

| Category | Raylib name | Rugs name  |
|----------|-------------|------------|
| Field    | `mipmaps`   | `mip_maps` |

## Mesh

| Category | Raylib name | Rugs name  |
|----------|-------------|------------|
| Field              | `vertexCount`    | `vertex_count`   |
| Field              | `triangleCount`  | `triangle_count` |
| Field              | `texCoords`      | `tex_coords`     |
| Field              | `texCoords2`     | `tex_coords_2`   |
| Field              | `boneCount`      | `bone_count`     |
| Field              | `boneIndices`    | `bone_indices`   |
| Field              | `boneWeights`    | `bone_weights`   |
| Field              | `animVertices`   | `anim_vertices`  |
| Field              | `animNormals`    | `anim_normals`   |
| Field              | `vaoId`          | `vao_id`         |
| Field              | `vboId`          | `vbo_id`         |

| Struct          | Classification     | Raylib name      | Rugs name        |
|-----------------|--------------------|------------------|------------------|
| `ModelSkeleton` | Field              | `boneCount`      | `bone_count`     |
| `ModelSkeleton` | Field              | `bindPose`       | `bind_pose`      |
| `Model`         | Field              | `meshCount`      | `mesh_count`     |
| `Model`         | Field              | `materialCount`  | `material_count` |
| `Model`         | Field              | `meshMaterial`   | `mesh_material`  |
| `Model`         | Field              | `currentPose`    | `current_pose`   |
| `Model`         | Field              | `boneMatrices`   | `bone_matrices`  |
