package com.applovin.exoplayer2.h;

import android.util.SparseArray;
/* loaded from: classes.dex */
final class ab<V> {

    /* renamed from: a  reason: collision with root package name */
    private int f3001a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<V> f3002b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.h<V> f3003c;

    public ab() {
        this(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.h.ab$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.l.h
            public final void accept(Object obj) {
                ab.a(obj);
            }
        });
    }

    public ab(com.applovin.exoplayer2.l.h<V> hVar) {
        this.f3002b = new SparseArray<>();
        this.f3003c = hVar;
        this.f3001a = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
    }

    public V a() {
        SparseArray<V> sparseArray = this.f3002b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public V a(int i) {
        if (this.f3001a == -1) {
            this.f3001a = 0;
        }
        while (true) {
            int i2 = this.f3001a;
            if (i2 <= 0 || i >= this.f3002b.keyAt(i2)) {
                break;
            }
            this.f3001a--;
        }
        while (this.f3001a < this.f3002b.size() - 1 && i >= this.f3002b.keyAt(this.f3001a + 1)) {
            this.f3001a++;
        }
        return this.f3002b.valueAt(this.f3001a);
    }

    public void a(int i, V v) {
        if (this.f3001a == -1) {
            com.applovin.exoplayer2.l.a.b(this.f3002b.size() == 0);
            this.f3001a = 0;
        }
        if (this.f3002b.size() > 0) {
            SparseArray<V> sparseArray = this.f3002b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            com.applovin.exoplayer2.l.a.a(i >= keyAt);
            if (keyAt == i) {
                SparseArray<V> sparseArray2 = this.f3002b;
                this.f3003c.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f3002b.append(i, v);
    }

    public void b() {
        for (int i = 0; i < this.f3002b.size(); i++) {
            this.f3003c.accept(this.f3002b.valueAt(i));
        }
        this.f3001a = -1;
        this.f3002b.clear();
    }

    public void b(int i) {
        int i2 = 0;
        while (i2 < this.f3002b.size() - 1) {
            int i3 = i2 + 1;
            if (i < this.f3002b.keyAt(i3)) {
                return;
            }
            this.f3003c.accept(this.f3002b.valueAt(i2));
            this.f3002b.removeAt(i2);
            int i4 = this.f3001a;
            if (i4 > 0) {
                this.f3001a = i4 - 1;
            }
            i2 = i3;
        }
    }

    public void c(int i) {
        for (int size = this.f3002b.size() - 1; size >= 0 && i < this.f3002b.keyAt(size); size--) {
            this.f3003c.accept(this.f3002b.valueAt(size));
            this.f3002b.removeAt(size);
        }
        this.f3001a = this.f3002b.size() > 0 ? Math.min(this.f3001a, this.f3002b.size() - 1) : -1;
    }

    public boolean c() {
        return this.f3002b.size() == 0;
    }
}
