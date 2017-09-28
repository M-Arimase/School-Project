### ICS第二次书面作业
#### `2.88`
<table>
	<tr>
		<td colspan="2"> 格式A </td>
		<td colspan="2"> 格式B </td>
	</tr>
	<tr>
		<td > 位 </td>
		<td > 值 </td>
		<td > 位 </td>
		<td > 值 </td>
	</tr>
	<tr>
		<td > 1 01110 001 </td>
		<td > $\frac{-9}{16}$ </td>
		<td > 1 0110 0010 </td>
		<td > $\frac{-9}{16}$ </td>
	</tr>
	<tr>
		<td > 0 10110 101 </td>
		<td > 208 </td>
		<td > 0 1110 1010 </td>
		<td > 208 </td>
	</tr>
	<tr>
		<td > 1 00111 110 </td>
		<td > $\frac{-7}{1024}$ </td>
		<td > 1 0000 0110 </td>
		<td > $\frac{-7}{1024}$ </td>
	</tr>
	<tr>
		<td > 0 00000 101 </td>
		<td > $\frac{5}{2^{17}}$ </td>
		<td > 0 0000 0000 </td>
		<td > 0 </td>
	</tr>
	<tr>
		<td > 1 11011 000 </td>
		<td > $-2^{12}$ </td>
		<td > 1 1111 0000 </td>
		<td > -inf </td>
	</tr>
	<tr>
		<td > 0 11000 100 </td>
		<td > 768 </td>
		<td > 0 1111 0000 </td>
		<td > +inf </td>
	</tr>
</table>
***
#### `2.92`
> Compute -f. If f is Nan, then return f.

```
typedef unsigned float_bits;

float_bits float_negate(float_bits f) {
	unsigned exp  = f >> 23 & 0x0000FF;
	unsigned frac = f       & 0x7FFFFF;

	if (exp == 0xFF && frac != 0x00)
		return f;
	else
		return f ^ 0x80000000;
}
```
***
#### `2.96`
> Compute (int) f.

> If conversion causes overflow or f is Nan, return 0x80000000

```C++
typedef unsigned float_bits;

int float_f2i(float_bits f) {
	int sign = f >> 31;
	int exp  = f >> 23 & 0x0000FF;
	int frac = f       & 0x7FFFFF;
	int NaN  = 0x80000000;
	int Ans  = 0;

	if (exp >= 0x9E) return NaN;
	if (exp <= 0x7E) return   0;

	exp  = exp  - 0x00007F;       ;
	frac = frac + 0x800000;

	if (exp >= 23)
		Ans = (frac << exp - 23) ^ (~sign + 1);

	if (exp <= 23)
		Ans = (frac ^ (~sign + 1)) >> 23 - exp;

	return Ans + sign;
}
```