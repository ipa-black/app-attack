package com.ironsource.b;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private c f10495a;

    /* renamed from: b  reason: collision with root package name */
    private String f10496b;

    /* renamed from: c  reason: collision with root package name */
    private String f10497c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<com.ironsource.mediationsdk.a.c> f10498d;

    public b(c cVar, String str, String str2, ArrayList<com.ironsource.mediationsdk.a.c> arrayList) {
        this.f10495a = cVar;
        this.f10496b = str;
        this.f10497c = str2;
        this.f10498d = arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
        if (r1.f10517a == 204) goto L15;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            r0 = 0
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> L27
            r1.<init>()     // Catch: java.lang.Exception -> L27
            android.util.Pair r2 = new android.util.Pair     // Catch: java.lang.Exception -> L27
            java.lang.String r3 = "Content-Type"
            java.lang.String r4 = "application/json"
            r2.<init>(r3, r4)     // Catch: java.lang.Exception -> L27
            r1.add(r2)     // Catch: java.lang.Exception -> L27
            java.lang.String r2 = r5.f10497c     // Catch: java.lang.Exception -> L27
            java.lang.String r3 = r5.f10496b     // Catch: java.lang.Exception -> L27
            com.ironsource.d.c r1 = com.ironsource.d.b.a(r2, r3, r1)     // Catch: java.lang.Exception -> L27
            int r2 = r1.f10517a     // Catch: java.lang.Exception -> L27
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 == r3) goto L26
            int r1 = r1.f10517a     // Catch: java.lang.Exception -> L27
            r2 = 204(0xcc, float:2.86E-43)
            if (r1 != r2) goto L27
        L26:
            r0 = 1
        L27:
            com.ironsource.b.c r1 = r5.f10495a
            if (r1 == 0) goto L2f
            r2 = 0
            r1.a(r2, r0)
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.b.b.run():void");
    }
}
