package com.appodeal.ads;
/* loaded from: classes.dex */
public final class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b0 f7894a;

    public x(b0 b0Var) {
        this.f7894a = b0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r1.b() != false) goto L17;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            com.appodeal.ads.b0 r0 = r5.f7894a     // Catch: java.lang.Exception -> L47
            com.appodeal.ads.u<AdObjectType extends com.appodeal.ads.l, AdRequestType extends com.appodeal.ads.r<AdObjectType>, ?> r1 = r0.f6556a     // Catch: java.lang.Exception -> L47
            com.appodeal.ads.r r1 = r1.f()     // Catch: java.lang.Exception -> L47
            if (r1 == 0) goto L13
            r0.getClass()     // Catch: java.lang.Exception -> L47
            boolean r1 = r1.b()     // Catch: java.lang.Exception -> L47
            if (r1 == 0) goto L20
        L13:
            com.appodeal.ads.u<AdObjectType extends com.appodeal.ads.l, AdRequestType extends com.appodeal.ads.r<AdObjectType>, ?> r0 = r0.f6556a     // Catch: java.lang.Exception -> L47
            com.appodeal.ads.context.b r1 = com.appodeal.ads.context.b.f6583b     // Catch: java.lang.Exception -> L47
            com.appodeal.ads.context.f r1 = r1.f6584a     // Catch: java.lang.Exception -> L47
            android.content.Context r1 = r1.getApplicationContext()     // Catch: java.lang.Exception -> L47
            r0.c(r1)     // Catch: java.lang.Exception -> L47
        L20:
            com.appodeal.ads.b0 r0 = r5.f7894a     // Catch: java.lang.Exception -> L47
            com.appodeal.ads.u<AdObjectType extends com.appodeal.ads.l, AdRequestType extends com.appodeal.ads.r<AdObjectType>, ?> r0 = r0.f6556a     // Catch: java.lang.Exception -> L47
            double r1 = r0.h()     // Catch: java.lang.Exception -> L47
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L34
            int r1 = r0.B     // Catch: java.lang.Exception -> L47
            float r1 = (float) r1     // Catch: java.lang.Exception -> L47
            float r2 = r0.z     // Catch: java.lang.Exception -> L47
            goto L39
        L34:
            int r1 = r0.B     // Catch: java.lang.Exception -> L47
            float r1 = (float) r1     // Catch: java.lang.Exception -> L47
            float r2 = r0.A     // Catch: java.lang.Exception -> L47
        L39:
            float r1 = r1 * r2
            int r1 = (int) r1     // Catch: java.lang.Exception -> L47
            r0.B = r1     // Catch: java.lang.Exception -> L47
            int r1 = r0.B     // Catch: java.lang.Exception -> L47
            r2 = 100000(0x186a0, float:1.4013E-40)
            if (r1 < r2) goto L4b
            r0.B = r2     // Catch: java.lang.Exception -> L47
            goto L4b
        L47:
            r0 = move-exception
            com.appodeal.ads.utils.Log.log(r0)
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x.run():void");
    }
}
