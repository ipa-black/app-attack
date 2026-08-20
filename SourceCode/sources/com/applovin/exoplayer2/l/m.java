package com.applovin.exoplayer2.l;

import android.util.SparseBooleanArray;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final SparseBooleanArray f3811a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final SparseBooleanArray f3812a = new SparseBooleanArray();

        /* renamed from: b  reason: collision with root package name */
        private boolean f3813b;

        public a a(int i) {
            com.applovin.exoplayer2.l.a.b(!this.f3813b);
            this.f3812a.append(i, true);
            return this;
        }

        public a a(int i, boolean z) {
            return z ? a(i) : this;
        }

        public a a(m mVar) {
            for (int i = 0; i < mVar.a(); i++) {
                a(mVar.b(i));
            }
            return this;
        }

        public a a(int... iArr) {
            for (int i : iArr) {
                a(i);
            }
            return this;
        }

        public m a() {
            com.applovin.exoplayer2.l.a.b(!this.f3813b);
            this.f3813b = true;
            return new m(this.f3812a);
        }
    }

    private m(SparseBooleanArray sparseBooleanArray) {
        this.f3811a = sparseBooleanArray;
    }

    public int a() {
        return this.f3811a.size();
    }

    public boolean a(int i) {
        return this.f3811a.get(i);
    }

    public boolean a(int... iArr) {
        for (int i : iArr) {
            if (a(i)) {
                return true;
            }
        }
        return false;
    }

    public int b(int i) {
        com.applovin.exoplayer2.l.a.a(i, 0, a());
        return this.f3811a.keyAt(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (ai.f3781a < 24) {
                if (a() != mVar.a()) {
                    return false;
                }
                for (int i = 0; i < a(); i++) {
                    if (b(i) != mVar.b(i)) {
                        return false;
                    }
                }
                return true;
            }
            return this.f3811a.equals(mVar.f3811a);
        }
        return false;
    }

    public int hashCode() {
        if (ai.f3781a < 24) {
            int a2 = a();
            for (int i = 0; i < a(); i++) {
                a2 = (a2 * 31) + b(i);
            }
            return a2;
        }
        return this.f3811a.hashCode();
    }
}
