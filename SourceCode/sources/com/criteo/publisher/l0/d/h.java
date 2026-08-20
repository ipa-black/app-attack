package com.criteo.publisher.l0.d;

import com.criteo.publisher.n0.q;
/* compiled from: TcfStrategyResolver.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final q f8943a;

    public h(q qVar) {
        this.f8943a = qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g a() {
        f fVar = new f(this.f8943a);
        if (fVar.d()) {
            return fVar;
        }
        e eVar = new e(this.f8943a);
        if (eVar.d()) {
            return eVar;
        }
        return null;
    }
}
