package org.apache.ldap.common.util;
/* loaded from: classes3.dex */
public class BooleanUtils {
    private static final Integer INTEGER_ZERO = new Integer(0);
    private static final Integer INTEGER_ONE = new Integer(1);

    public static boolean toBoolean(int i) {
        return i != 0;
    }

    public static int toInteger(boolean z) {
        return z ? 1 : 0;
    }

    public static int toInteger(boolean z, int i, int i2) {
        return z ? i : i2;
    }

    public static Integer toIntegerObject(boolean z, Integer num, Integer num2) {
        return z ? num : num2;
    }

    public static String toString(boolean z, String str, String str2) {
        return z ? str : str2;
    }

    public static Boolean negate(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return bool.booleanValue() ? Boolean.FALSE : Boolean.TRUE;
    }

    public static Boolean toBooleanObject(boolean z) {
        return z ? Boolean.TRUE : Boolean.FALSE;
    }

    public static boolean toBoolean(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static boolean toBooleanDefaultIfNull(Boolean bool, boolean z) {
        return bool == null ? z : bool.booleanValue();
    }

    public static Boolean toBooleanObject(int i) {
        return i == 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    public static Boolean toBooleanObject(Integer num) {
        if (num == null) {
            return null;
        }
        return num.intValue() == 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    public static boolean toBoolean(int i, int i2, int i3) {
        if (i == i2) {
            return true;
        }
        if (i == i3) {
            return false;
        }
        throw new IllegalArgumentException("The Integer did not match either specified value");
    }

    public static boolean toBoolean(Integer num, Integer num2, Integer num3) {
        if (num == null) {
            if (num2 == null) {
                return true;
            }
            if (num3 == null) {
                return false;
            }
        } else if (num.equals(num2)) {
            return true;
        } else {
            if (num.equals(num3)) {
                return false;
            }
        }
        throw new IllegalArgumentException("The Integer did not match either specified value");
    }

    public static Boolean toBooleanObject(int i, int i2, int i3, int i4) {
        if (i == i2) {
            return Boolean.TRUE;
        }
        if (i == i3) {
            return Boolean.FALSE;
        }
        if (i == i4) {
            return null;
        }
        throw new IllegalArgumentException("The Integer did not match any specified value");
    }

    public static Boolean toBooleanObject(Integer num, Integer num2, Integer num3, Integer num4) {
        if (num == null) {
            if (num2 == null) {
                return Boolean.TRUE;
            }
            if (num3 == null) {
                return Boolean.FALSE;
            }
            if (num4 == null) {
                return null;
            }
        } else if (num.equals(num2)) {
            return Boolean.TRUE;
        } else {
            if (num.equals(num3)) {
                return Boolean.FALSE;
            }
            if (num.equals(num4)) {
                return null;
            }
        }
        throw new IllegalArgumentException("The Integer did not match any specified value");
    }

    public static Integer toIntegerObject(boolean z) {
        return z ? INTEGER_ONE : INTEGER_ZERO;
    }

    public static Integer toIntegerObject(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return bool.booleanValue() ? INTEGER_ONE : INTEGER_ZERO;
    }

    public static int toInteger(Boolean bool, int i, int i2, int i3) {
        return bool == null ? i3 : bool.booleanValue() ? i : i2;
    }

    public static Integer toIntegerObject(Boolean bool, Integer num, Integer num2, Integer num3) {
        return bool == null ? num3 : bool.booleanValue() ? num : num2;
    }

    public static Boolean toBooleanObject(String str) {
        if ("true".equalsIgnoreCase(str)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(str)) {
            return Boolean.FALSE;
        }
        if ("on".equalsIgnoreCase(str)) {
            return Boolean.TRUE;
        }
        if ("off".equalsIgnoreCase(str)) {
            return Boolean.FALSE;
        }
        if ("yes".equalsIgnoreCase(str)) {
            return Boolean.TRUE;
        }
        if ("no".equalsIgnoreCase(str)) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static Boolean toBooleanObject(String str, String str2, String str3, String str4) {
        if (str == null) {
            if (str2 == null) {
                return Boolean.TRUE;
            }
            if (str3 == null) {
                return Boolean.FALSE;
            }
            if (str4 == null) {
                return null;
            }
        } else if (str.equals(str2)) {
            return Boolean.TRUE;
        } else {
            if (str.equals(str3)) {
                return Boolean.FALSE;
            }
            if (str.equals(str4)) {
                return null;
            }
        }
        throw new IllegalArgumentException("The String did not match any specified value");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
        if (r2 != 4) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean toBoolean(java.lang.String r12) {
        /*
            java.lang.String r0 = "true"
            r1 = 1
            if (r12 != r0) goto L6
            return r1
        L6:
            r0 = 0
            if (r12 != 0) goto La
            return r0
        La:
            int r2 = r12.length()
            r3 = 2
            if (r2 == r3) goto Lc6
            r4 = 69
            r5 = 101(0x65, float:1.42E-43)
            r6 = 3
            if (r2 == r6) goto L1d
            r7 = 4
            if (r2 == r7) goto L63
            goto Lc5
        L1d:
            char r2 = r12.charAt(r0)
            r7 = 121(0x79, float:1.7E-43)
            r8 = 83
            r9 = 115(0x73, float:1.61E-43)
            if (r2 != r7) goto L44
            char r2 = r12.charAt(r1)
            if (r2 == r5) goto L35
            char r2 = r12.charAt(r1)
            if (r2 != r4) goto L42
        L35:
            char r2 = r12.charAt(r3)
            if (r2 == r9) goto L43
            char r12 = r12.charAt(r3)
            if (r12 != r8) goto L42
            goto L43
        L42:
            r1 = r0
        L43:
            return r1
        L44:
            r7 = 89
            if (r2 != r7) goto L63
            char r2 = r12.charAt(r1)
            if (r2 == r4) goto L54
            char r2 = r12.charAt(r1)
            if (r2 != r5) goto L61
        L54:
            char r2 = r12.charAt(r3)
            if (r2 == r8) goto L62
            char r12 = r12.charAt(r3)
            if (r12 != r9) goto L61
            goto L62
        L61:
            r1 = r0
        L62:
            return r1
        L63:
            char r2 = r12.charAt(r0)
            r7 = 116(0x74, float:1.63E-43)
            r8 = 85
            r9 = 117(0x75, float:1.64E-43)
            r10 = 82
            r11 = 114(0x72, float:1.6E-43)
            if (r2 != r7) goto L9a
            char r2 = r12.charAt(r1)
            if (r2 == r11) goto L7f
            char r2 = r12.charAt(r1)
            if (r2 != r10) goto L98
        L7f:
            char r2 = r12.charAt(r3)
            if (r2 == r9) goto L8b
            char r2 = r12.charAt(r3)
            if (r2 != r8) goto L98
        L8b:
            char r2 = r12.charAt(r6)
            if (r2 == r5) goto L99
            char r12 = r12.charAt(r6)
            if (r12 != r4) goto L98
            goto L99
        L98:
            r1 = r0
        L99:
            return r1
        L9a:
            r7 = 84
            if (r2 != r7) goto Lc5
            char r2 = r12.charAt(r1)
            if (r2 == r10) goto Laa
            char r2 = r12.charAt(r1)
            if (r2 != r11) goto Lc3
        Laa:
            char r2 = r12.charAt(r3)
            if (r2 == r8) goto Lb6
            char r2 = r12.charAt(r3)
            if (r2 != r9) goto Lc3
        Lb6:
            char r2 = r12.charAt(r6)
            if (r2 == r4) goto Lc4
            char r12 = r12.charAt(r6)
            if (r12 != r5) goto Lc3
            goto Lc4
        Lc3:
            r1 = r0
        Lc4:
            return r1
        Lc5:
            return r0
        Lc6:
            char r2 = r12.charAt(r0)
            char r12 = r12.charAt(r1)
            r3 = 111(0x6f, float:1.56E-43)
            if (r2 == r3) goto Ld6
            r3 = 79
            if (r2 != r3) goto Ldf
        Ld6:
            r2 = 110(0x6e, float:1.54E-43)
            if (r12 == r2) goto Le0
            r2 = 78
            if (r12 != r2) goto Ldf
            goto Le0
        Ldf:
            r1 = r0
        Le0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.common.util.BooleanUtils.toBoolean(java.lang.String):boolean");
    }

    public static boolean toBoolean(String str, String str2, String str3) {
        if (str == null) {
            if (str2 == null) {
                return true;
            }
            if (str3 == null) {
                return false;
            }
        } else if (str.equals(str2)) {
            return true;
        } else {
            if (str.equals(str3)) {
                return false;
            }
        }
        throw new IllegalArgumentException("The String did not match either specified value");
    }

    public static String toStringTrueFalse(Boolean bool) {
        return toString(bool, "true", "false", null);
    }

    public static String toStringOnOff(Boolean bool) {
        return toString(bool, "on", "off", null);
    }

    public static String toStringYesNo(Boolean bool) {
        return toString(bool, "yes", "no", null);
    }

    public static String toString(Boolean bool, String str, String str2, String str3) {
        return bool == null ? str3 : bool.booleanValue() ? str : str2;
    }

    public static String toStringTrueFalse(boolean z) {
        return toString(z, "true", "false");
    }

    public static String toStringOnOff(boolean z) {
        return toString(z, "on", "off");
    }

    public static String toStringYesNo(boolean z) {
        return toString(z, "yes", "no");
    }

    public static boolean xor(boolean[] zArr) {
        if (zArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        int i = 0;
        for (boolean z : zArr) {
            if (z) {
                if (i >= 1) {
                    return false;
                }
                i++;
            }
        }
        return i == 1;
    }

    public static Boolean xor(Boolean[] boolArr) {
        if (boolArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (boolArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        try {
            return xor(ArrayUtils.toPrimitive(boolArr)) ? Boolean.TRUE : Boolean.FALSE;
        } catch (NullPointerException unused) {
            throw new IllegalArgumentException("The array must not contain any null elements");
        }
    }
}
