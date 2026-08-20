package com.bytedance.sdk.openadsdk.utils;

import java.util.ArrayList;
import java.util.List;
/* compiled from: InitChecker.java */
/* loaded from: classes2.dex */
public class hpZ {
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void Qhi() {
        /*
            android.content.Context r0 = com.bytedance.sdk.openadsdk.core.HzH.Qhi()
            if (r0 != 0) goto L7
            return
        L7:
            boolean r1 = com.bytedance.sdk.component.utils.ABk.CJ()
            if (r1 != 0) goto Le
            return
        Le:
            java.lang.String r1 = "The pangolin sdk access, the environment is debug, the initial configuration detection starts"
            java.lang.String r2 = "TTAdSdk-InitChecker"
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r1)
            java.lang.String r1 = r0.getPackageName()
            android.content.pm.ApplicationInfo r3 = r0.getApplicationInfo()
            int r3 = r3.targetSdkVersion
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r4 = 4096(0x1000, float:5.74E-42)
            r5 = 1
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r4)     // Catch: java.lang.Throwable -> L83
            java.lang.String[] r0 = r0.requestedPermissions     // Catch: java.lang.Throwable -> L83
            if (r0 == 0) goto L7d
            int r1 = r0.length     // Catch: java.lang.Throwable -> L83
            if (r1 <= 0) goto L7d
            java.util.List r1 = cJ()     // Catch: java.lang.Throwable -> L83
            int r4 = r0.length     // Catch: java.lang.Throwable -> L83
            r6 = 0
            r7 = r6
        L38:
            if (r7 >= r4) goto L44
            r8 = r0[r7]     // Catch: java.lang.Throwable -> L83
            if (r8 == 0) goto L41
            r1.remove(r8)     // Catch: java.lang.Throwable -> L83
        L41:
            int r7 = r7 + 1
            goto L38
        L44:
            boolean r0 = r1.isEmpty()     // Catch: java.lang.Throwable -> L83
            if (r0 == 0) goto L50
            java.lang.String r0 = "AndroidManifest.xml permissions configuration is normal"
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r0)     // Catch: java.lang.Throwable -> L83
            goto L89
        L50:
            java.util.Iterator r0 = r1.iterator()     // Catch: java.lang.Throwable -> L83
        L54:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L89
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L83
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L83
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7a
            java.lang.String r5 = "    May be missing permissions："
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L7a
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r4 = "，Please refer to the access documentation"
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7a
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r1)     // Catch: java.lang.Throwable -> L7a
            r5 = r6
            goto L54
        L7a:
            r0 = move-exception
            r5 = r6
            goto L84
        L7d:
            java.lang.String r0 = "The uses-permission configuration in AndroidManifest.xml is missing, please refer to the access documentation"
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r0)     // Catch: java.lang.Throwable -> L83
            goto L89
        L83:
            r0 = move-exception
        L84:
            java.lang.String r1 = "The usage-permission configuration error in AndroidManifest.xml, please refer to the access documentation"
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r1, r0)
        L89:
            r0 = 23
            if (r3 >= r0) goto Lb8
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r1 = "No adaptation required for dynamic permissions：target="
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lb2
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r1 = "&phone="
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lb2
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lb2
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r1 = ", require=23"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lb2
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r0)     // Catch: java.lang.Throwable -> Lb2
            goto Lb8
        Lb2:
            r0 = move-exception
            java.lang.String r1 = "The dynamic permission is abnormal. Please check and read the access document in detail： "
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r1, r0)
        Lb8:
            if (r5 != 0) goto Lbf
            java.lang.String r0 = "You have not configured permission, please refer to the access documentation, otherwise it will affect the conversion"
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r0)
        Lbf:
            java.lang.String r0 = "End of pangolin sdk initial configuration test"
            com.bytedance.sdk.component.utils.ABk.Qhi(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.hpZ.Qhi():void");
    }

    private static List<String> cJ() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        arrayList.add("android.permission.WAKE_LOCK");
        return arrayList;
    }
}
