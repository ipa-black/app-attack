package com.criteo.publisher.l0.d;

import com.criteo.publisher.n0.q;
/* compiled from: Tcf2GdprStrategy.java */
/* loaded from: classes2.dex */
class f implements g {

    /* renamed from: a  reason: collision with root package name */
    private final q f8942a;

    public f(q qVar) {
        this.f8942a = qVar;
    }

    @Override // com.criteo.publisher.l0.d.g
    public String c() {
        return this.f8942a.a("IABTCF_TCString", "");
    }

    @Override // com.criteo.publisher.l0.d.g
    public String b() {
        int a2 = this.f8942a.a("IABTCF_gdprApplies", -1);
        return a2 != -1 ? String.valueOf(a2) : "";
    }

    @Override // com.criteo.publisher.l0.d.g
    public Integer a() {
        return 2;
    }

    public boolean d() {
        return (b().isEmpty() && c().isEmpty()) ? false : true;
    }
}
