shader_type canvas_item;

uniform float amount: hint_range(0.0, 6.0) = 3.0;

void fragment() {
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV, amount);
}