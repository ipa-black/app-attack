package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1795q;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.u  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1890u implements C1795q.b {

    /* renamed from: a  reason: collision with root package name */
    private final List<E1<C1622j0>> f15793a;

    /* renamed from: b  reason: collision with root package name */
    private volatile C1622j0 f15794b;

    /* renamed from: c  reason: collision with root package name */
    private final C1795q f15795c;

    /* renamed from: d  reason: collision with root package name */
    private final ICommonExecutor f15796d;

    /* renamed from: com.yandex.metrica.impl.ob.u$a */
    /* loaded from: classes5.dex */
    class a implements E1<C1622j0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15797a;

        a(C1890u c1890u, String str) {
            this.f15797a = str;
        }

        @Override // com.yandex.metrica.impl.ob.E1
        public void b(C1622j0 c1622j0) {
            c1622j0.b(this.f15797a);
        }
    }

    public C1890u(ICommonExecutor iCommonExecutor) {
        this(iCommonExecutor, P.g().b());
    }

    public void a() {
        this.f15795c.a(this, C1795q.a.CREATED);
    }

    C1890u(ICommonExecutor iCommonExecutor, C1795q c1795q) {
        this.f15793a = new ArrayList();
        this.f15794b = null;
        this.f15796d = iCommonExecutor;
        this.f15795c = c1795q;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c A[LOOP:0: B:9:0x0016->B:11:0x001c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.yandex.metrica.impl.ob.C1622j0 r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            r2.f15794b = r3     // Catch: java.lang.Throwable -> L2a
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L2a
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L27
            java.util.List<com.yandex.metrica.impl.ob.E1<com.yandex.metrica.impl.ob.j0>> r1 = r2.f15793a     // Catch: java.lang.Throwable -> L27
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L27
            java.util.List<com.yandex.metrica.impl.ob.E1<com.yandex.metrica.impl.ob.j0>> r1 = r2.f15793a     // Catch: java.lang.Throwable -> L27
            r1.clear()     // Catch: java.lang.Throwable -> L27
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            java.util.Iterator r0 = r0.iterator()
        L16:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L26
            java.lang.Object r1 = r0.next()
            com.yandex.metrica.impl.ob.E1 r1 = (com.yandex.metrica.impl.ob.E1) r1
            r1.b(r3)
            goto L16
        L26:
            return
        L27:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            throw r3     // Catch: java.lang.Throwable -> L2a
        L2a:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1890u.a(com.yandex.metrica.impl.ob.j0):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0035 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x000c  */
    @Override // com.yandex.metrica.impl.ob.C1795q.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.app.Activity r3, com.yandex.metrica.impl.ob.C1795q.a r4) {
        /*
            r2 = this;
            r4 = 0
            if (r3 == 0) goto L8
            android.content.Intent r3 = r3.getIntent()     // Catch: java.lang.Throwable -> L8
            goto L9
        L8:
            r3 = r4
        L9:
            if (r3 != 0) goto Lc
            goto L10
        Lc:
            java.lang.String r4 = r3.getDataString()
        L10:
            boolean r3 = android.text.TextUtils.isEmpty(r4)
            if (r3 != 0) goto L35
            com.yandex.metrica.impl.ob.u$a r3 = new com.yandex.metrica.impl.ob.u$a
            r3.<init>(r2, r4)
            monitor-enter(r2)
            com.yandex.metrica.impl.ob.j0 r4 = r2.f15794b     // Catch: java.lang.Throwable -> L32
            if (r4 != 0) goto L26
            java.util.List<com.yandex.metrica.impl.ob.E1<com.yandex.metrica.impl.ob.j0>> r4 = r2.f15793a     // Catch: java.lang.Throwable -> L32
            r4.add(r3)     // Catch: java.lang.Throwable -> L32
            goto L30
        L26:
            com.yandex.metrica.core.api.executors.ICommonExecutor r0 = r2.f15796d     // Catch: java.lang.Throwable -> L32
            com.yandex.metrica.impl.ob.t r1 = new com.yandex.metrica.impl.ob.t     // Catch: java.lang.Throwable -> L32
            r1.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> L32
            r0.execute(r1)     // Catch: java.lang.Throwable -> L32
        L30:
            monitor-exit(r2)
            goto L35
        L32:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1890u.a(android.app.Activity, com.yandex.metrica.impl.ob.q$a):void");
    }
}
