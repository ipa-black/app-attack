package com.yandex.metrica.impl.ob;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.MapsKt;
/* loaded from: classes5.dex */
public final class Th {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, ? extends List<String>> f13968a = MapsKt.emptyMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, ? extends W0> f13969b = MapsKt.emptyMap();

    /* renamed from: c  reason: collision with root package name */
    private W0 f13970c;

    public final W0 a() {
        return this.f13970c;
    }

    public final Map<String, W0> b() {
        return this.f13969b;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00da A[Catch: all -> 0x00e6, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x000c, B:11:0x0013, B:13:0x0017, B:16:0x001f, B:29:0x0056, B:30:0x006b, B:32:0x0071, B:34:0x009a, B:35:0x00b1, B:37:0x00b7, B:45:0x00da, B:46:0x00de, B:47:0x00e2, B:33:0x0096, B:19:0x0027), top: B:61:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00de A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(com.yandex.metrica.impl.ob.W0 r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            com.yandex.metrica.impl.ob.W0 r0 = r8.f13970c     // Catch: java.lang.Throwable -> Le6
            r1 = 0
            if (r0 == 0) goto L9
            java.lang.String r0 = r0.f14173a     // Catch: java.lang.Throwable -> Le6
            goto La
        L9:
            r0 = r1
        La:
            if (r0 == 0) goto L1f
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Le6
            if (r0 != 0) goto L13
            goto L1f
        L13:
            java.lang.String r0 = r9.f14173a     // Catch: java.lang.Throwable -> Le6
            if (r0 == 0) goto Le4
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Le6
            if (r0 != 0) goto L1f
            goto Le4
        L1f:
            r8.f13970c = r9     // Catch: java.lang.Throwable -> Le6
            java.lang.String r0 = r9.f14173a     // Catch: java.lang.Throwable -> Le6
            if (r0 != 0) goto L27
            r2 = r1
            goto L54
        L27:
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Throwable -> Le6
            r2.<init>()     // Catch: java.lang.Throwable -> Le6
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L54
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L54
            java.util.Iterator r0 = r3.keys()     // Catch: java.lang.Throwable -> L54
        L35:
            boolean r4 = r0.hasNext()     // Catch: java.lang.Throwable -> L54
            if (r4 == 0) goto L54
            java.lang.Object r4 = r0.next()     // Catch: java.lang.Throwable -> L54
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L54
            org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L35
            java.lang.String r6 = r3.optString(r4)     // Catch: java.lang.Throwable -> L35
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L35
            java.util.List r5 = com.yandex.metrica.impl.ob.Tl.b(r5)     // Catch: java.lang.Throwable -> L35
            if (r5 == 0) goto L35
            r2.put(r4, r5)     // Catch: java.lang.Throwable -> L35
            goto L35
        L54:
            if (r2 == 0) goto L96
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Le6
            int r3 = r2.size()     // Catch: java.lang.Throwable -> Le6
            int r3 = kotlin.collections.MapsKt.mapCapacity(r3)     // Catch: java.lang.Throwable -> Le6
            r0.<init>(r3)     // Catch: java.lang.Throwable -> Le6
            java.util.Set r2 = r2.entrySet()     // Catch: java.lang.Throwable -> Le6
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> Le6
        L6b:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> Le6
            if (r3 == 0) goto L9a
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> Le6
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> Le6
            java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> Le6
            com.yandex.metrica.impl.ob.W0 r5 = new com.yandex.metrica.impl.ob.W0     // Catch: java.lang.Throwable -> Le6
            java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> Le6
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> Le6
            org.json.JSONArray r3 = com.yandex.metrica.impl.ob.Tl.b(r3)     // Catch: java.lang.Throwable -> Le6
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> Le6
            com.yandex.metrica.impl.ob.U0 r6 = r9.f14174b     // Catch: java.lang.Throwable -> Le6
            java.lang.String r7 = r9.f14175c     // Catch: java.lang.Throwable -> Le6
            r5.<init>(r3, r6, r7)     // Catch: java.lang.Throwable -> Le6
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> Le6
            goto L6b
        L96:
            java.util.Map r0 = kotlin.collections.MapsKt.emptyMap()     // Catch: java.lang.Throwable -> Le6
        L9a:
            r8.f13969b = r0     // Catch: java.lang.Throwable -> Le6
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Le6
            int r2 = r0.size()     // Catch: java.lang.Throwable -> Le6
            int r2 = kotlin.collections.MapsKt.mapCapacity(r2)     // Catch: java.lang.Throwable -> Le6
            r9.<init>(r2)     // Catch: java.lang.Throwable -> Le6
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> Le6
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Le6
        Lb1:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Throwable -> Le6
            if (r2 == 0) goto Le2
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Throwable -> Le6
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch: java.lang.Throwable -> Le6
            java.lang.Object r3 = r2.getKey()     // Catch: java.lang.Throwable -> Le6
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Throwable -> Le6
            com.yandex.metrica.impl.ob.W0 r2 = (com.yandex.metrica.impl.ob.W0) r2     // Catch: java.lang.Throwable -> Le6
            java.lang.String r2 = r2.f14173a     // Catch: java.lang.Throwable -> Le6
            if (r2 != 0) goto Lcc
            goto Ld6
        Lcc:
            org.json.JSONArray r4 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Ld6
            r4.<init>(r2)     // Catch: java.lang.Throwable -> Ld6
            java.util.List r2 = com.yandex.metrica.impl.ob.Tl.b(r4)     // Catch: java.lang.Throwable -> Ld6
            goto Ld7
        Ld6:
            r2 = r1
        Ld7:
            if (r2 == 0) goto Lda
            goto Lde
        Lda:
            java.util.List r2 = kotlin.collections.CollectionsKt.emptyList()     // Catch: java.lang.Throwable -> Le6
        Lde:
            r9.put(r3, r2)     // Catch: java.lang.Throwable -> Le6
            goto Lb1
        Le2:
            r8.f13968a = r9     // Catch: java.lang.Throwable -> Le6
        Le4:
            monitor-exit(r8)
            return
        Le6:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Th.a(com.yandex.metrica.impl.ob.W0):void");
    }

    public final synchronized void a(List<String> list, Map<String, W0> map) {
        U0 u0;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : list) {
            List<String> list2 = this.f13968a.get(str);
            if (list2 != null && !list2.isEmpty()) {
                linkedHashMap.put(str, list2);
            }
        }
        String b2 = Tl.b(linkedHashMap);
        W0 w0 = this.f13970c;
        if (w0 == null || (u0 = w0.f14174b) == null) {
            u0 = U0.UNKNOWN;
        }
        map.put("yandex_mobile_metrica_custom_sdk_hosts", new W0(b2, u0, w0 != null ? w0.f14175c : null));
    }
}
