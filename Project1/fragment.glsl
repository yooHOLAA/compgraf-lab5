#version 460 core
out vec4 FragColor;
in vec3 Normal;
in vec3 FragPos;

uniform vec3 lightColor;

void main() {
    vec3 norm = normalize(Normal);
    vec3 lightDir = normalize(vec3(0.5f, 1.0f, 0.3f));
    
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * lightColor;
    
    FragColor = vec4(diffuse, 1.0);
}