package com.yandex.metrica.impl.ob;

import java.lang.ref.WeakReference;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ WeakReference f12646a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f12647b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ C1544fl f12648c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ C1960wl f12649d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Bk f12650e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ boolean f12651f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Bl f12652g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Al(Bl bl, WeakReference weakReference, List list, C1544fl c1544fl, C1960wl c1960wl, Bk bk, boolean z) {
        this.f12652g = bl;
        this.f12646a = weakReference;
        this.f12647b = list;
        this.f12648c = c1544fl;
        this.f12649d = c1960wl;
        this.f12650e = bk;
        this.f12651f = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
        r1 = new com.yandex.metrica.impl.ob.Uk();
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r10 = this;
            java.lang.ref.WeakReference r0 = r10.f12646a
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            if (r0 != 0) goto Lb
            return
        Lb:
            com.yandex.metrica.impl.ob.Bl r1 = r10.f12652g
            com.yandex.metrica.impl.ob.Bl$a r1 = com.yandex.metrica.impl.ob.Bl.b(r1)
            java.util.List r2 = r10.f12647b
            com.yandex.metrica.impl.ob.Bl r3 = r10.f12652g
            java.util.List r3 = com.yandex.metrica.impl.ob.Bl.a(r3)
            com.yandex.metrica.impl.ob.fl r4 = r10.f12648c
            r1.getClass()
            java.util.Iterator r1 = r2.iterator()
        L22:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L35
            java.lang.Object r2 = r1.next()
            com.yandex.metrica.impl.ob.vl r2 = (com.yandex.metrica.impl.ob.InterfaceC1936vl) r2
            boolean r2 = r2.a(r4)
            if (r2 == 0) goto L22
            goto L4b
        L35:
            java.util.Iterator r1 = r3.iterator()
        L39:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L51
            java.lang.Object r2 = r1.next()
            com.yandex.metrica.impl.ob.vl r2 = (com.yandex.metrica.impl.ob.InterfaceC1936vl) r2
            boolean r2 = r2.a(r4)
            if (r2 == 0) goto L39
        L4b:
            com.yandex.metrica.impl.ob.Uk r1 = new com.yandex.metrica.impl.ob.Uk
            r1.<init>()
            goto L56
        L51:
            com.yandex.metrica.impl.ob.pk r1 = new com.yandex.metrica.impl.ob.pk
            r1.<init>()
        L56:
            r7 = r1
            com.yandex.metrica.impl.ob.Bl r1 = r10.f12652g
            com.yandex.metrica.impl.ob.lk r1 = com.yandex.metrica.impl.ob.Bl.c(r1)
            long r8 = r1.a()
            com.yandex.metrica.impl.ob.Bl r1 = r10.f12652g
            com.yandex.metrica.impl.ob.Bl.a(r1, r0, r8)
            com.yandex.metrica.impl.ob.Bl r1 = r10.f12652g     // Catch: java.lang.Throwable -> L7d
            com.yandex.metrica.impl.ob.el r1 = com.yandex.metrica.impl.ob.Bl.d(r1)     // Catch: java.lang.Throwable -> L7d
            com.yandex.metrica.impl.ob.wl r3 = r10.f12649d     // Catch: java.lang.Throwable -> L7d
            com.yandex.metrica.impl.ob.Bk r2 = r10.f12650e     // Catch: java.lang.Throwable -> L7d
            com.yandex.metrica.impl.ob.Ak r4 = r2.c()     // Catch: java.lang.Throwable -> L7d
            boolean r6 = r10.f12651f     // Catch: java.lang.Throwable -> L7d
            r2 = r0
            r5 = r7
            com.yandex.metrica.impl.ob.dl r1 = r1.a(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L7d
            goto L88
        L7d:
            r1 = move-exception
            com.yandex.metrica.impl.ob.Bl r2 = r10.f12652g
            java.util.List r3 = r10.f12647b
            com.yandex.metrica.impl.ob.wl r4 = r10.f12649d
            com.yandex.metrica.impl.ob.Bl.a(r2, r3, r1, r4)
            r1 = 0
        L88:
            r3 = r1
            if (r3 == 0) goto L9b
            com.yandex.metrica.impl.ob.Bl r1 = r10.f12652g
            java.util.List r2 = r10.f12647b
            java.util.List r4 = r7.a()
            com.yandex.metrica.impl.ob.fl r6 = r10.f12648c
            com.yandex.metrica.impl.ob.Bk r7 = r10.f12650e
            r5 = r0
            com.yandex.metrica.impl.ob.Bl.a(r1, r2, r3, r4, r5, r6, r7, r8)
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Al.run():void");
    }
}
