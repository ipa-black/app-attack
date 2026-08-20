package com.bytedance.sdk.component.ROR.CJ;

import android.content.Context;
import java.util.LinkedHashMap;
/* compiled from: MultiProcessFileUtils.java */
/* loaded from: classes2.dex */
public class hm {
    public static void Qhi(Context context, int i, String str, int i2) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i == 1) {
                linkedHashMap.put(Qhi(i2), str);
            }
            if (com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(i2).CJ() != null) {
                com.bytedance.sdk.component.ROR.ac.hm.Qhi().Qhi(i2).CJ().Qhi(context, linkedHashMap);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String Qhi(android.content.Context r2, int r3, int r4) {
        /*
            java.lang.String r0 = ""
            r1 = 1
            if (r3 == r1) goto L6
            goto L29
        L6:
            com.bytedance.sdk.component.ROR.ac.hm r3 = com.bytedance.sdk.component.ROR.ac.hm.Qhi()     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.ROR.ac.ROR r3 = r3.Qhi(r4)     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.ROR.ac.cJ r3 = r3.CJ()     // Catch: java.lang.Exception -> L29
            if (r3 == 0) goto L29
            com.bytedance.sdk.component.ROR.ac.hm r3 = com.bytedance.sdk.component.ROR.ac.hm.Qhi()     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.ROR.ac.ROR r3 = r3.Qhi(r4)     // Catch: java.lang.Exception -> L29
            com.bytedance.sdk.component.ROR.ac.cJ r3 = r3.CJ()     // Catch: java.lang.Exception -> L29
            java.lang.String r4 = Qhi(r4)     // Catch: java.lang.Exception -> L29
            java.lang.String r2 = r3.Qhi(r2, r4, r0)     // Catch: java.lang.Exception -> L29
            goto L2a
        L29:
            r2 = r0
        L2a:
            boolean r3 = r2 instanceof java.lang.String
            if (r3 == 0) goto L32
            java.lang.String r0 = java.lang.String.valueOf(r2)
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ROR.CJ.hm.Qhi(android.content.Context, int, int):java.lang.String");
    }

    private static String Qhi(int i) {
        return "tnc_config".concat(String.valueOf(i));
    }
}
