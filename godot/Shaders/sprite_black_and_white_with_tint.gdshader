shader_type canvas_item;

uniform vec4 tint_color: hint_color = vec4(1.0, 0.87, 0.66, 1.0);

void fragment() {
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	COLOR.rgb = vec3(COLOR.r + COLOR.g + COLOR.b) / 3.0;
	COLOR.rgb = (COLOR.rgb + tint_color.rgb) / 2.0;
}