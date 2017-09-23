#line 177 "bits.c"
int testAndSet(int x, int y, int z) {
 int c=(  ~!((x ^ y) << 16)) + 1;

 x =( c &(( z << 16) | y)) |(( ~c) & x);

 return x;
}
#line 191
int oneMoreThan(int x, int y) {
 int z=  !(((x + 1) ^ y) | !(y ^( 1 << 31)));

 return z;
}
#line 203
int isTmin(int x) {
 int z=  !(!x |( x + x));

 return z;
}
#line 217
int halfAdd(int x, int y) {
 int z=(  x | y) <<( x & y);

 return z;
}
#line 229
int sameSign(int x, int y) {
 int z=  !((x ^ y) >> 31);

 return z;
}
#line 243
int fullAdd(int x, int y) {
 int s=  0;

 s = x ^ y;
 y =( x & y) << 1;
 x = s;

 s = x ^ y;
 y =( x & y) << 1;
 x = s;

 s = x ^ y;
 y =( x & y) << 1;
 x = s;

 s =( x ^ y) & 0x0F;

 return s;
}
#line 269
int negate(int x) {
 int z=  ~x + 1;

 return z;
}
#line 282
int subOK(int x, int y) {
 int z=  !(((x ^ y) &(( x + 1 + ~y) ^ x)) >> 31);

 return z;
}
#line 294
int negPerByte(int x) {
 int s=  0;
 x = ~x;

 s =( x + 1) & 0xFF;
 s |=( x +( 1 << 8)) &( 0xFF << 8);
 s |=( x +( 1 << 16)) &( 0xFF << 16);
 s |=( x +( 1 << 24)) &( 0xFF << 24);

 return s;
}
#line 312
int isGreater(int x, int y) {
 int u1=  x >> 2;
 int v1=  y >> 2;
 int u2=  x & 3;
 int v2=  y & 3;

 int c1=  u1 + ~v1;
 int c2=  u2 + ~v2;

 int q1=  c1 >> 31;
 int q2=  u1 ^ v1;
 int q3=  c2 >> 31;

 return !(q1 &( q2 | q3));
}
#line 334
int zeroByte(int x) {
 int u1=  x & 0xFF;
 int u2=(  x >> 8) & 0xFF;
 int u3=(  x >> 16) & 0xFF;
 int u4=(  x >> 24) & 0xFF;

 int z=  !u1 | !u2 | !u3 | !u4;

 return z;
}
#line 353
int modThree(int x) {
 int c=(  0xFF << 8) + 0xFF;
 int s=  x;
 int q=  ~2;

 s =( s & c) +(( s >> 16) & c);
 s =( s & c) +( s >> 16);

 s =( s & 0xFF) +( s >> 8);
 s =( s & 0xFF) +( s >> 8);

 s =( s & 0xF) +( s >> 4);
 s =( s & 0xF) +( s >> 4);

 s =( s & 3) +( s >> 2);
 s =( s & 3) +( s >> 2);

 s = s +( ~3 &( x >> 31));

        s = s +((( !(s ^ 3)) << 31 >> 31) & q);
        s = s +((( !(s ^ q)) << 31 >> 31) & 3);

 return s;
}
#line 389
int howManyBits(int x) {
 int s=  0;

 x = x ^( x >> 1);

 s =(( !!(x >> 16)) << 4);

 s = s +(( !!(x >>( s + 8))) << 3);

 s = s +(( !!(x >>( s + 4))) << 2);

 s = s +(( !!(x >>( s + 2))) << 1);

 s = s +(  x >>( s + 1))  + 1 +( !!x);

 return s;
}
#line 417
unsigned float_half(unsigned uf) {
 int b=  uf & 0x7F800000;
 int c=  uf & 0x007FFFFF;
 int f=  b;
 int z;

 if (b != 0x7F800000) {
         if (b >= 0x00800000) 
   b -= 0x00800000;
  if (b == 0x00000000) {
   c =( c >> 1) +(( c & 3) == 3);

   if (f == 0x00800000) 
    c = c + 0x00400000;
  }
 }

 z = c + b +( uf & 0x80000000);

 return z;
}
#line 451
unsigned float_negpwr2(int x) {
 int u=  0;
 int v=  0;
 int z=  0;

 if (x <= -128) 
  u = 0xFF;

 else if (x <= 126) 
  u = -x + 127;

 else if (x <= 149) 
  v = 1 <<( 149 - x);

 z =( u << 23) + v;

 return z;
}
