package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes5.dex */
public class Lc {

    /* renamed from: a  reason: collision with root package name */
    protected final Cc f13417a;

    /* renamed from: b  reason: collision with root package name */
    private final G1 f13418b;

    /* renamed from: c  reason: collision with root package name */
    private final Ic f13419c;

    public Lc(Cc cc) {
        this(cc, new G1());
    }

    private Ic a() {
        return new Ic();
    }

    Lc(Cc cc, G1 g1) {
        this.f13417a = cc;
        this.f13418b = g1;
        this.f13419c = a();
    }

    public Ec<Xb> a(Pc pc, Xb xb) {
        Sb sb = this.f13417a.f12750a;
        Context context = sb.f13857a;
        Looper looper = sb.f13858b.getLooper();
        Cc cc = this.f13417a;
        return new Ec<>(new Tc(context, looper, cc.f12751b, this.f13418b.c(cc.f12750a.f13859c), "passive", new C2023zc(pc)), this.f13419c, new Kc(), new Jc(), xb);
    }
}
