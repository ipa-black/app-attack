package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.o5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1752o5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final I1 f15323b;

    public C1752o5(L3 l3) {
        this(l3, F0.g().k());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0060 A[EDGE_INSN: B:33:0x0060->B:22:0x0060 ?: BREAK  , SYNTHETIC] */
    @Override // com.yandex.metrica.impl.ob.S4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.yandex.metrica.impl.ob.C1448c0 r13) {
        /*
            r12 = this;
            java.lang.String r13 = r13.q()
            r0 = 0
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L11
            r1.<init>(r13)     // Catch: java.lang.Throwable -> L11
            java.lang.String r13 = "preloadInfo"
            org.json.JSONObject r13 = r1.optJSONObject(r13)     // Catch: java.lang.Throwable -> L11
            goto L12
        L11:
            r13 = r0
        L12:
            com.yandex.metrica.impl.ob.I1 r1 = r12.f15323b
            com.yandex.metrica.impl.ob.ee r8 = new com.yandex.metrica.impl.ob.ee
            java.lang.String r2 = "trackingId"
            java.lang.String r3 = com.yandex.metrica.impl.ob.Tl.b(r13, r2)
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>()
            if (r13 == 0) goto L30
            java.lang.String r4 = "additionalParams"
            boolean r5 = r13.has(r4)
            if (r5 == 0) goto L30
            org.json.JSONObject r4 = r13.getJSONObject(r4)     // Catch: java.lang.Throwable -> L30
            goto L31
        L30:
            r4 = r0
        L31:
            if (r4 != 0) goto L34
            r4 = r2
        L34:
            java.lang.String r2 = "wasSet"
            r9 = 0
            boolean r5 = com.yandex.metrica.impl.ob.Tl.a(r13, r2, r9)
            java.lang.String r2 = "autoTracking"
            boolean r6 = com.yandex.metrica.impl.ob.Tl.a(r13, r2, r9)
            java.lang.String r2 = "source"
            java.lang.String r13 = com.yandex.metrica.impl.ob.Tl.b(r13, r2)
            com.yandex.metrica.impl.ob.u0[] r2 = com.yandex.metrica.impl.ob.EnumC1891u0.values()
            r7 = r9
        L4c:
            r10 = 4
            if (r7 >= r10) goto L60
            r10 = r2[r7]
            java.lang.String r11 = r10.a()
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r13)
            if (r11 == 0) goto L5d
            r0 = r10
            goto L60
        L5d:
            int r7 = r7 + 1
            goto L4c
        L60:
            if (r0 == 0) goto L64
            r7 = r0
            goto L67
        L64:
            com.yandex.metrica.impl.ob.u0 r13 = com.yandex.metrica.impl.ob.EnumC1891u0.UNDEFINED
            r7 = r13
        L67:
            r2 = r8
            r2.<init>(r3, r4, r5, r6, r7)
            r1.b(r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1752o5.a(com.yandex.metrica.impl.ob.c0):boolean");
    }

    C1752o5(L3 l3, I1 i1) {
        super(l3);
        this.f15323b = i1;
    }
}
