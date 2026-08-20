package com.criteo.publisher.a;

import android.content.Context;
import com.criteo.publisher.i;
import com.criteo.publisher.k0.g;
import com.criteo.publisher.l0.c;
import com.criteo.publisher.model.u;
import com.criteo.publisher.n0.b;
import com.criteo.publisher.n0.d;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: AppEvents.java */
/* loaded from: classes2.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8613a;

    /* renamed from: b  reason: collision with root package name */
    private final b f8614b;

    /* renamed from: c  reason: collision with root package name */
    private final i f8615c;

    /* renamed from: d  reason: collision with root package name */
    private final g f8616d;

    /* renamed from: e  reason: collision with root package name */
    private final c f8617e;

    /* renamed from: f  reason: collision with root package name */
    private final u f8618f;

    /* renamed from: g  reason: collision with root package name */
    private final Executor f8619g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicLong f8620h = new AtomicLong(-1);

    public void a() {
    }

    public a(Context context, b bVar, i iVar, g gVar, c cVar, u uVar, Executor executor) {
        this.f8613a = context;
        this.f8614b = bVar;
        this.f8615c = iVar;
        this.f8616d = gVar;
        this.f8617e = cVar;
        this.f8618f = uVar;
        this.f8619g = executor;
    }

    private void a(String str) {
        if (e()) {
            long j = this.f8620h.get();
            if (j <= 0 || this.f8615c.a() >= j) {
                this.f8619g.execute(new com.criteo.publisher.k0.a(this.f8613a, this, this.f8614b, this.f8616d, this.f8618f, this.f8617e, str));
            }
        }
    }

    @Override // com.criteo.publisher.n0.d
    public void a(int i) {
        this.f8620h.set(this.f8615c.a() + (i * 1000));
    }

    public void d() {
        a("Launch");
    }

    public void b() {
        a("Active");
    }

    public void c() {
        a("Inactive");
    }

    private boolean e() {
        return this.f8617e.g() && this.f8617e.i();
    }
}
