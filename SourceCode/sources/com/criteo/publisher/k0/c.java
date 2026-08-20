package com.criteo.publisher.k0;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.h;
import com.criteo.publisher.i;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.p;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
import com.criteo.publisher.x;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CdbCall.java */
/* loaded from: classes2.dex */
public class c extends x {

    /* renamed from: c  reason: collision with root package name */
    private final g f8902c;

    /* renamed from: d  reason: collision with root package name */
    private final p f8903d;

    /* renamed from: e  reason: collision with root package name */
    private final i f8904e;

    /* renamed from: f  reason: collision with root package name */
    private final List<n> f8905f;

    /* renamed from: g  reason: collision with root package name */
    private final ContextData f8906g;

    /* renamed from: h  reason: collision with root package name */
    private final h f8907h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(g gVar, p pVar, i iVar, List<n> list, ContextData contextData, h hVar) {
        this.f8902c = gVar;
        this.f8903d = pVar;
        this.f8904e = iVar;
        this.f8905f = list;
        this.f8906g = contextData;
        this.f8907h = hVar;
    }

    @Override // com.criteo.publisher.x
    public void a() throws ExecutionException, InterruptedException {
        o a2 = this.f8903d.a(this.f8905f, this.f8906g);
        String str = this.f8903d.a().get();
        this.f8907h.a(a2);
        try {
            r a3 = this.f8902c.a(a2, str);
            a(a3);
            this.f8907h.a(a2, a3);
        } catch (Exception e2) {
            this.f8907h.a(a2, e2);
        }
    }

    private void a(r rVar) {
        long a2 = this.f8904e.a();
        for (s sVar : rVar.b()) {
            sVar.a(a2);
        }
    }
}
