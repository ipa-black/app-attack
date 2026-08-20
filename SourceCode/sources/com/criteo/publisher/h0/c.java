package com.criteo.publisher.h0;

import com.criteo.publisher.Bid;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.model.s;
import java.util.List;
/* compiled from: HeaderBidding.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final g f8858a = h.b(c.class);

    /* renamed from: b  reason: collision with root package name */
    private final List<d> f8859b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.i0.c f8860c;

    public c(List<d> list, com.criteo.publisher.i0.c cVar) {
        this.f8859b = list;
        this.f8860c = cVar;
    }

    public void a(Object obj, Bid bid) {
        this.f8858a.a(a.a(bid));
        if (obj != null) {
            for (d dVar : this.f8859b) {
                if (dVar.b(obj)) {
                    this.f8860c.a(dVar.a());
                    s b2 = bid == null ? null : bid.b();
                    dVar.a(obj);
                    if (b2 == null) {
                        this.f8858a.a(a.a(dVar.a()));
                        return;
                    } else {
                        dVar.a(obj, bid.c(), b2);
                        return;
                    }
                }
            }
        }
        this.f8858a.a(a.a(obj));
    }
}
