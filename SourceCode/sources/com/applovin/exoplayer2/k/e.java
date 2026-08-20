package com.applovin.exoplayer2.k;

import com.applovin.exoplayer2.l.ai;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class e implements i {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f3605a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<aa> f3606b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    private int f3607c;

    /* renamed from: d  reason: collision with root package name */
    private l f3608d;

    /* JADX INFO: Access modifiers changed from: protected */
    public e(boolean z) {
        this.f3605a = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        l lVar = (l) ai.a(this.f3608d);
        for (int i2 = 0; i2 < this.f3607c; i2++) {
            this.f3606b.get(i2).a(this, lVar, this.f3605a, i);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public final void a(aa aaVar) {
        com.applovin.exoplayer2.l.a.b(aaVar);
        if (this.f3606b.contains(aaVar)) {
            return;
        }
        this.f3606b.add(aaVar);
        this.f3607c++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(l lVar) {
        for (int i = 0; i < this.f3607c; i++) {
            this.f3606b.get(i).a(this, lVar, this.f3605a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(l lVar) {
        this.f3608d = lVar;
        for (int i = 0; i < this.f3607c; i++) {
            this.f3606b.get(i).b(this, lVar, this.f3605a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        l lVar = (l) ai.a(this.f3608d);
        for (int i = 0; i < this.f3607c; i++) {
            this.f3606b.get(i).c(this, lVar, this.f3605a);
        }
        this.f3608d = null;
    }
}
