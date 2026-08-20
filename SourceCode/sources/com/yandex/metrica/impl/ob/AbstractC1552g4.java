package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.g4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1552g4 implements InterfaceC1651k4 {

    /* renamed from: a  reason: collision with root package name */
    private final X3 f14773a;

    /* renamed from: b  reason: collision with root package name */
    private final Vc f14774b;

    public AbstractC1552g4(Context context, X3 x3) {
        this(context, x3, new Vc(C1927vc.a(context), H2.a(context), F0.g().s()));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1651k4
    public void a(C1448c0 c1448c0, D3 d3) {
        b(c1448c0, d3);
    }

    public X3 b() {
        return this.f14773a;
    }

    protected abstract void b(C1448c0 c1448c0, D3 d3);

    public Vc c() {
        return this.f14774b;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1651k4
    public void a() {
        this.f14773a.b(this);
        this.f14774b.b(this);
    }

    AbstractC1552g4(Context context, X3 x3, Vc vc) {
        context.getApplicationContext();
        this.f14773a = x3;
        this.f14774b = vc;
        x3.a(this);
        vc.a(this);
    }
}
