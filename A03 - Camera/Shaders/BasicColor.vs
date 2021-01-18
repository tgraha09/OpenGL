#version 330
layout (location = 0) in vec3 Position_b;
layout (location = 1) in vec3 Color_b;
uniform vec3 SolidColor = vec3(-1, -1 , -1);
uniform bool Comp;
out vec3 Color;

void main()
{
	gl_Position = vec4(Position_b, 1);
	
	Color = Color_b;
	if(Comp == true){
		Color = vec3(1.0f, 1.0f, 1.0f) - Color_b;
	}
	else{
		Color = Color_b;
	}

}