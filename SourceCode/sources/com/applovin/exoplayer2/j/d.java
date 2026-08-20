package com.applovin.exoplayer2.j;

import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.v;
/* loaded from: classes.dex */
public interface d extends g {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final ac f3541a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f3542b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3543c;

        public a(ac acVar, int... iArr) {
            this(acVar, iArr, 0);
        }

        public a(ac acVar, int[] iArr, int i) {
            this.f3541a = acVar;
            this.f3542b = iArr;
            this.f3543c = i;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        d[] a(a[] aVarArr, com.applovin.exoplayer2.k.d dVar, p.a aVar, ba baVar);
    }

    void a();

    void a(float f2);

    default void a(boolean z) {
    }

    void b();

    int c();

    v f();

    default void g() {
    }

    default void h() {
    }
}
