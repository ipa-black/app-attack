package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.ResultReceiver;
/* renamed from: com.yandex.metrica.impl.ob.n4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1726n4 implements K, InterfaceC1651k4 {

    /* renamed from: a  reason: collision with root package name */
    private F3 f15233a;

    /* renamed from: b  reason: collision with root package name */
    private final ResultReceiver f15234b;

    public C1726n4(Context context, F3 f3, D3 d3) {
        this.f15233a = f3;
        this.f15234b = d3.f12782c;
        f3.a(this);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1651k4
    public void a(C1448c0 c1448c0, D3 d3) {
        this.f15233a.a(d3.f12781b);
        this.f15233a.a(c1448c0, this);
    }

    public F3 b() {
        return this.f15233a;
    }

    @Override // com.yandex.metrica.impl.ob.K
    public void a(L l) {
        ResultReceiver resultReceiver = this.f15234b;
        int i = ResultReceiverC1523f0.f14707b;
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            l.c(bundle);
            resultReceiver.send(1, bundle);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1651k4
    public void a() {
        this.f15233a.b(this);
    }
}
