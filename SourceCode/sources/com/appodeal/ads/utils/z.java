package com.appodeal.ads.utils;

import java.util.HashMap;
/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final a f7858a = new a();

    /* loaded from: classes2.dex */
    public class a extends HashMap<String, String> {
        public a() {
            super(3);
            put("android.permission.SYSTEM_ALERT_WINDOW", "SAW");
            put("android.permission.GET_TASKS", "GT");
            put("android.permission.RECEIVE_BOOT_COMPLETED", "RBC");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a1, code lost:
        r0.put(androidx.exifinterface.media.ExifInterface.LATITUDE_SOUTH);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONArray a(android.content.Context r7) {
        /*
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>()
            java.lang.String r1 = r7.getPackageName()     // Catch: java.lang.Exception -> La7
            android.content.pm.PackageManager r7 = r7.getPackageManager()     // Catch: java.lang.Exception -> La7
            java.util.List<java.lang.String> r2 = com.appodeal.ads.utils.c.f7745d     // Catch: java.lang.Exception -> La7
            if (r2 != 0) goto L23
            r2 = 4096(0x1000, float:5.74E-42)
            android.content.pm.PackageInfo r2 = r7.getPackageInfo(r1, r2)     // Catch: java.lang.Exception -> La7
            if (r2 == 0) goto L23
            java.lang.String[] r2 = r2.requestedPermissions     // Catch: java.lang.Exception -> La7
            if (r2 == 0) goto L23
            java.util.List r2 = java.util.Arrays.asList(r2)     // Catch: java.lang.Exception -> La7
            com.appodeal.ads.utils.c.f7745d = r2     // Catch: java.lang.Exception -> La7
        L23:
            java.util.List<java.lang.String> r2 = com.appodeal.ads.utils.c.f7745d     // Catch: java.lang.Exception -> La7
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> La7
            r3.<init>()     // Catch: java.lang.Exception -> La7
            if (r2 == 0) goto L54
            boolean r4 = r2.isEmpty()     // Catch: java.lang.Exception -> La7
            if (r4 != 0) goto L54
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> La7
        L36:
            boolean r4 = r2.hasNext()     // Catch: java.lang.Exception -> La7
            if (r4 == 0) goto L54
            java.lang.Object r4 = r2.next()     // Catch: java.lang.Exception -> La7
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> La7
            com.appodeal.ads.utils.z$a r5 = com.appodeal.ads.utils.z.f7858a     // Catch: java.lang.Exception -> La7
            boolean r6 = r5.containsKey(r4)     // Catch: java.lang.Exception -> La7
            if (r6 == 0) goto L36
            java.lang.Object r4 = r5.get(r4)     // Catch: java.lang.Exception -> La7
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Exception -> La7
            r3.add(r4)     // Catch: java.lang.Exception -> La7
            goto L36
        L54:
            java.util.Iterator r2 = r3.iterator()     // Catch: java.lang.Exception -> La7
        L58:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Exception -> La7
            if (r3 == 0) goto L68
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Exception -> La7
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> La7
            r0.put(r3)     // Catch: java.lang.Exception -> La7
            goto L58
        L68:
            java.util.List<android.content.pm.ServiceInfo> r2 = com.appodeal.ads.utils.c.f7746e     // Catch: java.lang.Exception -> La7
            if (r2 != 0) goto L7d
            r2 = 4
            android.content.pm.PackageInfo r7 = r7.getPackageInfo(r1, r2)     // Catch: java.lang.Exception -> La7
            if (r7 == 0) goto L7d
            android.content.pm.ServiceInfo[] r7 = r7.services     // Catch: java.lang.Exception -> La7
            if (r7 == 0) goto L7d
            java.util.List r7 = java.util.Arrays.asList(r7)     // Catch: java.lang.Exception -> La7
            com.appodeal.ads.utils.c.f7746e = r7     // Catch: java.lang.Exception -> La7
        L7d:
            java.util.List<android.content.pm.ServiceInfo> r7 = com.appodeal.ads.utils.c.f7746e     // Catch: java.lang.Exception -> La7
            if (r7 == 0) goto Lab
            boolean r1 = r7.isEmpty()     // Catch: java.lang.Exception -> La7
            if (r1 != 0) goto Lab
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.Exception -> La7
        L8b:
            boolean r1 = r7.hasNext()     // Catch: java.lang.Exception -> La7
            if (r1 == 0) goto Lab
            java.lang.Object r1 = r7.next()     // Catch: java.lang.Exception -> La7
            android.content.pm.ServiceInfo r1 = (android.content.pm.ServiceInfo) r1     // Catch: java.lang.Exception -> La7
            java.lang.String r1 = r1.name     // Catch: java.lang.Exception -> La7
            java.lang.String r2 = "com.yandex.metrica.MetricaService"
            boolean r1 = r2.equals(r1)     // Catch: java.lang.Exception -> La7
            if (r1 != 0) goto L8b
            java.lang.String r7 = "S"
            r0.put(r7)     // Catch: java.lang.Exception -> La7
            goto Lab
        La7:
            r7 = move-exception
            com.appodeal.ads.utils.Log.log(r7)
        Lab:
            int r7 = r0.length()
            if (r7 != 0) goto Lb3
            r7 = 0
            return r7
        Lb3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.utils.z.a(android.content.Context):org.json.JSONArray");
    }
}
