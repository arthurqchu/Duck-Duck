#version 150

in vec3 vPos;
in vec3 vNormal;
in vec3 vColor;

uniform mat4 M;

out vec4 pos;
out vec4 N;
out vec4 color;

void
main()
{
  pos = M*vec4(vPos,1.0);
  N = vec4(vNormal, 0.0);
  N = normalize(N);
  gl_Position = pos;
  color = vec4(vColor,1);
}