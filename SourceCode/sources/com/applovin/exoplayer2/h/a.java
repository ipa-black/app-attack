package com.applovin.exoplayer2.h;

import android.os.Handler;
import android.os.Looper;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class a implements p {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<p.b> f2973a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<p.b> f2974b = new HashSet<>(1);

    /* renamed from: c  reason: collision with root package name */
    private final q.a f2975c = new q.a();

    /* renamed from: d  reason: collision with root package name */
    private final g.a f2976d = new g.a();

    /* renamed from: e  reason: collision with root package name */
    private Looper f2977e;

    /* renamed from: f  reason: collision with root package name */
    private ba f2978f;

    /* JADX INFO: Access modifiers changed from: protected */
    public final g.a a(int i, p.a aVar) {
        return this.f2976d.a(i, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final q.a a(int i, p.a aVar, long j) {
        return this.f2975c.a(i, aVar, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final q.a a(p.a aVar) {
        return this.f2975c.a(0, aVar, 0L);
    }

    protected void a() {
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(Handler handler, com.applovin.exoplayer2.d.g gVar) {
        com.applovin.exoplayer2.l.a.b(handler);
        com.applovin.exoplayer2.l.a.b(gVar);
        this.f2976d.a(handler, gVar);
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(Handler handler, q qVar) {
        com.applovin.exoplayer2.l.a.b(handler);
        com.applovin.exoplayer2.l.a.b(qVar);
        this.f2975c.a(handler, qVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ba baVar) {
        this.f2978f = baVar;
        Iterator<p.b> it = this.f2973a.iterator();
        while (it.hasNext()) {
            it.next().onSourceInfoRefreshed(this, baVar);
        }
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(com.applovin.exoplayer2.d.g gVar) {
        this.f2976d.a(gVar);
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(p.b bVar) {
        com.applovin.exoplayer2.l.a.b(this.f2977e);
        boolean isEmpty = this.f2974b.isEmpty();
        this.f2974b.add(bVar);
        if (isEmpty) {
            a();
        }
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(p.b bVar, com.applovin.exoplayer2.k.aa aaVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f2977e;
        com.applovin.exoplayer2.l.a.a(looper == null || looper == myLooper);
        ba baVar = this.f2978f;
        this.f2973a.add(bVar);
        if (this.f2977e == null) {
            this.f2977e = myLooper;
            this.f2974b.add(bVar);
            a(aaVar);
        } else if (baVar != null) {
            a(bVar);
            bVar.onSourceInfoRefreshed(this, baVar);
        }
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void a(q qVar) {
        this.f2975c.a(qVar);
    }

    protected abstract void a(com.applovin.exoplayer2.k.aa aaVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final g.a b(p.a aVar) {
        return this.f2976d.a(0, aVar);
    }

    protected void b() {
    }

    @Override // com.applovin.exoplayer2.h.p
    public final void b(p.b bVar) {
        boolean z = !this.f2974b.isEmpty();
        this.f2974b.remove(bVar);
        if (z && this.f2974b.isEmpty()) {
            b();
        }
    }

    protected abstract void c();

    @Override // com.applovin.exoplayer2.h.p
    public final void c(p.b bVar) {
        this.f2973a.remove(bVar);
        if (!this.f2973a.isEmpty()) {
            b(bVar);
            return;
        }
        this.f2977e = null;
        this.f2978f = null;
        this.f2974b.clear();
        c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d() {
        return !this.f2974b.isEmpty();
    }
}
