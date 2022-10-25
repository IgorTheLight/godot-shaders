shader_type canvas_item;

uniform float viewport_height = 720;
uniform float sprite_height = 720;

void fragment() {
	float sprite_uv_h = sprite_height / viewport_height;
	vec2 flipped_uv = vec2(SCREEN_UV.x, SCREEN_UV.y - sprite_uv_h * (1.0 - 2.0 * UV.y));
	COLOR = texture(SCREEN_TEXTURE, flipped_uv);
}