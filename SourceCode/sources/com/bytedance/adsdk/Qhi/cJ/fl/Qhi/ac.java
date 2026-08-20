package com.bytedance.adsdk.Qhi.cJ.fl.Qhi;
/* compiled from: GtUtil.java */
/* loaded from: classes2.dex */
public class ac {
    private static Object Qhi(int i, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(i > number.intValue());
        } else if (number instanceof Long) {
            return Boolean.valueOf(((long) i) > number.longValue());
        } else if (number instanceof Float) {
            return Boolean.valueOf(((float) i) > number.floatValue());
        } else if (number instanceof Double) {
            return Boolean.valueOf(((double) i) > number.doubleValue());
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static Object Qhi(long j, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(j > ((long) number.intValue()));
        } else if (number instanceof Long) {
            return Boolean.valueOf(j > number.longValue());
        } else if (number instanceof Float) {
            return Boolean.valueOf(((float) j) > number.floatValue());
        } else if (number instanceof Double) {
            return Boolean.valueOf(((double) j) > number.doubleValue());
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static Object Qhi(float f2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(f2 > ((float) number.intValue()));
        } else if (number instanceof Long) {
            return Boolean.valueOf(f2 > ((float) number.longValue()));
        } else if (number instanceof Float) {
            return Boolean.valueOf(f2 > number.floatValue());
        } else if (number instanceof Double) {
            return Boolean.valueOf(((double) f2) > number.doubleValue());
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    private static Object Qhi(double d2, Number number) {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return Boolean.valueOf(d2 > ((double) number.intValue()));
        } else if (number instanceof Long) {
            return Boolean.valueOf(d2 > ((double) number.longValue()));
        } else if (number instanceof Float) {
            return Boolean.valueOf(d2 > ((double) number.floatValue()));
        } else if (number instanceof Double) {
            return Boolean.valueOf(d2 > number.doubleValue());
        } else {
            throw new UnsupportedOperationException(number.getClass().getName() + "This type of addition operation is not supported");
        }
    }

    public static Object Qhi(Object obj, Number number) {
        if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
            return Qhi(((Number) obj).intValue(), number);
        }
        if (obj instanceof Long) {
            return Qhi(((Long) obj).longValue(), number);
        }
        if (obj instanceof Float) {
            return Qhi(((Float) obj).floatValue(), number);
        }
        if (obj instanceof Double) {
            return Qhi(((Double) obj).doubleValue(), number);
        }
        if (obj instanceof String) {
            try {
                return Qhi(Float.parseFloat((String) obj), number);
            } catch (NumberFormatException unused) {
                throw new UnsupportedOperationException(obj.getClass().getName() + "This type of addition operation is not supported");
            }
        }
        throw new UnsupportedOperationException(obj.getClass().getName() + "This type of addition operation is not supported");
    }
}
