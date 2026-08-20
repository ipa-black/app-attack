package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Looper;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
/* loaded from: classes5.dex */
public abstract class Pb {

    /* renamed from: a  reason: collision with root package name */
    protected final C1507e9 f13687a;

    /* renamed from: b  reason: collision with root package name */
    protected final Cc f13688b;

    /* renamed from: c  reason: collision with root package name */
    protected final G1 f13689c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1560gc f13690d;

    /* renamed from: e  reason: collision with root package name */
    private final Mb f13691e;

    /* renamed from: f  reason: collision with root package name */
    private final Nb f13692f;

    public Pb(Cc cc, C1507e9 c1507e9, G1 g1) {
        this.f13688b = cc;
        this.f13687a = c1507e9;
        this.f13689c = g1;
        InterfaceC1560gc a2 = a();
        this.f13690d = a2;
        this.f13691e = new Mb(a2, c());
        this.f13692f = new Nb(cc.f12750a.f13858b);
    }

    public Ec<Xb> a(Pc pc, Xb xb) {
        Sb sb = this.f13688b.f12750a;
        Context context = sb.f13857a;
        Looper looper = sb.f13858b.getLooper();
        Cc cc = this.f13688b;
        return new Ec<>(new Tc(context, looper, cc.f12751b, a(cc.f12750a.f13859c), b(), new C2023zc(pc)), this.f13691e, new Ob(this.f13690d, new SystemTimeProvider()), this.f13692f, xb);
    }

    protected abstract InterfaceC1560gc a();

    protected abstract InterfaceC2024zd a(C2000yd c2000yd);

    protected abstract String b();

    protected abstract String c();
}
