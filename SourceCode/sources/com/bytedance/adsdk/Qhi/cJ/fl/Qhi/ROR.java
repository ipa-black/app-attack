package com.bytedance.adsdk.Qhi.cJ.fl.Qhi;
/* compiled from: ModUtil.java */
/* loaded from: classes2.dex */
public class ROR {
    private static Object Qhi(int i, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Integer.valueOf(i % number.intValue());
        }
        if (number instanceof Long) {
            return Long.valueOf(i % number.longValue());
        }
        if (number instanceof Float) {
            return Float.valueOf(i % number.floatValue());
        }
        if (number instanceof Double) {
            return Double.valueOf(i % number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object Qhi(long j, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Long.valueOf(j % number.intValue());
        }
        if (number instanceof Long) {
            return Long.valueOf(j % number.longValue());
        }
        if (number instanceof Float) {
            return Float.valueOf(((float) j) % number.floatValue());
        }
        if (number instanceof Double) {
            return Double.valueOf(j % number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object Qhi(float f2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Float.valueOf(f2 % number.intValue());
        }
        if (number instanceof Long) {
            return Float.valueOf(f2 % ((float) number.longValue()));
        }
        if (number instanceof Float) {
            return Float.valueOf(f2 % number.floatValue());
        }
        if (number instanceof Double) {
            return Double.valueOf(f2 % number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    private static Object Qhi(double d2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Double.valueOf(d2 % number.intValue());
        }
        if (number instanceof Long) {
            return Double.valueOf(d2 % number.longValue());
        }
        if (number instanceof Float) {
            return Double.valueOf(d2 % number.floatValue());
        }
        if (number instanceof Double) {
            return Double.valueOf(d2 % number.doubleValue());
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }

    public static Object Qhi(Number number, Number number2) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Qhi(number.intValue(), number2);
        }
        if (number instanceof Long) {
            return Qhi(number.longValue(), number2);
        }
        if (number instanceof Float) {
            return Qhi(number.floatValue(), number2);
        }
        if (number instanceof Double) {
            return Qhi(number.doubleValue(), number2);
        }
        throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
    }
}
