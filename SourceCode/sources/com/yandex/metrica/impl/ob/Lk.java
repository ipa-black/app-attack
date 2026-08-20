package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C2008yl;
import java.util.List;
/* loaded from: classes5.dex */
class Lk implements InterfaceC1984xl {

    /* renamed from: a  reason: collision with root package name */
    private final com.yandex.metrica.uiaccessor.b f13441a;

    /* renamed from: b  reason: collision with root package name */
    private final C2008yl.a f13442b;

    /* renamed from: c  reason: collision with root package name */
    private final El f13443c;

    /* renamed from: d  reason: collision with root package name */
    private final Dl f13444d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Lk(InterfaceC1719mm<Activity> interfaceC1719mm, El el) {
        this(new C2008yl.a(), interfaceC1719mm, el, new Ek(), new Dl());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1984xl
    public void a(Activity activity, long j) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1984xl
    public void a(Activity activity, boolean z) {
        if (z) {
            return;
        }
        try {
            this.f13441a.subscribe(activity);
        } catch (Throwable unused) {
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public boolean a(C1544fl c1544fl) {
        return false;
    }

    Lk(C2008yl.a aVar, InterfaceC1719mm<Activity> interfaceC1719mm, El el, Ek ek, Dl dl) {
        this.f13442b = aVar;
        this.f13443c = el;
        this.f13441a = ek.a(interfaceC1719mm);
        this.f13444d = dl;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public void a(long j, Activity activity, C1494dl c1494dl, List<C1840rl> list, C1544fl c1544fl, Bk bk) {
        C1594hl c1594hl;
        C1594hl c1594hl2;
        if (c1544fl.f14755b && (c1594hl2 = c1544fl.f14759f) != null) {
            this.f13443c.b(this.f13444d.a(activity, c1494dl, c1594hl2, bk.b(), j));
        }
        if (!c1544fl.f14757d || (c1594hl = c1544fl.f14761h) == null) {
            return;
        }
        this.f13443c.a(this.f13444d.a(activity, c1494dl, c1594hl, bk.d(), j));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public void a(Throwable th, C1960wl c1960wl) {
        this.f13442b.getClass();
        new C2008yl(c1960wl, C1764oh.a()).a("ui_parsing", th);
    }

    public void a(Activity activity) {
        try {
            this.f13441a.unsubscribe(activity);
        } catch (Throwable unused) {
        }
    }
}
