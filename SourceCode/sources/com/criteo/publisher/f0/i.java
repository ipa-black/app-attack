package com.criteo.publisher.f0;

import com.criteo.publisher.f0.r;
import java.util.Collection;
/* compiled from: BoundedMetricRepository.java */
/* loaded from: classes2.dex */
class i extends r {

    /* renamed from: a  reason: collision with root package name */
    private final r f8787a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8788b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(r rVar, com.criteo.publisher.n0.g gVar) {
        this.f8787a = rVar;
        this.f8788b = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public void a(String str, r.a aVar) {
        if (b() < this.f8788b.l() || a(str)) {
            this.f8787a.a(str, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public void a(String str, p pVar) {
        this.f8787a.a(str, pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public Collection<n> a() {
        return this.f8787a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public int b() {
        return this.f8787a.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public boolean a(String str) {
        return this.f8787a.a(str);
    }
}
