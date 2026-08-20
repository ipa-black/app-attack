package com.appnext.base.b;

import android.os.BaseBundle;
import android.os.PersistableBundle;
/* loaded from: classes.dex */
public final class a {
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
        if ((r4 instanceof java.lang.Integer) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004b, code lost:
        r1.putInt(r3, ((java.lang.Integer) r4).intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0057, code lost:
        if ((r4 instanceof int[]) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
        r1.putIntArray(r3, (int[]) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0063, code lost:
        if ((r4 instanceof java.lang.Long) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0065, code lost:
        r1.putLong(r3, ((java.lang.Long) r4).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
        if ((r4 instanceof long[]) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
        r1.putLongArray(r3, (long[]) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007d, code lost:
        if ((r4 instanceof java.lang.Double) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007f, code lost:
        r1.putDouble(r3, ((java.lang.Double) r4).doubleValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008b, code lost:
        if ((r4 instanceof double[]) == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008d, code lost:
        r1.putDoubleArray(r3, (double[]) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0098, code lost:
        if ((r4 instanceof java.lang.String) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009a, code lost:
        r1.putString(r3, (java.lang.String) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
        if ((r4 instanceof java.lang.String[]) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a5, code lost:
        r1.putStringArray(r3, (java.lang.String[]) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b0, code lost:
        if ((r4 instanceof android.os.PersistableBundle) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b2, code lost:
        r1.putAll((android.os.PersistableBundle) r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e5, code lost:
        throw new java.lang.IllegalArgumentException("Objects of type " + r4.getClass().getSimpleName() + " can not be put into a " + android.os.BaseBundle.class.getSimpleName());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.os.PersistableBundle a(android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.base.b.a.a(android.os.Bundle):android.os.PersistableBundle");
    }

    private static boolean b(Object obj) {
        return (obj instanceof PersistableBundle) || (obj instanceof Integer) || (obj instanceof int[]) || (obj instanceof Long) || (obj instanceof long[]) || (obj instanceof Double) || (obj instanceof double[]) || (obj instanceof String) || (obj instanceof String[]);
    }

    private static void a(PersistableBundle persistableBundle, String str, Object obj) throws IllegalArgumentException {
        if (obj == null) {
            throw new IllegalArgumentException("Unable to determine type of null values");
        }
        if (obj instanceof Integer) {
            persistableBundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof int[]) {
            persistableBundle.putIntArray(str, (int[]) obj);
        } else if (obj instanceof Long) {
            persistableBundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof long[]) {
            persistableBundle.putLongArray(str, (long[]) obj);
        } else if (obj instanceof Double) {
            persistableBundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof double[]) {
            persistableBundle.putDoubleArray(str, (double[]) obj);
        } else if (obj instanceof String) {
            persistableBundle.putString(str, (String) obj);
        } else if (obj instanceof String[]) {
            persistableBundle.putStringArray(str, (String[]) obj);
        } else if (obj instanceof PersistableBundle) {
            persistableBundle.putAll((PersistableBundle) obj);
        } else {
            throw new IllegalArgumentException("Objects of type " + obj.getClass().getSimpleName() + " can not be put into a " + BaseBundle.class.getSimpleName());
        }
    }
}
