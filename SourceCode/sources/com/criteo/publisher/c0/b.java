package com.criteo.publisher.c0;

import com.criteo.publisher.model.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CompositeBidLifecycleListener.java */
/* loaded from: classes2.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f8690a = new ArrayList();

    public void a(a aVar) {
        this.f8690a.add(aVar);
    }

    @Override // com.criteo.publisher.c0.a
    public void a() {
        for (a aVar : this.f8690a) {
            aVar.a();
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(o oVar) {
        for (a aVar : this.f8690a) {
            aVar.a(oVar);
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(o oVar, r rVar) {
        for (a aVar : this.f8690a) {
            aVar.a(oVar, rVar);
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(o oVar, Exception exc) {
        for (a aVar : this.f8690a) {
            aVar.a(oVar, exc);
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(n nVar, s sVar) {
        for (a aVar : this.f8690a) {
            aVar.a(nVar, sVar);
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(s sVar) {
        for (a aVar : this.f8690a) {
            aVar.a(sVar);
        }
    }
}
