// pushing activation record 0
#ifdef GL_ES

mediump float #endif

// Yuldashev Mahmud Effect took from shaderToy mahmud9935@gmail.com


uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;
// pushing activation record 0:rot1
mat2 rot(float a)
{
// pushing activation record 0:rot1:2
    return mat2(cos(a), -sin(a), sin(a), +cos(a));

}
// popping activation record 0:rot1:2
// local variables: 
// references:
// mat2 at line 12, column 8
// cos at line 12, column 13
// a at line 12, column 17
// sin at line 12, column 22
// a at line 12, column 26
// sin at line 12, column 30
// a at line 12, column 34
// cos at line 12, column 39
// a at line 12, column 43
// popping activation record 0:rot1
// local variables: 
// variable a, unique name 0:rot1:a, index 181, declared at line 10, column 15
// references:
// pushing activation record 0:snoise3
float snoise(vec3 uv, float res)
{
// pushing activation record 0:snoise3:4
    const vec3 s = vec3(2e0, 2e2, 1e3);
    uv *= res;
    vec3 uv0 = floor(mod(uv, res)) * s;
    vec3 uv1 = floor(mod(uv + vec3(1), res)) * s;
    vec3 f = fract(uv);
    f = f * f * (3.0 - 2.0 * f);
    vec4 v = vec4(uv0.x + uv0.y + uv0.z, uv1.x + uv0.y + uv0.z, uv0.x + uv1.y + uv0.z, uv1.x + uv1.y + uv0.z);
    vec4 r = fract(sin(v * 1e-1) * 1e3);
    float r0 = mix(mix(r.x, r.y, f.x), mix(r.z, r.w, f.x), f.y);
    r = fract(sin((v + uv1.z - uv0.z) * 1e-1) * 1e3);
    float r1 = mix(mix(r.x, r.y, f.x), mix(r.z, r.w, f.x), f.y);
    return mix(r0, r1, f.z) * 2. - 1.;

}
// popping activation record 0:snoise3:4
// local variables: 
// variable s, unique name 0:snoise3:4:s, index 185, declared at line 18, column 12
// variable uv0, unique name 0:snoise3:4:uv0, index 186, declared at line 22, column 6
// variable uv1, unique name 0:snoise3:4:uv1, index 187, declared at line 23, column 6
// variable f, unique name 0:snoise3:4:f, index 188, declared at line 25, column 6
// variable v, unique name 0:snoise3:4:v, index 189, declared at line 27, column 6
// variable r, unique name 0:snoise3:4:r, index 190, declared at line 30, column 6
// variable r0, unique name 0:snoise3:4:r0, index 191, declared at line 31, column 7
// variable r1, unique name 0:snoise3:4:r1, index 192, declared at line 34, column 7
// references:
// vec3 at line 18, column 16
// uv at line 20, column 1
// res at line 20, column 7
// floor at line 22, column 12
// mod at line 22, column 18
// uv at line 22, column 22
// res at line 22, column 26
// s at line 22, column 32
// floor at line 23, column 12
// mod at line 23, column 18
// uv at line 23, column 22
// vec3 at line 23, column 25
// res at line 23, column 34
// s at line 23, column 40
// fract at line 25, column 10
// uv at line 25, column 16
// f at line 25, column 21
// f at line 25, column 25
// f at line 25, column 27
// f at line 25, column 38
// vec4 at line 27, column 10
// uv0 at line 27, column 15
// uv0 at line 27, column 21
// uv0 at line 27, column 27
// uv1 at line 27, column 34
// uv0 at line 27, column 40
// uv0 at line 27, column 46
// uv0 at line 28, column 11
// uv1 at line 28, column 17
// uv0 at line 28, column 23
// uv1 at line 28, column 30
// uv1 at line 28, column 36
// uv0 at line 28, column 42
// fract at line 30, column 10
// sin at line 30, column 16
// v at line 30, column 20
// mix at line 31, column 12
// mix at line 31, column 16
// r at line 31, column 20
// r at line 31, column 25
// f at line 31, column 30
// mix at line 31, column 36
// r at line 31, column 40
// r at line 31, column 45
// f at line 31, column 50
// f at line 31, column 56
// r at line 33, column 1
// fract at line 33, column 5
// sin at line 33, column 11
// v at line 33, column 16
// uv1 at line 33, column 20
// uv0 at line 33, column 28
// mix at line 34, column 12
// mix at line 34, column 16
// r at line 34, column 20
// r at line 34, column 25
// f at line 34, column 30
// mix at line 34, column 36
// r at line 34, column 40
// r at line 34, column 45
// f at line 34, column 50
// f at line 34, column 56
// mix at line 36, column 8
// r0 at line 36, column 12
// r1 at line 36, column 16
// f at line 36, column 20
// popping activation record 0:snoise3
// local variables: 
// variable uv, unique name 0:snoise3:uv, index 183, declared at line 16, column 18
// variable res, unique name 0:snoise3:res, index 184, declared at line 16, column 28
// references:
// pushing activation record 0:main5
void main()
{
// pushing activation record 0:main5:6
    vec2 p = -.5 + gl_FragCoord.xy / resolution.xy;
    p.x *= resolution.x / resolution.y;
    float d = length(p);
    p *= .8 * rot(2. * cos(d * 2. + .2 * snoise(vec3(p * .9, d * .2 + sin(time * .2)), 5.)));
    float color = 3.0 - (3. * length(2. * p));
    vec3 coord = vec3(atan(p.x, p.y) / 6.2832 + .5, length(p) * .4, .5);
    // pushing activation record 0:main5:6:for7
    for (int i = 2; i <= 7; i++) {
    // pushing activation record 0:main5:6:for7:8
        float power = pow(2.0, float(i));
        color += (1.5 / power) * snoise(coord + vec3(0., -time * .05, time * .01), power * 16.);

    }
    // popping activation record 0:main5:6:for7:8
    // local variables: 
    // variable power, unique name 0:main5:6:for7:8:power, index 199, declared at line 57, column 8
    // references:
    // pow at line 57, column 16
    // float at line 57, column 25
    // i at line 57, column 31
    // color at line 58, column 2
    // power at line 58, column 18
    // snoise at line 58, column 27
    // coord at line 58, column 34
    // vec3 at line 58, column 42
    // time at line 58, column 51
    // time at line 58, column 61
    // power at line 58, column 72
    // popping activation record 0:main5:6:for7
    // local variables: 
    // variable i, unique name 0:main5:6:for7:i, index 198, declared at line 52, column 9
    // references:
    // i at line 52, column 16
    // i at line 52, column 24
    gl_FragColor = vec4(pow(max(color, 0.), 2.) * 1.4, pow(max(color, 1.), 1.) * 0.4, pow(max(color, 0.), 1.) * 0.4, 1.0) * vec4(1, .6, .3, 1);

}
// popping activation record 0:main5:6
// local variables: 
// variable p, unique name 0:main5:6:p, index 194, declared at line 41, column 6
// variable d, unique name 0:main5:6:d, index 195, declared at line 44, column 7
// variable color, unique name 0:main5:6:color, index 196, declared at line 48, column 7
// variable coord, unique name 0:main5:6:coord, index 197, declared at line 50, column 6
// references:
// gl_FragCoord at line 41, column 16
// resolution at line 41, column 34
// p at line 42, column 1
// resolution at line 42, column 8
// resolution at line 42, column 21
// length at line 44, column 11
// p at line 44, column 18
// p at line 45, column 1
// rot at line 45, column 9
// cos at line 45, column 16
// d at line 45, column 20
// snoise at line 45, column 30
// vec3 at line 45, column 37
// p at line 45, column 42
// d at line 45, column 48
// sin at line 45, column 55
// time at line 45, column 59
// length at line 48, column 25
// p at line 48, column 35
// vec3 at line 50, column 14
// atan at line 50, column 19
// p at line 50, column 24
// p at line 50, column 28
// length at line 50, column 44
// p at line 50, column 51
// gl_FragColor at line 60, column 1
// vec4 at line 60, column 16
// pow at line 60, column 22
// max at line 60, column 26
// color at line 60, column 30
// pow at line 60, column 49
// max at line 60, column 53
// color at line 60, column 57
// pow at line 60, column 76
// max at line 60, column 80
// color at line 60, column 84
// vec4 at line 60, column 109
// popping activation record 0:main5
// local variables: 
// references:
// undefined variables 