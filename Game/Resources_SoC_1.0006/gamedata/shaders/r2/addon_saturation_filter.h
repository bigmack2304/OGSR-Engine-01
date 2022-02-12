// источник AMK Team, by Anonim
// addon_satr_filter(изображение float3 или float4, насыщенность)		
// сила фильтра (насыщеность) чем выше тем насыщенее будет картинка, 0 - все чорно белое

float3 addon_satr_filter(float3 colorInput, float color_range) {
	float gray = dot(colorInput.xyz, float3(0.3, 0.59, 0.11));
	colorInput.xyz = lerp(float3(gray, gray, gray), colorInput.xyz, color_range + (dot(Ldynamic_color.xyz, float3(1, 1, 1))/3)* 0.0);
	return colorInput;
}

float4 addon_satr_filter(float4 colorInput, float color_range) {
	float gray = dot(colorInput, float4(0.3, 0.59, 0.11, 0));
	colorInput = lerp(float4(gray, gray, gray, gray), colorInput, color_range + (dot(Ldynamic_color, float4(1, 1, 1,0))/3)* 0.0);
	return colorInput;
}