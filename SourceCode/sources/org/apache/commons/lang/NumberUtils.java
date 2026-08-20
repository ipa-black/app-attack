package org.apache.commons.lang;

import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes5.dex */
public final class NumberUtils {
    public static int maximum(int i, int i2, int i3) {
        if (i2 > i) {
            i = i2;
        }
        return i3 > i ? i3 : i;
    }

    public static long maximum(long j, long j2, long j3) {
        if (j2 > j) {
            j = j2;
        }
        return j3 > j ? j3 : j;
    }

    public static int minimum(int i, int i2, int i3) {
        if (i2 < i) {
            i = i2;
        }
        return i3 < i ? i3 : i;
    }

    public static long minimum(long j, long j2, long j3) {
        if (j2 < j) {
            j = j2;
        }
        return j3 < j ? j3 : j;
    }

    public static int stringToInt(String str) {
        return stringToInt(str, 0);
    }

    public static int stringToInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00cb, code lost:
        if (r1 == 'l') goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Number createNumber(java.lang.String r14) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang.NumberUtils.createNumber(java.lang.String):java.lang.Number");
    }

    private static boolean isAllZeros(String str) {
        if (str == null) {
            return true;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) != '0') {
                return false;
            }
        }
        return str.length() > 0;
    }

    public static Float createFloat(String str) {
        return Float.valueOf(str);
    }

    public static Double createDouble(String str) {
        return Double.valueOf(str);
    }

    public static Integer createInteger(String str) {
        return Integer.decode(str);
    }

    public static Long createLong(String str) {
        return Long.valueOf(str);
    }

    public static BigInteger createBigInteger(String str) {
        return new BigInteger(str);
    }

    public static BigDecimal createBigDecimal(String str) {
        return new BigDecimal(str);
    }

    public static int compare(double d2, double d3) {
        if (d2 < d3) {
            return -1;
        }
        if (d2 > d3) {
            return 1;
        }
        int i = (Double.doubleToLongBits(d2) > Double.doubleToLongBits(d3) ? 1 : (Double.doubleToLongBits(d2) == Double.doubleToLongBits(d3) ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return i < 0 ? -1 : 1;
    }

    public static int compare(float f2, float f3) {
        if (f2 < f3) {
            return -1;
        }
        if (f2 > f3) {
            return 1;
        }
        int floatToIntBits = Float.floatToIntBits(f2);
        int floatToIntBits2 = Float.floatToIntBits(f3);
        if (floatToIntBits == floatToIntBits2) {
            return 0;
        }
        return floatToIntBits < floatToIntBits2 ? -1 : 1;
    }

    public static boolean isDigits(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:?, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0064, code lost:
        if (r3 >= r1.length) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0066, code lost:
        r1 = r1[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0068, code lost:
        if (r1 < '0') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006a, code lost:
        if (r1 > '9') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x006c, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x006d, code lost:
        if (r1 == 'e') goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x006f, code lost:
        if (r1 != 'E') goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0072, code lost:
        if (r11 != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0076, code lost:
        if (r1 == 'd') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x007a, code lost:
        if (r1 == 'D') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x007c, code lost:
        if (r1 == 'f') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x007e, code lost:
        if (r1 != r7) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0080, code lost:
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0083, code lost:
        if (r1 == 'l') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0087, code lost:
        if (r1 != 'L') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x008a, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x008b, code lost:
        if (r12 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x008d, code lost:
        if (r13 != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0090, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0091, code lost:
        if (r11 != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0093, code lost:
        if (r12 == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0096, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00af, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00c3, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isNumber(java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang.NumberUtils.isNumber(java.lang.String):boolean");
    }
}
