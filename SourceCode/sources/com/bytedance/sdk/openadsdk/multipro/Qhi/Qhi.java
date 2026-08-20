package com.bytedance.sdk.openadsdk.multipro.Qhi;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.ROR;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.Tgh;
import com.bytedance.sdk.openadsdk.multipro.fl;
import com.bytedance.sdk.openadsdk.utils.js;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: DBMultiAdapter.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static ROR Qhi;
    private static final ConcurrentHashMap<String, Object> cJ = new ConcurrentHashMap<>();

    public static ROR Qhi(Context context) {
        if (context == null) {
            try {
                HzH.Qhi();
            } catch (Throwable unused) {
                js.Sf("binder error");
            }
        }
        if (Qhi == null) {
            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.ROR.Qhi(com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().Qhi(5));
            } else {
                Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.ROR.cJ();
            }
        }
        return Qhi;
    }

    private static String Qhi() {
        return fl.cJ + "/t_db/ttopensdk.db/";
    }

    public static void Qhi(Context context, String str, ContentValues contentValues) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (Qhi(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                Tgh.Qhi(context).Qhi().Qhi(str, (String) null, contentValues);
                return;
            }
            ROR Qhi2 = Qhi(context);
            if (Qhi2 != null) {
                Qhi2.Qhi(Uri.parse(Qhi() + str), contentValues);
            }
        }
    }

    public static int Qhi(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        synchronized (Qhi(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                return Tgh.Qhi(context).Qhi().Qhi(str, str2, strArr);
            }
            ROR Qhi2 = Qhi(context);
            if (Qhi2 != null) {
                return Qhi2.Qhi(Uri.parse(Qhi() + str), str2, strArr);
            }
            return 0;
        }
    }

    public static int Qhi(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            synchronized (Qhi(str)) {
                if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                    return Tgh.Qhi(context).Qhi().Qhi(str, contentValues, str2, strArr);
                }
                ROR Qhi2 = Qhi(context);
                if (Qhi2 != null) {
                    return Qhi2.Qhi(Uri.parse(Qhi() + str), contentValues, str2, strArr);
                }
            }
        }
        return 0;
    }

    public static Map<String, List<String>> Qhi(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (Qhi(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                return Qhi(Tgh.Qhi(context).Qhi().Qhi(str, strArr, str2, strArr2, str3, str4, str5));
            }
            ROR Qhi2 = Qhi(context);
            if (Qhi2 != null) {
                return Qhi2.Qhi(Uri.parse(Qhi() + str), strArr, str2, strArr2, str5);
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
        if (r6 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
        if (r6 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        r6.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.util.List<java.lang.String>> Qhi(android.database.Cursor r6) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            if (r6 == 0) goto L47
            java.lang.String[] r1 = r6.getColumnNames()     // Catch: java.lang.Throwable -> L42
        Lb:
            int r2 = r6.getCount()     // Catch: java.lang.Throwable -> L42
            if (r2 <= 0) goto L3f
            boolean r2 = r6.moveToNext()     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L3f
            int r2 = r1.length     // Catch: java.lang.Throwable -> L42
            r3 = 0
        L19:
            if (r3 >= r2) goto Lb
            r4 = r1[r3]     // Catch: java.lang.Throwable -> L42
            boolean r5 = r0.containsKey(r4)     // Catch: java.lang.Throwable -> L42
            if (r5 != 0) goto L2b
            java.util.LinkedList r5 = new java.util.LinkedList     // Catch: java.lang.Throwable -> L42
            r5.<init>()     // Catch: java.lang.Throwable -> L42
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L42
        L2b:
            java.lang.Object r5 = r0.get(r4)     // Catch: java.lang.Throwable -> L42
            java.util.List r5 = (java.util.List) r5     // Catch: java.lang.Throwable -> L42
            int r4 = r6.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L42
            java.lang.String r4 = r6.getString(r4)     // Catch: java.lang.Throwable -> L42
            r5.add(r4)     // Catch: java.lang.Throwable -> L42
            int r3 = r3 + 1
            goto L19
        L3f:
            if (r6 == 0) goto L47
            goto L44
        L42:
            if (r6 == 0) goto L47
        L44:
            r6.close()
        L47:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.multipro.Qhi.Qhi.Qhi(android.database.Cursor):java.util.Map");
    }

    private static Object Qhi(String str) {
        Object obj;
        ConcurrentHashMap<String, Object> concurrentHashMap = cJ;
        Object obj2 = concurrentHashMap.get(str);
        if (obj2 == null) {
            synchronized (Qhi.class) {
                obj = concurrentHashMap.get(str);
                if (obj == null) {
                    obj = new Object();
                    concurrentHashMap.put(str, obj);
                }
            }
            return obj;
        }
        return obj2;
    }
}
