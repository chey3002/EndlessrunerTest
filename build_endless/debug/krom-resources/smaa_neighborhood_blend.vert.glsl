#version 330
#ifdef GL_ARB_shading_language_420pack
#extension GL_ARB_shading_language_420pack : require
#endif

uniform vec2 screenSizeInv;

out vec2 texCoord;
in vec2 pos;
out vec4 offset;

void main()
{
    texCoord = (pos * vec2(0.5)) + vec2(0.5);
    offset = (screenSizeInv.xyxy * vec4(1.0, 0.0, 0.0, 1.0)) + texCoord.xyxy;
    gl_Position = vec4(pos, 0.0, 1.0);
}

