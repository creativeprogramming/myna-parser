// pushing activation record 0
#ifdef GL_ES

mediump float #endif


uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;
// pushing activation record 0:main1
void main()
{
// pushing activation record 0:main1:2
    vec2 uv = (gl_FragCoord.xy / resolution.xy) - .5;
    float time = time * .1 + ((.25 + .05 * sin(time * .1)) / (length(uv.xy) + .07)) * 2.2;
    float si = sin(time);
    float co = cos(time);
    mat2 ma = mat2(co, si, -si, co);
    float c = 0.0;
    float v1 = 0.0;
    float v2 = 0.0;
    // pushing activation record 0:main1:2:for3
    for (int i = 0; i < 100; i++) {
    // pushing activation record 0:main1:2:for3:4
        float s = float(i) * .035;
        vec3 p = s * vec3(uv, 0.0);
        p.xy *= ma;
        p += vec3(.22, .3, s - 1.5 - sin(time * .13) * .1);
        // pushing activation record 0:main1:2:for3:4:for5
        for (int i = 0; i < 8; i++) {
        // pushing activation record 0:main1:2:for3:4:for5:6
            p = abs(p) / dot(p, p) - 0.659;

        }
        // popping activation record 0:main1:2:for3:4:for5:6
        // local variables: 
        // references:
        // p at line 34, column 4
        // abs at line 34, column 8
        // p at line 34, column 12
        // dot at line 34, column 17
        // p at line 34, column 21
        // p at line 34, column 23
        // popping activation record 0:main1:2:for3:4:for5
        // local variables: 
        // variable i, unique name 0:main1:2:for3:4:for5:i, index 192, declared at line 32, column 12
        // references:
        // i at line 32, column 19
        // i at line 32, column 26
        v1 += dot(p, p) * .0015 * (1.8 + sin(length(uv.xy * 13.0) + .5 - time * .2));
        v2 += dot(p, p) * .0015 * (1.5 + sin(length(uv.xy * 13.5) + 2.2 - time * .3));
        c = length(p.xy * .5) * .35;

    }
    // popping activation record 0:main1:2:for3:4
    // local variables: 
    // variable s, unique name 0:main1:2:for3:4:s, index 190, declared at line 28, column 9
    // variable p, unique name 0:main1:2:for3:4:p, index 191, declared at line 29, column 8
    // references:
    // float at line 28, column 13
    // i at line 28, column 19
    // s at line 29, column 12
    // vec3 at line 29, column 16
    // uv at line 29, column 21
    // p at line 30, column 3
    // ma at line 30, column 11
    // p at line 31, column 3
    // vec3 at line 31, column 8
    // s at line 31, column 21
    // sin at line 31, column 27
    // time at line 31, column 31
    // v1 at line 36, column 3
    // dot at line 36, column 9
    // p at line 36, column 13
    // p at line 36, column 15
    // sin at line 36, column 31
    // length at line 36, column 35
    // uv at line 36, column 42
    // time at line 36, column 57
    // v2 at line 37, column 3
    // dot at line 37, column 9
    // p at line 37, column 13
    // p at line 37, column 15
    // sin at line 37, column 31
    // length at line 37, column 35
    // uv at line 37, column 42
    // time at line 37, column 58
    // c at line 38, column 3
    // length at line 38, column 7
    // p at line 38, column 14
    // popping activation record 0:main1:2:for3
    // local variables: 
    // variable i, unique name 0:main1:2:for3:i, index 189, declared at line 26, column 11
    // references:
    // i at line 26, column 18
    // i at line 26, column 27
    float len = length(uv);
    v1 *= smoothstep(.7, .0, len);
    v2 *= smoothstep(.6, .0, len);
    float re = clamp(c, 0.0, 1.0);
    float gr = clamp((v1 + c) * .25, 0.0, 1.0);
    float bl = clamp(v2, 0.0, 1.0);
    vec3 col = vec3(re, gr, bl) + smoothstep(0.15, .0, len) * .9;
    gl_FragColor = vec4(col, 1.0);

}
// popping activation record 0:main1:2
// local variables: 
// variable uv, unique name 0:main1:2:uv, index 181, declared at line 15, column 7
// variable time, unique name 0:main1:2:time, index 182, declared at line 17, column 8
// variable si, unique name 0:main1:2:si, index 183, declared at line 18, column 8
// variable co, unique name 0:main1:2:co, index 184, declared at line 19, column 8
// variable ma, unique name 0:main1:2:ma, index 185, declared at line 20, column 7
// variable c, unique name 0:main1:2:c, index 186, declared at line 22, column 8
// variable v1, unique name 0:main1:2:v1, index 187, declared at line 23, column 8
// variable v2, unique name 0:main1:2:v2, index 188, declared at line 24, column 8
// variable len, unique name 0:main1:2:len, index 193, declared at line 41, column 8
// variable re, unique name 0:main1:2:re, index 194, declared at line 45, column 8
// variable gr, unique name 0:main1:2:gr, index 195, declared at line 46, column 8
// variable bl, unique name 0:main1:2:bl, index 196, declared at line 47, column 8
// variable col, unique name 0:main1:2:col, index 197, declared at line 48, column 7
// references:
// gl_FragCoord at line 15, column 13
// resolution at line 15, column 29
// time at line 17, column 15
// sin at line 17, column 37
// time at line 17, column 41
// length at line 17, column 52
// uv at line 17, column 59
// sin at line 18, column 13
// time at line 18, column 17
// cos at line 19, column 13
// time at line 19, column 17
// mat2 at line 20, column 12
// co at line 20, column 17
// si at line 20, column 21
// si at line 20, column 26
// co at line 20, column 30
// length at line 41, column 14
// uv at line 41, column 21
// v1 at line 42, column 2
// smoothstep at line 42, column 8
// len at line 42, column 27
// v2 at line 43, column 2
// smoothstep at line 43, column 8
// len at line 43, column 27
// clamp at line 45, column 13
// c at line 45, column 19
// clamp at line 46, column 13
// v1 at line 46, column 20
// c at line 46, column 23
// clamp at line 47, column 13
// v2 at line 47, column 19
// vec3 at line 48, column 13
// re at line 48, column 18
// gr at line 48, column 22
// bl at line 48, column 26
// smoothstep at line 48, column 32
// len at line 48, column 53
// gl_FragColor at line 50, column 2
// vec4 at line 50, column 15
// col at line 50, column 20
// popping activation record 0:main1
// local variables: 
// references:
// undefined variables 