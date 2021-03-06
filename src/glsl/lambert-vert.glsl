attribute vec3 computedNormal;

varying vec3 f_normal;
varying vec3 f_position;

// uv, position, projectionMatrix, modelViewMatrix, normal
void main() {
    f_normal = computedNormal;
    f_position = position;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}