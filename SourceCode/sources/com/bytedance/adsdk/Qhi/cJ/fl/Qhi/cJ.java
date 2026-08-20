package com.bytedance.adsdk.Qhi.cJ.fl.Qhi;
/* compiled from: EqUtil.java */
/* loaded from: classes2.dex */
public class cJ {
    private static boolean Qhi(int i, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return i == number.intValue();
        } else if (number instanceof Long) {
            return ((long) i) == number.longValue();
        } else if (number instanceof Float) {
            return ((float) i) == number.floatValue();
        } else if (number instanceof Double) {
            return ((double) i) == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static boolean Qhi(long j, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return j == ((long) number.intValue());
        } else if (number instanceof Long) {
            return j == number.longValue();
        } else if (number instanceof Float) {
            return ((float) j) == number.floatValue();
        } else if (number instanceof Double) {
            return ((double) j) == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static boolean Qhi(float f2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return f2 == ((float) number.intValue());
        } else if (number instanceof Long) {
            return f2 == ((float) number.longValue());
        } else if (number instanceof Float) {
            return f2 == number.floatValue();
        } else if (number instanceof Double) {
            return ((double) f2) == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static boolean Qhi(double d2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return d2 == ((double) number.intValue());
        } else if (number instanceof Long) {
            return d2 == ((double) number.longValue());
        } else if (number instanceof Float) {
            return d2 == ((double) number.floatValue());
        } else if (number instanceof Double) {
            return d2 == number.doubleValue();
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    public static boolean Qhi(Number number, Number number2) {
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
