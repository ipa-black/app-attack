package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C1568gk;
import java.util.Collections;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Xk {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1693ll f14282a;

    /* renamed from: b  reason: collision with root package name */
    private final C1667kk f14283b;

    /* renamed from: c  reason: collision with root package name */
    private final C1432b9 f14284c;

    /* renamed from: d  reason: collision with root package name */
    private volatile C1544fl f14285d;

    /* renamed from: e  reason: collision with root package name */
    private final Bl f14286e;

    /* renamed from: f  reason: collision with root package name */
    private final C1568gk.b f14287f;

    /* renamed from: g  reason: collision with root package name */
    private final C1593hk f14288g;

    /* loaded from: classes5.dex */
    class a implements InterfaceC1693ll {
        a(Xk xk) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1693ll
        public void onError(String str) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1693ll
        public void onResult(JSONObject jSONObject) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Xk(C1544fl c1544fl, C1667kk c1667kk, C1432b9 c1432b9, Bl bl, C1593hk c1593hk) {
        this(c1544fl, c1667kk, c1432b9, bl, c1593hk, new C1568gk.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1544fl c1544fl) {
        this.f14285d = c1544fl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Activity activity) {
        C1544fl c1544fl = this.f14285d;
        if (this.f14288g.a(activity, c1544fl) == Wk.OK) {
            a(activity, 0L, c1544fl, c1544fl.f14758e);
        }
    }

    Xk(C1544fl c1544fl, C1667kk c1667kk, C1432b9 c1432b9, Bl bl, C1593hk c1593hk, C1568gk.b bVar) {
        this.f14282a = new a(this);
        this.f14285d = c1544fl;
        this.f14283b = c1667kk;
        this.f14284c = c1432b9;
        this.f14286e = bl;
        this.f14287f = bVar;
        this.f14288g = c1593hk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        C1544fl c1544fl = this.f14285d;
        if (this.f14288g.a(activity, c1544fl) == Wk.OK) {
            C1960wl c1960wl = c1544fl.f14758e;
            a(activity, c1960wl.f16001d, c1544fl, c1960wl);
        }
    }

    private void a(Activity activity, long j, C1544fl c1544fl, C1960wl c1960wl) {
        Bl bl = this.f14286e;
        C1568gk.b bVar = this.f14287f;
        C1667kk c1667kk = this.f14283b;
        C1432b9 c1432b9 = this.f14284c;
        InterfaceC1693ll interfaceC1693ll = this.f14282a;
        bVar.getClass();
        bl.a(activity, j, c1544fl, c1960wl, Collections.singletonList(new C1568gk(c1667kk, c1432b9, false, interfaceC1693ll, new C1568gk.a())));
    }
}
