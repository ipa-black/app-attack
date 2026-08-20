package com.criteo.publisher.l0.d;

import com.criteo.publisher.n0.q;
/* compiled from: Tcf1GdprStrategy.java */
/* loaded from: classes2.dex */
class e implements g {

    /* renamed from: a  reason: collision with root package name */
    private final q f8941a;

    public e(q qVar) {
        this.f8941a = qVar;
    }

    @Override // com.criteo.publisher.l0.d.g
    public String c() {
        return this.f8941a.a("IABConsent_ConsentString", "");
    }

    @Override // com.criteo.publisher.l0.d.g
    public String b() {
        return this.f8941a.a("IABConsent_SubjectToGDPR", "");
    }

    @Override // com.criteo.publisher.l0.d.g
    public Integer a() {
        return 1;
    }

    public boolean d() {
        return (b().isEmpty() && c().isEmpty()) ? false : true;
    }
}
