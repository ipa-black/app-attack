package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class N1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13513a;

    /* renamed from: b  reason: collision with root package name */
    private final C1448c0 f13514b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f13515c;

    /* renamed from: d  reason: collision with root package name */
    private final C1626j4 f13516d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public N1(Context context, C1448c0 c1448c0, Bundle bundle, C1626j4 c1626j4) {
        this.f13513a = context;
        this.f13514b = c1448c0;
        this.f13515c = bundle;
        this.f13516d = c1626j4;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2014z3 c2014z3 = new C2014z3(this.f13515c);
        if (C2014z3.a(c2014z3, this.f13513a)) {
            return;
        }
        C1602i4 a2 = C1602i4.a(c2014z3);
        D3 d3 = new D3(c2014z3);
        this.f13516d.a(a2, d3).a(this.f13514b, d3);
    }
}
