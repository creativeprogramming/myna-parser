// pushing activation record 0
// pushing activation record 0:rotationMatrix1
mat3 rotationMatrix(vec3 axis, float angle)
{
// pushing activation record 0:rotationMatrix1:2
    axis = normalize(axis);
    float s = sin(angle);
    float c = cos(angle);
    float oc = 1.0 - c;
    return mat3(oc * axis.x * axis.x + c, oc * axis.x * axis.y - axis.z * s, oc * axis.z * axis.x + axis.y * s, oc * axis.x * axis.y + axis.z * s, oc * axis.y * axis.y + c, oc * axis.y * axis.z - axis.x * s, oc * axis.z * axis.x - axis.y * s, oc * axis.y * axis.z + axis.x * s, oc * axis.z * axis.z + c);

}
// popping activation record 0:rotationMatrix1:2
// local variables: 
// variable s, unique name 0:rotationMatrix1:2:s, index 181, declared at line 10, column 10
// variable c, unique name 0:rotationMatrix1:2:c, index 182, declared at line 11, column 10
// variable oc, unique name 0:rotationMatrix1:2:oc, index 183, declared at line 12, column 10
// references:
// axis at line 9, column 4
// normalize at line 9, column 11
// axis at line 9, column 21
// sin at line 10, column 14
// angle at line 10, column 18
// cos at line 11, column 14
// angle at line 11, column 18
// c at line 12, column 21
// mat3 at line 14, column 11
// oc at line 14, column 16
// axis at line 14, column 21
// axis at line 14, column 30
// c at line 14, column 39
// oc at line 14, column 52
// axis at line 14, column 57
// axis at line 14, column 66
// axis at line 14, column 75
// s at line 14, column 84
// oc at line 14, column 88
// axis at line 14, column 93
// axis at line 14, column 102
// axis at line 14, column 111
// s at line 14, column 120
// oc at line 15, column 16
// axis at line 15, column 21
// axis at line 15, column 30
// axis at line 15, column 39
// s at line 15, column 48
// oc at line 15, column 52
// axis at line 15, column 57
// axis at line 15, column 66
// c at line 15, column 75
// oc at line 15, column 88
// axis at line 15, column 93
// axis at line 15, column 102
// axis at line 15, column 111
// s at line 15, column 120
// oc at line 16, column 16
// axis at line 16, column 21
// axis at line 16, column 30
// axis at line 16, column 39
// s at line 16, column 48
// oc at line 16, column 52
// axis at line 16, column 57
// axis at line 16, column 66
// axis at line 16, column 75
// s at line 16, column 84
// oc at line 16, column 88
// axis at line 16, column 93
// axis at line 16, column 102
// c at line 16, column 111
// popping activation record 0:rotationMatrix1
// local variables: 
// variable axis, unique name 0:rotationMatrix1:axis, index 179, declared at line 7, column 25
// variable angle, unique name 0:rotationMatrix1:angle, index 180, declared at line 7, column 37
// references:
// pushing activation record 0:mod2893
vec3 mod289(vec3 x)
{
// pushing activation record 0:mod2893:4
    return x - floor(x * (1.0 / 289.0)) * 289.0;

}
// popping activation record 0:mod2893:4
// local variables: 
// references:
// x at line 34, column 9
// floor at line 34, column 13
// x at line 34, column 19
// popping activation record 0:mod2893
// local variables: 
// variable x, unique name 0:mod2893:x, index 185, declared at line 33, column 17
// references:
// pushing activation record 0:mod2895
vec4 mod289(vec4 x)
{
// pushing activation record 0:mod2895:6
    return x - floor(x * (1.0 / 289.0)) * 289.0;

}
// popping activation record 0:mod2895:6
// local variables: 
// references:
// x at line 38, column 9
// floor at line 38, column 13
// x at line 38, column 19
// popping activation record 0:mod2895
// local variables: 
// variable x, unique name 0:mod2895:x, index 186, declared at line 37, column 17
// references:
// pushing activation record 0:permute7
vec4 permute(vec4 x)
{
// pushing activation record 0:permute7:8
    return mod289(((x * 34.0) + 1.0) * x);

}
// popping activation record 0:permute7:8
// local variables: 
// references:
// mod289 at line 42, column 12
// x at line 42, column 21
// x at line 42, column 34
// popping activation record 0:permute7
// local variables: 
// variable x, unique name 0:permute7:x, index 188, declared at line 41, column 18
// references:
// pushing activation record 0:taylorInvSqrt9
vec4 taylorInvSqrt(vec4 r)
{
// pushing activation record 0:taylorInvSqrt9:10
    return 1.79284291400159 - 0.85373472095314 * r;

}
// popping activation record 0:taylorInvSqrt9:10
// local variables: 
// references:
// r at line 47, column 47
// popping activation record 0:taylorInvSqrt9
// local variables: 
// variable r, unique name 0:taylorInvSqrt9:r, index 190, declared at line 45, column 24
// references:
// pushing activation record 0:noise11
float noise(vec3 v)
{
// pushing activation record 0:noise11:12
    const vec2 C = vec2(1.0 / 6.0, 1.0 / 3.0);
    const vec4 D = vec4(0.0, 0.5, 1.0, 2.0);
    vec3 i = floor(v + dot(v, C.yyy));
    vec3 x0 = v - i + dot(i, C.xxx);
    vec3 g = step(x0.yzx, x0.xyz);
    vec3 l = 1.0 - g;
    vec3 i1 = min(g.xyz, l.zxy);
    vec3 i2 = max(g.xyz, l.zxy);
    vec3 x1 = x0 - i1 + C.xxx;
    vec3 x2 = x0 - i2 + C.yyy;
    vec3 x3 = x0 - D.yyy;
    i = mod289(i);
    vec4 p = permute(permute(permute(i.z + vec4(0.0, i1.z, i2.z, 1.0)) + i.y + vec4(0.0, i1.y, i2.y, 1.0)) + i.x + vec4(0.0, i1.x, i2.x, 1.0));
    float n_ = 0.142857142857;
    vec3 ns = n_ * D.wyz - D.xzx;
    vec4 j = p - 49.0 * floor(p * ns.z * ns.z);
    vec4 x_ = floor(j * ns.z);
    vec4 y_ = floor(j - 7.0 * x_);
    vec4 x = x_ * ns.x + ns.yyyy;
    vec4 y = y_ * ns.x + ns.yyyy;
    vec4 h = 1.0 - abs(x) - abs(y);
    vec4 b0 = vec4(x.xy, y.xy);
    vec4 b1 = vec4(x.zw, y.zw);
    vec4 s0 = floor(b0) * 2.0 + 1.0;
    vec4 s1 = floor(b1) * 2.0 + 1.0;
    vec4 sh = -step(h, vec4(0.0));
    vec4 a0 = b0.xzyw + s0.xzyw * sh.xxyy;
    vec4 a1 = b1.xzyw + s1.xzyw * sh.zzww;
    vec3 p0 = vec3(a0.xy, h.x);
    vec3 p1 = vec3(a0.zw, h.y);
    vec3 p2 = vec3(a1.xy, h.z);
    vec3 p3 = vec3(a1.zw, h.w);
    vec4 norm = taylorInvSqrt(vec4(dot(p0, p0), dot(p1, p1), dot(p2, p2), dot(p3, p3)));
    p0 *= norm.x;
    p1 *= norm.y;
    p2 *= norm.z;
    p3 *= norm.w;
    vec4 m = max(0.6 - vec4(dot(x0, x0), dot(x1, x1), dot(x2, x2), dot(x3, x3)), 0.0);
    m = m * m;
    return 42.0 * dot(m * m, vec4(dot(p0, x0), dot(p1, x1), dot(p2, x2), dot(p3, x3)));

}
// popping activation record 0:noise11:12
// local variables: 
// variable C, unique name 0:noise11:12:C, index 193, declared at line 52, column 14
// variable D, unique name 0:noise11:12:D, index 194, declared at line 53, column 14
// variable i, unique name 0:noise11:12:i, index 195, declared at line 56, column 7
// variable x0, unique name 0:noise11:12:x0, index 196, declared at line 57, column 7
// variable g, unique name 0:noise11:12:g, index 197, declared at line 60, column 7
// variable l, unique name 0:noise11:12:l, index 198, declared at line 61, column 7
// variable i1, unique name 0:noise11:12:i1, index 199, declared at line 62, column 7
// variable i2, unique name 0:noise11:12:i2, index 200, declared at line 63, column 7
// variable x1, unique name 0:noise11:12:x1, index 201, declared at line 69, column 7
// variable x2, unique name 0:noise11:12:x2, index 202, declared at line 70, column 7
// variable x3, unique name 0:noise11:12:x3, index 203, declared at line 71, column 7
// variable p, unique name 0:noise11:12:p, index 204, declared at line 75, column 7
// variable n_, unique name 0:noise11:12:n_, index 205, declared at line 82, column 8
// variable ns, unique name 0:noise11:12:ns, index 206, declared at line 83, column 8
// variable j, unique name 0:noise11:12:j, index 207, declared at line 85, column 7
// variable x_, unique name 0:noise11:12:x_, index 208, declared at line 87, column 7
// variable y_, unique name 0:noise11:12:y_, index 209, declared at line 88, column 7
// variable x, unique name 0:noise11:12:x, index 210, declared at line 90, column 7
// variable y, unique name 0:noise11:12:y, index 211, declared at line 91, column 7
// variable h, unique name 0:noise11:12:h, index 212, declared at line 92, column 7
// variable b0, unique name 0:noise11:12:b0, index 213, declared at line 94, column 7
// variable b1, unique name 0:noise11:12:b1, index 214, declared at line 95, column 7
// variable s0, unique name 0:noise11:12:s0, index 215, declared at line 99, column 7
// variable s1, unique name 0:noise11:12:s1, index 216, declared at line 100, column 7
// variable sh, unique name 0:noise11:12:sh, index 217, declared at line 101, column 7
// variable a0, unique name 0:noise11:12:a0, index 218, declared at line 103, column 7
// variable a1, unique name 0:noise11:12:a1, index 219, declared at line 104, column 7
// variable p0, unique name 0:noise11:12:p0, index 220, declared at line 106, column 7
// variable p1, unique name 0:noise11:12:p1, index 221, declared at line 107, column 7
// variable p2, unique name 0:noise11:12:p2, index 222, declared at line 108, column 7
// variable p3, unique name 0:noise11:12:p3, index 223, declared at line 109, column 7
// variable norm, unique name 0:noise11:12:norm, index 224, declared at line 112, column 7
// variable m, unique name 0:noise11:12:m, index 225, declared at line 119, column 7
// references:
// vec2 at line 52, column 18
// vec4 at line 53, column 18
// floor at line 56, column 12
// v at line 56, column 18
// dot at line 56, column 22
// v at line 56, column 26
// C at line 56, column 29
// v at line 57, column 14
// i at line 57, column 18
// dot at line 57, column 22
// i at line 57, column 26
// C at line 57, column 29
// step at line 60, column 11
// x0 at line 60, column 16
// x0 at line 60, column 24
// g at line 61, column 17
// min at line 62, column 12
// g at line 62, column 17
// l at line 62, column 24
// max at line 63, column 12
// g at line 63, column 17
// l at line 63, column 24
// x0 at line 69, column 12
// i1 at line 69, column 17
// C at line 69, column 22
// x0 at line 70, column 12
// i2 at line 70, column 17
// C at line 70, column 22
// x0 at line 71, column 12
// D at line 71, column 17
// i at line 74, column 2
// mod289 at line 74, column 6
// i at line 74, column 13
// permute at line 75, column 11
// permute at line 75, column 20
// permute at line 75, column 29
// i at line 76, column 13
// vec4 at line 76, column 19
// i1 at line 76, column 29
// i2 at line 76, column 35
// i at line 77, column 13
// vec4 at line 77, column 19
// i1 at line 77, column 29
// i2 at line 77, column 35
// i at line 78, column 13
// vec4 at line 78, column 19
// i1 at line 78, column 29
// i2 at line 78, column 35
// n_ at line 83, column 13
// D at line 83, column 18
// D at line 83, column 26
// p at line 85, column 11
// floor at line 85, column 22
// p at line 85, column 28
// ns at line 85, column 32
// ns at line 85, column 39
// floor at line 87, column 12
// j at line 87, column 18
// ns at line 87, column 22
// floor at line 88, column 12
// j at line 88, column 18
// x_ at line 88, column 28
// x_ at line 90, column 11
// ns at line 90, column 15
// ns at line 90, column 22
// y_ at line 91, column 11
// ns at line 91, column 15
// ns at line 91, column 22
// abs at line 92, column 17
// x at line 92, column 21
// abs at line 92, column 26
// y at line 92, column 30
// vec4 at line 94, column 12
// x at line 94, column 18
// y at line 94, column 24
// vec4 at line 95, column 12
// x at line 95, column 18
// y at line 95, column 24
// floor at line 99, column 12
// b0 at line 99, column 18
// floor at line 100, column 12
// b1 at line 100, column 18
// step at line 101, column 13
// h at line 101, column 18
// vec4 at line 101, column 21
// b0 at line 103, column 12
// s0 at line 103, column 22
// sh at line 103, column 30
// b1 at line 104, column 12
// s1 at line 104, column 22
// sh at line 104, column 30
// vec3 at line 106, column 12
// a0 at line 106, column 17
// h at line 106, column 23
// vec3 at line 107, column 12
// a0 at line 107, column 17
// h at line 107, column 23
// vec3 at line 108, column 12
// a1 at line 108, column 17
// h at line 108, column 23
// vec3 at line 109, column 12
// a1 at line 109, column 17
// h at line 109, column 23
// taylorInvSqrt at line 112, column 14
// vec4 at line 112, column 28
// dot at line 112, column 33
// p0 at line 112, column 37
// p0 at line 112, column 40
// dot at line 112, column 45
// p1 at line 112, column 49
// p1 at line 112, column 52
// dot at line 112, column 57
// p2 at line 112, column 61
// p2 at line 112, column 65
// dot at line 112, column 70
// p3 at line 112, column 74
// p3 at line 112, column 77
// p0 at line 113, column 2
// norm at line 113, column 8
// p1 at line 114, column 2
// norm at line 114, column 8
// p2 at line 115, column 2
// norm at line 115, column 8
// p3 at line 116, column 2
// norm at line 116, column 8
// max at line 119, column 11
// vec4 at line 119, column 21
// dot at line 119, column 26
// x0 at line 119, column 30
// x0 at line 119, column 33
// dot at line 119, column 38
// x1 at line 119, column 42
// x1 at line 119, column 45
// dot at line 119, column 50
// x2 at line 119, column 54
// x2 at line 119, column 57
// dot at line 119, column 62
// x3 at line 119, column 66
// x3 at line 119, column 69
// m at line 120, column 2
// m at line 120, column 6
// m at line 120, column 10
// dot at line 121, column 16
// m at line 121, column 21
// m at line 121, column 23
// vec4 at line 121, column 26
// dot at line 121, column 32
// p0 at line 121, column 36
// x0 at line 121, column 39
// dot at line 121, column 44
// p1 at line 121, column 48
// x1 at line 121, column 51
// dot at line 122, column 32
// p2 at line 122, column 36
// x2 at line 122, column 39
// dot at line 122, column 44
// p3 at line 122, column 48
// x3 at line 122, column 51
// popping activation record 0:noise11
// local variables: 
// variable v, unique name 0:noise11:v, index 192, declared at line 50, column 17
// references:
// pushing activation record 0:fnoise13
float fnoise(vec3 p)
{
// pushing activation record 0:fnoise13:14
    mat3 rot = rotationMatrix(normalize(vec3(0.0, 0.0, 1.0)), 0.5 * iGlobalTime);
    mat3 rot2 = rotationMatrix(normalize(vec3(0.0, 0.0, 1.0)), 0.3 * iGlobalTime);
    float sum = 0.0;
    vec3 r = rot * p;
    float add = noise(r);
    float msc = add + 0.7;
    msc = clamp(msc, 0.0, 1.0);
    sum += 0.6 * add;
    p = p * 2.0;
    r = rot * p;
    add = noise(r);
    add *= msc;
    sum += 0.5 * add;
    msc *= add + 0.7;
    msc = clamp(msc, 0.0, 1.0);
    p.xy = p.xy * 2.0;
    p = rot2 * p;
    add = noise(p);
    add *= msc;
    sum += 0.25 * abs(add);
    msc *= add + 0.7;
    msc = clamp(msc, 0.0, 1.0);
    p = p * 2.0;
    add = noise(p);
    add *= msc;
    sum += 0.125 * abs(add);
    msc *= add + 0.2;
    msc = clamp(msc, 0.0, 1.0);
    p = p * 2.0;
    add = noise(p);
    add *= msc;
    sum += 0.0625 * abs(add);
    return sum * 0.516129;

}
// popping activation record 0:fnoise13:14
// local variables: 
// variable rot, unique name 0:fnoise13:14:rot, index 228, declared at line 145, column 9
// variable rot2, unique name 0:fnoise13:14:rot2, index 229, declared at line 146, column 9
// variable sum, unique name 0:fnoise13:14:sum, index 230, declared at line 147, column 10
// variable r, unique name 0:fnoise13:14:r, index 231, declared at line 149, column 9
// variable add, unique name 0:fnoise13:14:add, index 232, declared at line 151, column 10
// variable msc, unique name 0:fnoise13:14:msc, index 233, declared at line 152, column 10
// references:
// rotationMatrix at line 145, column 15
// normalize at line 145, column 31
// vec3 at line 145, column 41
// iGlobalTime at line 145, column 66
// rotationMatrix at line 146, column 16
// normalize at line 146, column 32
// vec3 at line 146, column 42
// iGlobalTime at line 146, column 67
// rot at line 149, column 13
// p at line 149, column 17
// noise at line 151, column 16
// r at line 151, column 22
// add at line 152, column 16
// msc at line 153, column 4
// clamp at line 153, column 10
// msc at line 153, column 16
// sum at line 154, column 4
// add at line 154, column 15
// p at line 156, column 4
// p at line 156, column 8
// r at line 157, column 4
// rot at line 157, column 8
// p at line 157, column 12
// add at line 158, column 4
// noise at line 158, column 10
// r at line 158, column 16
// add at line 160, column 4
// msc at line 160, column 11
// sum at line 161, column 4
// add at line 161, column 15
// msc at line 162, column 4
// add at line 162, column 11
// msc at line 163, column 4
// clamp at line 163, column 10
// msc at line 163, column 16
// p at line 165, column 4
// p at line 165, column 11
// p at line 166, column 4
// rot2 at line 166, column 8
// p at line 166, column 14
// add at line 167, column 4
// noise at line 167, column 10
// p at line 167, column 16
// add at line 168, column 4
// msc at line 168, column 11
// sum at line 169, column 4
// abs at line 169, column 16
// add at line 169, column 20
// msc at line 170, column 4
// add at line 170, column 11
// msc at line 171, column 4
// clamp at line 171, column 10
// msc at line 171, column 16
// p at line 173, column 4
// p at line 173, column 8
// add at line 175, column 4
// noise at line 175, column 10
// p at line 175, column 16
// add at line 176, column 4
// msc at line 176, column 11
// sum at line 177, column 4
// abs at line 177, column 17
// add at line 177, column 21
// msc at line 178, column 4
// add at line 178, column 11
// msc at line 179, column 4
// clamp at line 179, column 10
// msc at line 179, column 16
// p at line 181, column 4
// p at line 181, column 8
// add at line 183, column 4
// noise at line 183, column 10
// p at line 183, column 16
// add at line 184, column 4
// msc at line 184, column 11
// sum at line 185, column 4
// abs at line 185, column 18
// add at line 185, column 22
// sum at line 190, column 11
// popping activation record 0:fnoise13
// local variables: 
// variable p, unique name 0:fnoise13:p, index 227, declared at line 143, column 19
// references:
// pushing activation record 0:getHeight15
float getHeight(vec3 p)
{
// pushing activation record 0:getHeight15:16
    return 0.3 - 0.5 * fnoise(vec3(0.5 * (p.x + 0.0 * iGlobalTime), 0.5 * p.z, 0.4 * iGlobalTime));

}
// popping activation record 0:getHeight15:16
// local variables: 
// references:
// fnoise at line 196, column 17
// vec3 at line 196, column 25
// p at line 196, column 35
// iGlobalTime at line 196, column 45
// p at line 196, column 63
// iGlobalTime at line 196, column 73
// popping activation record 0:getHeight15
// local variables: 
// variable p, unique name 0:getHeight15:p, index 235, declared at line 193, column 21
// references:
#define box_y  1.0

#define box_x  2.0

#define box_z  2.0

#define bg  vec4(0.0, 0.0, 0.0, 1.0)

#define step  0.3

#define red  vec4(1.0, 0.0, 0.0, 1.0)

#define PI_HALF  1.5707963267949

// pushing activation record 0:getSky17
vec4 getSky(vec3 rd)
{
// pushing activation record 0:getSky17:18
    if (rd.y > 0.3) return vec4(0.5, 0.8, 1.5, 1.0);
    if (rd.y < 0.0) return vec4(0.0, 0.2, 0.4, 1.0);
    if (rd.z > 0.9 && rd.x > 0.3) {
    // pushing activation record 0:getSky17:18:19
        if (rd.y > 0.2) return 1.5 * vec4(2.0, 1.0, 1.0, 1.0);
        return 1.5 * vec4(2.0, 1.0, 0.5, 1.0);

    }
    // popping activation record 0:getSky17:18:19
    // local variables: 
    // references:
    // rd at line 213, column 9
    // vec4 at line 213, column 32
    // vec4 at line 214, column 16

}
// popping activation record 0:getSky17:18
// local variables: 
// references:
// rd at line 209, column 8
// vec4 at line 209, column 27
// rd at line 210, column 8
// vec4 at line 210, column 27
// rd at line 212, column 8
// rd at line 212, column 22
// popping activation record 0:getSky17
// local variables: 
// variable rd, unique name 0:getSky17:rd, index 243, declared at line 207, column 17
// references:
// pushing activation record 0:shadeBox20
vec4 shadeBox(vec3 normal, vec3 pos, vec3 rd)
{
// pushing activation record 0:shadeBox20:21
    float deep = 1.0 + 0.5 * pos.y;
    vec4 col = deep * 0.4 * vec4(0.0, 0.3, 0.4, 1.0);
    return col;

}
// popping activation record 0:shadeBox20:21
// local variables: 
// variable deep, unique name 0:shadeBox20:21:deep, index 248, declared at line 221, column 10
// variable col, unique name 0:shadeBox20:21:col, index 249, declared at line 223, column 9
// references:
// pos at line 221, column 25
// deep at line 223, column 15
// vec4 at line 223, column 24
// col at line 225, column 11
// popping activation record 0:shadeBox20
// local variables: 
// variable normal, unique name 0:shadeBox20:normal, index 245, declared at line 219, column 19
// variable pos, unique name 0:shadeBox20:pos, index 246, declared at line 219, column 32
// variable rd, unique name 0:shadeBox20:rd, index 247, declared at line 219, column 42
// references:
// pushing activation record 0:shade22
vec4 shade(vec3 normal, vec3 pos, vec3 rd)
{
// pushing activation record 0:shade22:23
    float ReflectionFresnel = 0.99;
    float fresnel = ReflectionFresnel * pow(1.0 - clamp(dot(-rd, normal), 0.0, 1.0), 5.0) + (1.0 - ReflectionFresnel);
    vec3 refVec = reflect(rd, normal);
    vec4 reflection = getSky(refVec);
    float deep = 1.0 + 0.5 * pos.y;
    vec4 col = fresnel * reflection;
    col += deep * 0.4 * vec4(0.0, 0.3, 0.4, 1.0);
    return clamp(col, 0.0, 1.0);

}
// popping activation record 0:shade22:23
// local variables: 
// variable ReflectionFresnel, unique name 0:shade22:23:ReflectionFresnel, index 254, declared at line 231, column 10
// variable fresnel, unique name 0:shade22:23:fresnel, index 255, declared at line 232, column 10
// variable refVec, unique name 0:shade22:23:refVec, index 256, declared at line 233, column 9
// variable reflection, unique name 0:shade22:23:reflection, index 257, declared at line 234, column 9
// variable deep, unique name 0:shade22:23:deep, index 258, declared at line 239, column 10
// variable col, unique name 0:shade22:23:col, index 259, declared at line 241, column 9
// references:
// ReflectionFresnel at line 232, column 20
// pow at line 232, column 38
// clamp at line 232, column 47
// dot at line 232, column 53
// rd at line 232, column 58
// normal at line 232, column 62
// ReflectionFresnel at line 232, column 94
// reflect at line 233, column 18
// rd at line 233, column 26
// normal at line 233, column 30
// getSky at line 234, column 22
// refVec at line 234, column 29
// pos at line 239, column 25
// fresnel at line 241, column 15
// reflection at line 241, column 23
// col at line 242, column 4
// deep at line 242, column 11
// vec4 at line 242, column 20
// clamp at line 244, column 11
// col at line 244, column 17
// popping activation record 0:shade22
// local variables: 
// variable normal, unique name 0:shade22:normal, index 251, declared at line 229, column 16
// variable pos, unique name 0:shade22:pos, index 252, declared at line 229, column 29
// variable rd, unique name 0:shade22:rd, index 253, declared at line 229, column 39
// references:
// pushing activation record 0:intersect_box24
vec4 intersect_box(vec3 ro, vec3 rd)
{
// pushing activation record 0:intersect_box24:25
    float t_min = 1000.0;
    vec3 t_normal;
    float t = (-box_x - ro.x) / rd.x;
    vec3 p = ro + t * rd;
    if (p.y > -box_y && p.z < box_z && p.z > -box_z) {
    // pushing activation record 0:intersect_box24:25:26
        t_normal = vec3(-1.0, 0.0, 0.0);
        t_min = t;

    }
    // popping activation record 0:intersect_box24:25:26
    // local variables: 
    // references:
    // t_normal at line 258, column 8
    // vec3 at line 258, column 19
    // t_min at line 259, column 8
    // t at line 259, column 16
    t = (box_x - ro.x) / rd.x;
    p = ro + t * rd;
    if (p.y > -box_y && p.z < box_z && p.z > -box_z) {
    // pushing activation record 0:intersect_box24:25:27
        if (t < t_min) {
        // pushing activation record 0:intersect_box24:25:27:28
            t_normal = vec3(1.0, 0.0, 0.0);
            t_min = t;

        }
        // popping activation record 0:intersect_box24:25:27:28
        // local variables: 
        // references:
        // t_normal at line 274, column 9
        // vec3 at line 274, column 20
        // t_min at line 275, column 3
        // t at line 275, column 11

    }
    // popping activation record 0:intersect_box24:25:27
    // local variables: 
    // references:
    // t at line 273, column 12
    // t_min at line 273, column 16
    t = (-box_z - ro.z) / rd.z;
    p = ro + t * rd;
    if (p.y > -box_y && p.x < box_x && p.x > -box_x) {
    // pushing activation record 0:intersect_box24:25:29
        if (t < t_min) {
        // pushing activation record 0:intersect_box24:25:29:30
            t_normal = vec3(0.0, 0.0, -1.0);
            t_min = t;

        }
        // popping activation record 0:intersect_box24:25:29:30
        // local variables: 
        // references:
        // t_normal at line 286, column 9
        // vec3 at line 286, column 20
        // t_min at line 287, column 12
        // t at line 287, column 20

    }
    // popping activation record 0:intersect_box24:25:29
    // local variables: 
    // references:
    // t at line 285, column 12
    // t_min at line 285, column 16
    t = (box_z - ro.z) / rd.z;
    p = ro + t * rd;
    if (p.y > -box_y && p.x < box_x && p.x > -box_x) {
    // pushing activation record 0:intersect_box24:25:31
        if (t < t_min) {
        // pushing activation record 0:intersect_box24:25:31:32
            t_normal = vec3(0.0, 0.0, 1.0);
            t_min = t;

        }
        // popping activation record 0:intersect_box24:25:31:32
        // local variables: 
        // references:
        // t_normal at line 298, column 9
        // vec3 at line 298, column 20
        // t_min at line 299, column 12
        // t at line 299, column 20

    }
    // popping activation record 0:intersect_box24:25:31
    // local variables: 
    // references:
    // t at line 297, column 12
    // t_min at line 297, column 16
    if (t_min < 1000.0) return shadeBox(t_normal, ro + t_min * rd, rd);
    return bg;

}
// popping activation record 0:intersect_box24:25
// local variables: 
// variable t_min, unique name 0:intersect_box24:25:t_min, index 263, declared at line 250, column 10
// variable t_normal, unique name 0:intersect_box24:25:t_normal, index 264, declared at line 251, column 9
// variable t, unique name 0:intersect_box24:25:t, index 265, declared at line 254, column 10
// variable p, unique name 0:intersect_box24:25:p, index 266, declared at line 255, column 9
// references:
// box_x at line 254, column 16
// ro at line 254, column 23
// rd at line 254, column 31
// ro at line 255, column 13
// t at line 255, column 18
// rd at line 255, column 20
// p at line 257, column 8
// box_y at line 257, column 15
// p at line 257, column 24
// box_z at line 257, column 30
// p at line 257, column 39
// box_z at line 257, column 46
// t at line 269, column 4
// box_x at line 269, column 9
// ro at line 269, column 16
// rd at line 269, column 24
// p at line 270, column 4
// ro at line 270, column 8
// t at line 270, column 13
// rd at line 270, column 15
// p at line 272, column 8
// box_y at line 272, column 15
// p at line 272, column 24
// box_z at line 272, column 30
// p at line 272, column 39
// box_z at line 272, column 46
// t at line 280, column 1
// box_z at line 280, column 7
// ro at line 280, column 14
// rd at line 280, column 22
// p at line 281, column 4
// ro at line 281, column 8
// t at line 281, column 13
// rd at line 281, column 15
// p at line 283, column 8
// box_y at line 283, column 15
// p at line 283, column 24
// box_x at line 283, column 30
// p at line 283, column 39
// box_x at line 283, column 46
// t at line 292, column 1
// box_z at line 292, column 6
// ro at line 292, column 13
// rd at line 292, column 21
// p at line 293, column 4
// ro at line 293, column 8
// t at line 293, column 13
// rd at line 293, column 15
// p at line 295, column 8
// box_y at line 295, column 15
// p at line 295, column 24
// box_x at line 295, column 30
// p at line 295, column 39
// box_x at line 295, column 46
// t_min at line 304, column 8
// shadeBox at line 304, column 31
// t_normal at line 304, column 40
// ro at line 304, column 50
// t_min at line 304, column 55
// rd at line 304, column 61
// rd at line 304, column 65
// bg at line 307, column 11
// popping activation record 0:intersect_box24
// local variables: 
// variable ro, unique name 0:intersect_box24:ro, index 261, declared at line 247, column 24
// variable rd, unique name 0:intersect_box24:rd, index 262, declared at line 247, column 33
// references:
// pushing activation record 0:trace_heightfield33
vec4 trace_heightfield(vec3 ro, vec3 rd)
{
// pushing activation record 0:trace_heightfield33:34
    float t = (1.0 - ro.y) / rd.y;
    if (t < 0.0) return red;
    vec3 p = ro + t * rd;
    if (p.x < -2.0 && rd.x <= 0.0) return bg;
    if (p.x > 2.0 && rd.x >= 0.0) return bg;
    if (p.z < -2.0 && rd.z <= 0.0) return bg;
    if (p.z > 2.0 && rd.z >= 0.0) return bg;
    float h, last_h;
    bool not_found = true;
    vec3 last_p = p;
    // pushing activation record 0:trace_heightfield33:34:for35
    for (int i = 0; i < 20; i++) {
    // pushing activation record 0:trace_heightfield33:34:for35:36
        p += step * rd;
        h = getHeight(p);
        if (p.y < h) {
        // pushing activation record 0:trace_heightfield33:34:for35:36:37
            not_found = false;
            break;

        }
        // popping activation record 0:trace_heightfield33:34:for35:36:37
        // local variables: 
        // references:
        // not_found at line 342, column 22
        last_h = h;
        last_p = p;

    }
    // popping activation record 0:trace_heightfield33:34:for35:36
    // local variables: 
    // references:
    // p at line 338, column 8
    // step at line 338, column 13
    // rd at line 338, column 18
    // h at line 340, column 5
    // getHeight at line 340, column 9
    // p at line 340, column 19
    // p at line 342, column 12
    // h at line 342, column 18
    // last_h at line 343, column 8
    // h at line 343, column 17
    // last_p at line 344, column 8
    // p at line 344, column 17
    // popping activation record 0:trace_heightfield33:34:for35
    // local variables: 
    // variable i, unique name 0:trace_heightfield33:34:for35:i, index 276, declared at line 336, column 13
    // references:
    // i at line 336, column 18
    // i at line 336, column 24
    if (not_found) return bg;
    float dh2 = h - p.y;
    float dh1 = last_p.y - last_h;
    p = last_p + rd * step / (dh2 / dh1 + 1.0);
    if (p.x < -2.0) {
    // pushing activation record 0:trace_heightfield33:34:38
        if (rd.x <= 0.0) return bg;
        return intersect_box(ro, rd);

    }
    // popping activation record 0:trace_heightfield33:34:38
    // local variables: 
    // references:
    // rd at line 356, column 12
    // bg at line 356, column 32
    // intersect_box at line 357, column 15
    // ro at line 357, column 29
    // rd at line 357, column 33
    if (p.x > 2.0) {
    // pushing activation record 0:trace_heightfield33:34:39
        if (rd.x >= 0.0) return bg;
        return intersect_box(ro, rd);

    }
    // popping activation record 0:trace_heightfield33:34:39
    // local variables: 
    // references:
    // rd at line 360, column 12
    // bg at line 360, column 32
    // intersect_box at line 361, column 15
    // ro at line 361, column 29
    // rd at line 361, column 33
    if (p.z < -2.0) {
    // pushing activation record 0:trace_heightfield33:34:40
        if (rd.z <= 0.0) return bg;
        return intersect_box(ro, rd);

    }
    // popping activation record 0:trace_heightfield33:34:40
    // local variables: 
    // references:
    // rd at line 364, column 12
    // bg at line 364, column 32
    // intersect_box at line 365, column 15
    // ro at line 365, column 29
    // rd at line 365, column 33
    if (p.z > 2.0) {
    // pushing activation record 0:trace_heightfield33:34:41
        if (rd.z >= 0.0) return bg;
        return intersect_box(ro, rd);

    }
    // popping activation record 0:trace_heightfield33:34:41
    // local variables: 
    // references:
    // rd at line 368, column 12
    // bg at line 368, column 32
    // intersect_box at line 369, column 15
    // ro at line 369, column 29
    // rd at line 369, column 33
    vec3 pdx = p + vec3(0.01, 0.0, 0.00);
    vec3 pdz = p + vec3(0.00, 0.0, 0.01);
    float hdx = getHeight(pdx);
    float hdz = getHeight(pdz);
    h = getHeight(p);
    p.y = h;
    pdx.y = hdx;
    pdz.y = hdz;
    vec3 normal = normalize(cross(p - pdz, p - pdx));
    return shade(normal, p, rd);

}
// popping activation record 0:trace_heightfield33:34
// local variables: 
// variable t, unique name 0:trace_heightfield33:34:t, index 270, declared at line 319, column 10
// variable p, unique name 0:trace_heightfield33:34:p, index 271, declared at line 323, column 9
// variable h, unique name 0:trace_heightfield33:34:h, index 272, declared at line 332, column 10
// variable last_h, unique name 0:trace_heightfield33:34:last_h, index 273, declared at line 332, column 13
// variable not_found, unique name 0:trace_heightfield33:34:not_found, index 274, declared at line 333, column 9
// variable last_p, unique name 0:trace_heightfield33:34:last_p, index 275, declared at line 334, column 9
// variable dh2, unique name 0:trace_heightfield33:34:dh2, index 277, declared at line 350, column 10
// variable dh1, unique name 0:trace_heightfield33:34:dh1, index 278, declared at line 351, column 10
// variable pdx, unique name 0:trace_heightfield33:34:pdx, index 279, declared at line 372, column 9
// variable pdz, unique name 0:trace_heightfield33:34:pdz, index 280, declared at line 373, column 9
// variable hdx, unique name 0:trace_heightfield33:34:hdx, index 281, declared at line 375, column 10
// variable hdz, unique name 0:trace_heightfield33:34:hdz, index 282, declared at line 376, column 10
// variable normal, unique name 0:trace_heightfield33:34:normal, index 283, declared at line 383, column 9
// references:
// ro at line 319, column 21
// rd at line 319, column 29
// t at line 321, column 8
// red at line 321, column 22
// ro at line 323, column 13
// t at line 323, column 18
// rd at line 323, column 20
// p at line 325, column 8
// rd at line 325, column 22
// bg at line 325, column 42
// p at line 326, column 8
// rd at line 326, column 22
// bg at line 326, column 42
// p at line 327, column 8
// rd at line 327, column 22
// bg at line 327, column 42
// p at line 328, column 8
// rd at line 328, column 22
// bg at line 328, column 42
// p at line 334, column 18
// not_found at line 347, column 8
// bg at line 347, column 26
// h at line 350, column 16
// p at line 350, column 20
// last_p at line 351, column 16
// last_h at line 351, column 27
// p at line 352, column 2
// last_p at line 352, column 6
// rd at line 352, column 15
// step at line 352, column 18
// dh2 at line 352, column 24
// dh1 at line 352, column 28
// p at line 355, column 8
// p at line 359, column 8
// p at line 363, column 8
// p at line 367, column 8
// p at line 372, column 15
// vec3 at line 372, column 19
// p at line 373, column 15
// vec3 at line 373, column 19
// getHeight at line 375, column 16
// pdx at line 375, column 27
// getHeight at line 376, column 16
// pdz at line 376, column 27
// h at line 377, column 4
// getHeight at line 377, column 8
// p at line 377, column 19
// p at line 379, column 4
// h at line 379, column 10
// pdx at line 380, column 4
// hdx at line 380, column 12
// pdz at line 381, column 4
// hdz at line 381, column 12
// normalize at line 383, column 18
// cross at line 383, column 28
// p at line 383, column 35
// pdz at line 383, column 37
// p at line 383, column 42
// pdx at line 383, column 44
// shade at line 385, column 9
// normal at line 385, column 15
// p at line 385, column 23
// rd at line 385, column 26
// popping activation record 0:trace_heightfield33
// local variables: 
// variable ro, unique name 0:trace_heightfield33:ro, index 268, declared at line 312, column 29
// variable rd, unique name 0:trace_heightfield33:rd, index 269, declared at line 312, column 38
// references:
// pushing activation record 0:setCamera42
mat3 setCamera(in vec3 ro, in vec3 ta, float cr)
{
// pushing activation record 0:setCamera42:43
    vec3 cw = normalize(ta - ro);
    vec3 cp = vec3(sin(cr), cos(cr), 0.0);
    vec3 cu = normalize(cross(cw, cp));
    vec3 cv = normalize(cross(cu, cw));
    return mat3(cu, cv, cw);

}
// popping activation record 0:setCamera42:43
// local variables: 
// variable cw, unique name 0:setCamera42:43:cw, index 288, declared at line 393, column 6
// variable cp, unique name 0:setCamera42:43:cp, index 289, declared at line 394, column 6
// variable cu, unique name 0:setCamera42:43:cu, index 290, declared at line 395, column 6
// variable cv, unique name 0:setCamera42:43:cv, index 291, declared at line 396, column 6
// references:
// normalize at line 393, column 11
// ta at line 393, column 21
// ro at line 393, column 24
// vec3 at line 394, column 11
// sin at line 394, column 16
// cr at line 394, column 20
// cos at line 394, column 25
// cr at line 394, column 29
// normalize at line 395, column 11
// cross at line 395, column 22
// cw at line 395, column 28
// cp at line 395, column 31
// normalize at line 396, column 11
// cross at line 396, column 22
// cu at line 396, column 28
// cw at line 396, column 31
// mat3 at line 397, column 11
// cu at line 397, column 17
// cv at line 397, column 21
// cw at line 397, column 25
// popping activation record 0:setCamera42
// local variables: 
// variable ro, unique name 0:setCamera42:ro, index 285, declared at line 391, column 24
// variable ta, unique name 0:setCamera42:ta, index 286, declared at line 391, column 36
// variable cr, unique name 0:setCamera42:cr, index 287, declared at line 391, column 46
// references:
// pushing activation record 0:mainImage44
void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
// pushing activation record 0:mainImage44:45
    vec2 p = (-iResolution.xy + 2.0 * fragCoord.xy) / iResolution.y;
    vec2 m = iMouse.xy / iResolution.xy;
    m.y += 0.3;
    m.x += 0.72;
    vec3 ro = 9.0 * normalize(vec3(sin(5.0 * m.x), 1.0 * m.y, cos(5.0 * m.x)));
    vec3 ta = vec3(0.0, -1.0, 0.0);
    mat3 ca = setCamera(ro, ta, 0.0);
    vec3 rd = ca * normalize(vec3(p.xy, 4.0));
    fragColor = trace_heightfield(ro, rd);

}
// popping activation record 0:mainImage44:45
// local variables: 
// variable p, unique name 0:mainImage44:45:p, index 295, declared at line 403, column 9
// variable m, unique name 0:mainImage44:45:m, index 296, declared at line 404, column 9
// variable ro, unique name 0:mainImage44:45:ro, index 297, declared at line 413, column 9
// variable ta, unique name 0:mainImage44:45:ta, index 298, declared at line 414, column 6
// variable ca, unique name 0:mainImage44:45:ca, index 299, declared at line 415, column 9
// variable rd, unique name 0:mainImage44:45:rd, index 300, declared at line 417, column 9
// references:
// iResolution at line 403, column 15
// fragCoord at line 403, column 36
// iResolution at line 403, column 51
// iMouse at line 404, column 13
// iResolution at line 404, column 23
// m at line 406, column 4
// m at line 407, column 4
// normalize at line 413, column 18
// vec3 at line 413, column 28
// sin at line 413, column 33
// m at line 413, column 41
// m at line 413, column 51
// cos at line 413, column 56
// m at line 413, column 64
// vec3 at line 414, column 11
// setCamera at line 415, column 14
// ro at line 415, column 25
// ta at line 415, column 29
// ca at line 417, column 14
// normalize at line 417, column 19
// vec3 at line 417, column 30
// p at line 417, column 35
// fragColor at line 420, column 4
// trace_heightfield at line 420, column 16
// ro at line 420, column 35
// rd at line 420, column 39
// popping activation record 0:mainImage44
// local variables: 
// variable fragColor, unique name 0:mainImage44:fragColor, index 293, declared at line 401, column 25
// variable fragCoord, unique name 0:mainImage44:fragCoord, index 294, declared at line 401, column 44
// references:
// pushing activation record 0:mainVR46
void mainVR(out vec4 fragColor, in vec2 fragCoord, in vec3 fragRayOri, in vec3 fragRayDir)
{
// pushing activation record 0:mainVR46:47
    fragColor = trace_heightfield(fragRayOri, fragRayDir);

}
// popping activation record 0:mainVR46:47
// local variables: 
// references:
// fragColor at line 426, column 4
// trace_heightfield at line 426, column 16
// fragRayOri at line 426, column 35
// fragRayDir at line 426, column 47
// popping activation record 0:mainVR46
// local variables: 
// variable fragColor, unique name 0:mainVR46:fragColor, index 302, declared at line 424, column 22
// variable fragCoord, unique name 0:mainVR46:fragCoord, index 303, declared at line 424, column 41
// variable fragRayOri, unique name 0:mainVR46:fragRayOri, index 304, declared at line 424, column 60
// variable fragRayDir, unique name 0:mainVR46:fragRayDir, index 305, declared at line 424, column 80
// references:
// undefined variables 
