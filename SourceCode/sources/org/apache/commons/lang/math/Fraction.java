package org.apache.commons.lang.math;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.Serializable;
/* loaded from: classes5.dex */
public final class Fraction extends Number implements Serializable, Comparable {
    private static final long serialVersionUID = 65382027393090L;
    private final int denominator;
    private final int numerator;
    public static final Fraction ZERO = new Fraction(0, 1);
    public static final Fraction ONE = new Fraction(1, 1);
    public static final Fraction ONE_HALF = new Fraction(1, 2);
    public static final Fraction ONE_THIRD = new Fraction(1, 3);
    public static final Fraction TWO_THIRDS = new Fraction(2, 3);
    public static final Fraction ONE_QUARTER = new Fraction(1, 4);
    public static final Fraction TWO_QUARTERS = new Fraction(2, 4);
    public static final Fraction THREE_QUARTERS = new Fraction(3, 4);
    public static final Fraction ONE_FIFTH = new Fraction(1, 5);
    public static final Fraction TWO_FIFTHS = new Fraction(2, 5);
    public static final Fraction THREE_FIFTHS = new Fraction(3, 5);
    public static final Fraction FOUR_FIFTHS = new Fraction(4, 5);
    private transient int hashCode = 0;
    private transient String toString = null;
    private transient String toProperString = null;

    private Fraction(int i, int i2) {
        this.numerator = i;
        this.denominator = i2;
    }

    public static Fraction getFraction(int i, int i2) {
        if (i2 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i2 < 0) {
            i = -i;
            i2 = -i2;
        }
        return new Fraction(i, i2);
    }

    public static Fraction getFraction(int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 >= 0) {
                if (i2 < 0) {
                    throw new ArithmeticException("The numerator must not be negative");
                }
                double d2 = i < 0 ? (i * i3) - i2 : (i * i3) + i2;
                if (Math.abs(d2) > 2.147483647E9d) {
                    throw new ArithmeticException("Numerator too large to represent as an Integer.");
                }
                return new Fraction((int) d2, i3);
            }
            throw new ArithmeticException("The denominator must not be negative");
        }
        throw new ArithmeticException("The denominator must not be zero");
    }

    public static Fraction getReducedFraction(int i, int i2) {
        if (i2 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i2 < 0) {
            i = -i;
            i2 = -i2;
        }
        int greatestCommonDivisor = greatestCommonDivisor(Math.abs(i), i2);
        return new Fraction(i / greatestCommonDivisor, i2 / greatestCommonDivisor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
        return getReducedFraction((r8 + (r4 * r10)) * r0, r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.commons.lang.math.Fraction getFraction(double r21) {
        /*
            r0 = 0
            int r0 = (r21 > r0 ? 1 : (r21 == r0 ? 0 : -1))
            if (r0 >= 0) goto L8
            r0 = -1
            goto L9
        L8:
            r0 = 1
        L9:
            double r2 = java.lang.Math.abs(r21)
            r4 = 4746794007244308480(0x41dfffffffc00000, double:2.147483647E9)
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 > 0) goto L84
            boolean r4 = java.lang.Double.isNaN(r2)
            if (r4 != 0) goto L84
            int r4 = (int) r2
            double r5 = (double) r4
            double r2 = r2 - r5
            int r5 = (int) r2
            double r6 = (double) r5
            double r6 = r2 - r6
            r8 = 0
            r9 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r11 = 9218868437227405311(0x7fefffffffffffff, double:1.7976931348623157E308)
            r21 = r2
            r13 = r11
            r15 = 1
            r16 = 1
            r11 = r9
            r9 = r8
            r10 = r9
            r8 = 1
        L35:
            double r1 = r11 / r6
            int r1 = (int) r1
            double r2 = (double) r1
            double r2 = r2 * r6
            double r2 = r11 - r2
            int r11 = r5 * r8
            int r11 = r11 + r9
            int r5 = r5 * r10
            int r5 = r5 + r15
            r9 = r1
            r17 = r2
            double r1 = (double) r11
            r19 = r6
            double r6 = (double) r5
            double r1 = r1 / r6
            r6 = r21
            double r2 = r6 - r1
            double r1 = java.lang.Math.abs(r2)
            r3 = 1
            int r12 = r16 + 1
            int r13 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            r14 = 25
            if (r13 <= 0) goto L72
            r13 = 10000(0x2710, float:1.4013E-41)
            if (r5 > r13) goto L72
            if (r5 <= 0) goto L72
            if (r12 < r14) goto L63
            goto L72
        L63:
            r13 = r1
            r21 = r6
            r15 = r10
            r16 = r12
            r6 = r17
            r10 = r5
            r5 = r9
            r9 = r8
            r8 = r11
            r11 = r19
            goto L35
        L72:
            if (r12 == r14) goto L7c
            int r4 = r4 * r10
            int r8 = r8 + r4
            int r8 = r8 * r0
            org.apache.commons.lang.math.Fraction r0 = getReducedFraction(r8, r10)
            return r0
        L7c:
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            java.lang.String r1 = "Unable to convert double to fraction"
            r0.<init>(r1)
            throw r0
        L84:
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            java.lang.String r1 = "The value must not be greater than Integer.MAX_VALUE or NaN"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang.math.Fraction.getFraction(double):org.apache.commons.lang.math.Fraction");
    }

    public static Fraction getFraction(String str) {
        if (str == null) {
            throw new IllegalArgumentException("The string must not be null");
        }
        if (str.indexOf(46) >= 0) {
            return getFraction(Double.parseDouble(str));
        }
        int indexOf = str.indexOf(32);
        if (indexOf > 0) {
            int parseInt = Integer.parseInt(str.substring(0, indexOf));
            String substring = str.substring(indexOf + 1);
            int indexOf2 = substring.indexOf(47);
            if (indexOf2 < 0) {
                throw new NumberFormatException("The fraction could not be parsed as the format X Y/Z");
            }
            int parseInt2 = Integer.parseInt(substring.substring(indexOf2 + 1));
            return getFraction(Integer.parseInt(substring.substring(0, indexOf2)) + (parseInt * parseInt2), parseInt2);
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 < 0) {
            return getFraction(Integer.parseInt(str), 1);
        }
        return getFraction(Integer.parseInt(str.substring(0, indexOf3)), Integer.parseInt(str.substring(indexOf3 + 1)));
    }

    public int getNumerator() {
        return this.numerator;
    }

    public int getDenominator() {
        return this.denominator;
    }

    public int getProperNumerator() {
        return Math.abs(this.numerator % this.denominator);
    }

    public int getProperWhole() {
        return this.numerator / this.denominator;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.numerator / this.denominator;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.numerator / this.denominator;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.numerator / this.denominator;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.numerator / this.denominator;
    }

    public Fraction reduce() {
        int greatestCommonDivisor = greatestCommonDivisor(Math.abs(this.numerator), this.denominator);
        return getFraction(this.numerator / greatestCommonDivisor, this.denominator / greatestCommonDivisor);
    }

    public Fraction invert() {
        int i = this.numerator;
        if (i == 0) {
            throw new ArithmeticException("Unable to invert a fraction with a zero numerator");
        }
        return getFraction(this.denominator, i);
    }

    public Fraction negate() {
        return getFraction(-this.numerator, this.denominator);
    }

    public Fraction abs() {
        int i = this.numerator;
        return i >= 0 ? this : getFraction(-i, this.denominator);
    }

    public Fraction pow(int i) {
        if (i == 1) {
            return this;
        }
        if (i == 0) {
            return ONE;
        }
        double d2 = i;
        double pow = Math.pow(this.denominator, d2);
        if (Math.pow(this.numerator, d2) > 2.147483647E9d || pow > 2.147483647E9d) {
            throw new ArithmeticException("Integer overflow");
        }
        if (i < 0) {
            double d3 = -i;
            return getFraction((int) Math.pow(this.denominator, d3), (int) Math.pow(this.numerator, d3));
        }
        return getFraction((int) Math.pow(this.numerator, d2), (int) Math.pow(this.denominator, d2));
    }

    private static int greatestCommonDivisor(int i, int i2) {
        while (true) {
            int i3 = i2;
            i2 = i % i2;
            i = i3;
            if (i2 == 0) {
                return i;
            }
        }
    }

    public Fraction add(Fraction fraction) {
        if (fraction == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (this.numerator == 0) {
            return fraction;
        }
        if (fraction.numerator == 0) {
            return this;
        }
        int greatestCommonDivisor = greatestCommonDivisor(Math.abs(fraction.denominator), Math.abs(this.denominator));
        int i = this.denominator / greatestCommonDivisor;
        double d2 = fraction.denominator / greatestCommonDivisor;
        double abs = Math.abs(greatestCommonDivisor * i * d2);
        double d3 = (this.numerator * d2) + (fraction.numerator * i);
        if (Math.abs(d3) > 2.147483647E9d || Math.abs(abs) > 2.147483647E9d) {
            throw new ArithmeticException("Integer overflow");
        }
        return getReducedFraction((int) d3, (int) abs);
    }

    public Fraction subtract(Fraction fraction) {
        if (fraction == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        return add(fraction.negate());
    }

    public Fraction multiplyBy(Fraction fraction) {
        int i;
        if (fraction == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        int i2 = this.numerator;
        if (i2 == 0 || (i = fraction.numerator) == 0) {
            return ZERO;
        }
        double d2 = i2 * i;
        double d3 = this.denominator * fraction.denominator;
        if (Math.abs(d2) > 2.147483647E9d || Math.abs(d3) > 2.147483647E9d) {
            throw new ArithmeticException("Integer overflow");
        }
        return getReducedFraction((int) d2, (int) d3);
    }

    public Fraction divideBy(Fraction fraction) {
        if (fraction == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        int i = fraction.numerator;
        if (i == 0) {
            throw new ArithmeticException("The fraction to divide by must not be zero");
        }
        int i2 = this.numerator;
        if (i2 == 0) {
            return ZERO;
        }
        double d2 = i2 * fraction.denominator;
        double d3 = this.denominator * i;
        if (Math.abs(d2) > 2.147483647E9d || Math.abs(d3) > 2.147483647E9d) {
            throw new ArithmeticException("Integer overflow");
        }
        return getReducedFraction((int) d2, (int) d3);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Fraction) {
            Fraction fraction = (Fraction) obj;
            return this.numerator == fraction.numerator && this.denominator == fraction.denominator;
        }
        return false;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (((17 * 37) + this.numerator) * 37) + this.denominator;
        }
        return this.hashCode;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        int i;
        Fraction fraction = (Fraction) obj;
        int i2 = this.numerator;
        int i3 = fraction.numerator;
        if ((i2 == i3 && this.denominator == fraction.denominator) || i2 * fraction.denominator == i3 * this.denominator) {
            return 0;
        }
        return i < 0 ? -1 : 1;
    }

    public String toString() {
        if (this.toString == null) {
            this.toString = new StringBuffer(32).append(this.numerator).append('/').append(this.denominator).toString();
        }
        return this.toString;
    }

    public String toProperString() {
        if (this.toProperString == null) {
            int i = this.numerator;
            if (i == 0) {
                this.toProperString = "0";
            } else if (i == this.denominator) {
                this.toProperString = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
            } else if (Math.abs(i) > this.denominator) {
                int properNumerator = getProperNumerator();
                if (properNumerator == 0) {
                    this.toProperString = Integer.toString(getProperWhole());
                } else {
                    this.toProperString = new StringBuffer(32).append(getProperWhole()).append(' ').append(properNumerator).append('/').append(this.denominator).toString();
                }
            } else {
                this.toProperString = new StringBuffer(32).append(this.numerator).append('/').append(this.denominator).toString();
            }
        }
        return this.toProperString;
    }
}
