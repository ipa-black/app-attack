package com.yandex.metrica.impl.ob;

import android.app.Activity;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.gk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1568gk implements InterfaceC1936vl {

    /* renamed from: a  reason: collision with root package name */
    private final C1667kk f14814a;

    /* renamed from: b  reason: collision with root package name */
    private final C1432b9 f14815b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1693ll f14816c;

    /* renamed from: d  reason: collision with root package name */
    private final a f14817d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f14818e;

    /* renamed from: com.yandex.metrica.impl.ob.gk$a */
    /* loaded from: classes5.dex */
    static class a {
    }

    /* renamed from: com.yandex.metrica.impl.ob.gk$b */
    /* loaded from: classes5.dex */
    static class b {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1568gk(C1667kk c1667kk, C1432b9 c1432b9, boolean z, InterfaceC1693ll interfaceC1693ll, a aVar) {
        this.f14814a = c1667kk;
        this.f14815b = c1432b9;
        this.f14818e = z;
        this.f14816c = interfaceC1693ll;
        this.f14817d = aVar;
    }

    private boolean b(C1544fl c1544fl) {
        if (!c1544fl.f14756c || c1544fl.f14760g == null) {
            return false;
        }
        return this.f14818e || this.f14815b.a(false);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public void a(long j, Activity activity, C1494dl c1494dl, List<C1840rl> list, C1544fl c1544fl, Bk bk) {
        C1793pl ck;
        if (b(c1544fl)) {
            a aVar = this.f14817d;
            C1594hl c1594hl = c1544fl.f14760g;
            aVar.getClass();
            if (c1594hl.f14883h) {
                ck = new Fk();
            } else {
                ck = new Ck(list);
            }
            this.f14814a.a(ck.a(activity, c1494dl, c1544fl.f14760g, bk.a(), j));
            this.f14816c.onResult(this.f14814a.a());
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public void a(Throwable th, C1960wl c1960wl) {
        this.f14816c.onError("exception: " + th.getMessage());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public boolean a(C1544fl c1544fl) {
        return b(c1544fl) && !c1544fl.f14760g.f14883h;
    }
}
