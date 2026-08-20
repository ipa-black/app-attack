package com.appodeal.ads.waterfall_filter;

import com.appodeal.ads.modules.common.internal.adtype.AdType;
/* loaded from: classes2.dex */
public final class c extends e {

    /* renamed from: a  reason: collision with root package name */
    public final AdType f7890a;

    public c(AdType adType) {
        this.f7890a = adType;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:2|3|(2:4|5)|(14:7|(4:10|(3:15|16|17)|18|8)|21|22|(1:24)|25|(3:27|(2:30|28)|31)|32|33|34|(4:37|(3:39|40|41)(1:43)|42|35)|44|45|47)|53|22|(0)|25|(0)|32|33|34|(1:35)|44|45|47) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009c, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009d, code lost:
        com.appodeal.ads.utils.Log.log(r10);
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[Catch: Exception -> 0x00a4, TryCatch #1 {Exception -> 0x00a4, blocks: (B:3:0x000b, B:18:0x0047, B:20:0x0053, B:21:0x005b, B:23:0x0062, B:24:0x0066, B:26:0x006c, B:27:0x0076, B:37:0x00a0, B:36:0x009d, B:16:0x0043, B:28:0x007c, B:29:0x0080, B:31:0x0086, B:33:0x0098, B:4:0x000f, B:6:0x0019, B:7:0x0022, B:9:0x0028, B:11:0x0034, B:13:0x003a), top: B:44:0x000b, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062 A[Catch: Exception -> 0x00a4, TryCatch #1 {Exception -> 0x00a4, blocks: (B:3:0x000b, B:18:0x0047, B:20:0x0053, B:21:0x005b, B:23:0x0062, B:24:0x0066, B:26:0x006c, B:27:0x0076, B:37:0x00a0, B:36:0x009d, B:16:0x0043, B:28:0x007c, B:29:0x0080, B:31:0x0086, B:33:0x0098, B:4:0x000f, B:6:0x0019, B:7:0x0022, B:9:0x0028, B:11:0x0034, B:13:0x003a), top: B:44:0x000b, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0086 A[Catch: Exception -> 0x009c, TryCatch #0 {Exception -> 0x009c, blocks: (B:28:0x007c, B:29:0x0080, B:31:0x0086, B:33:0x0098), top: B:42:0x007c, outer: #1 }] */
    @Override // com.appodeal.ads.waterfall_filter.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.ArrayList r9, com.appodeal.ads.r r10) {
        /*
            r8 = this;
            com.appodeal.ads.segments.k r10 = com.appodeal.ads.segments.n.c()
            com.appodeal.ads.segments.k$a r10 = r10.f7529b
            com.appodeal.ads.modules.common.internal.adtype.AdType r0 = r8.f7890a
            r10.getClass()
            java.lang.String r1 = com.appodeal.ads.segments.m.a(r0)     // Catch: java.lang.Exception -> La4
            org.json.JSONObject r2 = r10.f7533a     // Catch: java.lang.Exception -> L42
            java.lang.String r3 = "overridden_ecpm"
            org.json.JSONObject r2 = r2.optJSONObject(r3)     // Catch: java.lang.Exception -> L42
            if (r2 == 0) goto L46
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Exception -> L42
            r3.<init>()     // Catch: java.lang.Exception -> L42
            java.util.Iterator r4 = r2.keys()     // Catch: java.lang.Exception -> L42
        L22:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Exception -> L42
            if (r5 == 0) goto L47
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Exception -> L42
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L42
            org.json.JSONObject r6 = r2.optJSONObject(r5)     // Catch: java.lang.Exception -> L42
            if (r6 == 0) goto L22
            boolean r7 = r6.has(r1)     // Catch: java.lang.Exception -> L42
            if (r7 == 0) goto L22
            double r6 = r6.optDouble(r1)     // Catch: java.lang.Exception -> L42
            r3.put(r5, r6)     // Catch: java.lang.Exception -> L42
            goto L22
        L42:
            r1 = move-exception
            com.appodeal.ads.utils.Log.log(r1)     // Catch: java.lang.Exception -> La4
        L46:
            r3 = 0
        L47:
            org.json.JSONObject r1 = r10.f7533a     // Catch: java.lang.Exception -> La4
            java.lang.String r2 = "price_floor"
            org.json.JSONObject r1 = r1.optJSONObject(r2)     // Catch: java.lang.Exception -> La4
            r4 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            if (r1 == 0) goto L5b
            java.lang.String r2 = com.appodeal.ads.segments.m.a(r0)     // Catch: java.lang.Exception -> La4
            double r4 = r1.optDouble(r2, r4)     // Catch: java.lang.Exception -> La4
        L5b:
            java.util.HashSet r1 = new java.util.HashSet     // Catch: java.lang.Exception -> La4
            r1.<init>()     // Catch: java.lang.Exception -> La4
            if (r3 == 0) goto L76
            java.util.Iterator r2 = r3.keys()     // Catch: java.lang.Exception -> La4
        L66:
            boolean r6 = r2.hasNext()     // Catch: java.lang.Exception -> La4
            if (r6 == 0) goto L76
            java.lang.Object r6 = r2.next()     // Catch: java.lang.Exception -> La4
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> La4
            r1.add(r6)     // Catch: java.lang.Exception -> La4
            goto L66
        L76:
            r10.a(r9, r0)     // Catch: java.lang.Exception -> La4
            com.appodeal.ads.segments.k.a.a(r9, r1, r3)     // Catch: java.lang.Exception -> La4
            java.util.Iterator r10 = r9.iterator()     // Catch: java.lang.Exception -> L9c
        L80:
            boolean r0 = r10.hasNext()     // Catch: java.lang.Exception -> L9c
            if (r0 == 0) goto La0
            java.lang.Object r0 = r10.next()     // Catch: java.lang.Exception -> L9c
            org.json.JSONObject r0 = (org.json.JSONObject) r0     // Catch: java.lang.Exception -> L9c
            java.lang.String r2 = "ecpm"
            r6 = 0
            double r2 = r0.optDouble(r2, r6)     // Catch: java.lang.Exception -> L9c
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 >= 0) goto L80
            r10.remove()     // Catch: java.lang.Exception -> L9c
            goto L80
        L9c:
            r10 = move-exception
            com.appodeal.ads.utils.Log.log(r10)     // Catch: java.lang.Exception -> La4
        La0:
            com.appodeal.ads.segments.k.a.a(r9, r1)     // Catch: java.lang.Exception -> La4
            goto La8
        La4:
            r9 = move-exception
            com.appodeal.ads.utils.Log.log(r9)
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.waterfall_filter.c.a(java.util.ArrayList, com.appodeal.ads.r):void");
    }
}
