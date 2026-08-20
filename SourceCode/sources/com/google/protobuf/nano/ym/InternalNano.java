package com.google.protobuf.nano.ym;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class InternalNano {
    public static final Object LAZY_INIT_LOCK = new Object();

    private InternalNano() {
    }

    public static byte[] bytesDefaultValue(String str) {
        try {
            return str.getBytes(C.ISO88591_NAME);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException("Java VM does not support a standard character set.", e2);
        }
    }

    public static byte[] copyFromUtf8(String str) {
        try {
            return str.getBytes(C.UTF8_NAME);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 not supported?");
        }
    }

    public static boolean equals(double[] dArr, double[] dArr2) {
        return (dArr == null || dArr.length == 0) ? dArr2 == null || dArr2.length == 0 : Arrays.equals(dArr, dArr2);
    }

    public static boolean equals(float[] fArr, float[] fArr2) {
        return (fArr == null || fArr.length == 0) ? fArr2 == null || fArr2.length == 0 : Arrays.equals(fArr, fArr2);
    }

    public static boolean equals(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    public static boolean equals(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    public static boolean equals(Object[] objArr, Object[] objArr2) {
        int length;
        int i;
        int length2 = objArr == null ? 0 : objArr.length;
        if (objArr2 == null) {
            length = 0;
            i = 0;
        } else {
            length = objArr2.length;
            i = 0;
        }
        int i2 = i;
        while (true) {
            if (i >= length2 || objArr[i] != null) {
                while (i2 < length && objArr2[i2] == null) {
                    i2++;
                }
                boolean z = i >= length2;
                boolean z2 = i2 >= length;
                if (z && z2) {
                    return true;
                }
                if (z != z2 || !objArr[i].equals(objArr2[i2])) {
                    return false;
                }
                i++;
                i2++;
            } else {
                i++;
            }
        }
    }

    public static boolean equals(boolean[] zArr, boolean[] zArr2) {
        return (zArr == null || zArr.length == 0) ? zArr2 == null || zArr2.length == 0 : Arrays.equals(zArr, zArr2);
    }

    public static boolean equals(byte[][] bArr, byte[][] bArr2) {
        int length;
        int i;
        int length2 = bArr == null ? 0 : bArr.length;
        if (bArr2 == null) {
            length = 0;
            i = 0;
        } else {
            length = bArr2.length;
            i = 0;
        }
        int i2 = i;
        while (true) {
            if (i >= length2 || bArr[i] != null) {
                while (i2 < length && bArr2[i2] == null) {
                    i2++;
                }
                boolean z = i >= length2;
                boolean z2 = i2 >= length;
                if (z && z2) {
                    return true;
                }
                if (z != z2 || !Arrays.equals(bArr[i], bArr2[i2])) {
                    return false;
                }
                i++;
                i2++;
            } else {
                i++;
            }
        }
    }

    public static int hashCode(double[] dArr) {
        if (dArr == null || dArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(dArr);
    }

    public static int hashCode(float[] fArr) {
        if (fArr == null || fArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(fArr);
    }

    public static int hashCode(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(iArr);
    }

    public static int hashCode(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(jArr);
    }

    public static int hashCode(Object[] objArr) {
        int length;
        int i;
        if (objArr == null) {
            length = 0;
            i = 0;
        } else {
            length = objArr.length;
            i = 0;
        }
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            if (obj != null) {
                i = (i * 31) + obj.hashCode();
            }
        }
        return i;
    }

    public static int hashCode(boolean[] zArr) {
        if (zArr == null || zArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(zArr);
    }

    public static int hashCode(byte[][] bArr) {
        int length;
        int i;
        if (bArr == null) {
            length = 0;
            i = 0;
        } else {
            length = bArr.length;
            i = 0;
        }
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr2 = bArr[i2];
            if (bArr2 != null) {
                i = (i * 31) + Arrays.hashCode(bArr2);
            }
        }
        return i;
    }

    public static String stringDefaultValue(String str) {
        try {
            return new String(str.getBytes(C.ISO88591_NAME), C.UTF8_NAME);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException("Java VM does not support a standard character set.", e2);
        }
    }
}
