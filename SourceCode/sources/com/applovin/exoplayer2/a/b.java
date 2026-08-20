package com.applovin.exoplayer2.a;

import android.util.SparseArray;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.c.e;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.j;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.j.h;
import com.applovin.exoplayer2.l.m;
import com.applovin.exoplayer2.m.o;
import com.applovin.exoplayer2.v;
import java.io.IOException;
/* loaded from: classes.dex */
public interface b {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f1219a;

        /* renamed from: b  reason: collision with root package name */
        public final ba f1220b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1221c;

        /* renamed from: d  reason: collision with root package name */
        public final p.a f1222d;

        /* renamed from: e  reason: collision with root package name */
        public final long f1223e;

        /* renamed from: f  reason: collision with root package name */
        public final ba f1224f;

        /* renamed from: g  reason: collision with root package name */
        public final int f1225g;

        /* renamed from: h  reason: collision with root package name */
        public final p.a f1226h;
        public final long i;
        public final long j;

        public a(long j, ba baVar, int i, p.a aVar, long j2, ba baVar2, int i2, p.a aVar2, long j3, long j4) {
            this.f1219a = j;
            this.f1220b = baVar;
            this.f1221c = i;
            this.f1222d = aVar;
            this.f1223e = j2;
            this.f1224f = baVar2;
            this.f1225g = i2;
            this.f1226h = aVar2;
            this.i = j3;
            this.j = j4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f1219a == aVar.f1219a && this.f1221c == aVar.f1221c && this.f1223e == aVar.f1223e && this.f1225g == aVar.f1225g && this.i == aVar.i && this.j == aVar.j && Objects.equal(this.f1220b, aVar.f1220b) && Objects.equal(this.f1222d, aVar.f1222d) && Objects.equal(this.f1224f, aVar.f1224f) && Objects.equal(this.f1226h, aVar.f1226h);
        }

        public int hashCode() {
            return Objects.hashCode(Long.valueOf(this.f1219a), this.f1220b, Integer.valueOf(this.f1221c), this.f1222d, Long.valueOf(this.f1223e), this.f1224f, Integer.valueOf(this.f1225g), this.f1226h, Long.valueOf(this.i), Long.valueOf(this.j));
        }
    }

    /* renamed from: com.applovin.exoplayer2.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0020b {

        /* renamed from: a  reason: collision with root package name */
        private final m f1227a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<a> f1228b;

        public C0020b(m mVar, SparseArray<a> sparseArray) {
            this.f1227a = mVar;
            SparseArray<a> sparseArray2 = new SparseArray<>(mVar.a());
            for (int i = 0; i < mVar.a(); i++) {
                int b2 = mVar.b(i);
                sparseArray2.append(b2, (a) com.applovin.exoplayer2.l.a.b(sparseArray.get(b2)));
            }
            this.f1228b = sparseArray2;
        }
    }

    @Deprecated
    default void a(a aVar) {
    }

    default void a(a aVar, float f2) {
    }

    default void a(a aVar, int i) {
    }

    default void a(a aVar, int i, int i2) {
    }

    @Deprecated
    default void a(a aVar, int i, int i2, int i3, float f2) {
    }

    default void a(a aVar, int i, long j) {
    }

    default void a(a aVar, int i, long j, long j2) {
    }

    @Deprecated
    default void a(a aVar, int i, e eVar) {
    }

    @Deprecated
    default void a(a aVar, int i, v vVar) {
    }

    @Deprecated
    default void a(a aVar, int i, String str, long j) {
    }

    default void a(a aVar, long j) {
    }

    default void a(a aVar, long j, int i) {
    }

    default void a(a aVar, ab abVar, int i) {
    }

    default void a(a aVar, ac acVar) {
    }

    default void a(a aVar, ak akVar) {
    }

    default void a(a aVar, am amVar) {
    }

    default void a(a aVar, an.a aVar2) {
    }

    default void a(a aVar, an.e eVar, an.e eVar2, int i) {
    }

    default void a(a aVar, e eVar) {
    }

    default void a(a aVar, com.applovin.exoplayer2.g.a aVar2) {
    }

    default void a(a aVar, ad adVar, h hVar) {
    }

    default void a(a aVar, j jVar, com.applovin.exoplayer2.h.m mVar) {
    }

    default void a(a aVar, j jVar, com.applovin.exoplayer2.h.m mVar, IOException iOException, boolean z) {
    }

    default void a(a aVar, com.applovin.exoplayer2.h.m mVar) {
    }

    default void a(a aVar, o oVar) {
    }

    @Deprecated
    default void a(a aVar, v vVar) {
    }

    default void a(a aVar, v vVar, com.applovin.exoplayer2.c.h hVar) {
    }

    default void a(a aVar, Exception exc) {
    }

    default void a(a aVar, Object obj, long j) {
    }

    default void a(a aVar, String str) {
    }

    @Deprecated
    default void a(a aVar, String str, long j) {
    }

    default void a(a aVar, String str, long j, long j2) {
    }

    default void a(a aVar, boolean z) {
    }

    @Deprecated
    default void a(a aVar, boolean z, int i) {
    }

    default void a(an anVar, C0020b c0020b) {
    }

    @Deprecated
    default void b(a aVar) {
    }

    default void b(a aVar, int i) {
    }

    default void b(a aVar, int i, long j, long j2) {
    }

    @Deprecated
    default void b(a aVar, int i, e eVar) {
    }

    default void b(a aVar, e eVar) {
    }

    default void b(a aVar, j jVar, com.applovin.exoplayer2.h.m mVar) {
    }

    @Deprecated
    default void b(a aVar, v vVar) {
    }

    default void b(a aVar, v vVar, com.applovin.exoplayer2.c.h hVar) {
    }

    default void b(a aVar, Exception exc) {
    }

    default void b(a aVar, String str) {
    }

    @Deprecated
    default void b(a aVar, String str, long j) {
    }

    default void b(a aVar, String str, long j, long j2) {
    }

    default void b(a aVar, boolean z) {
    }

    default void b(a aVar, boolean z, int i) {
    }

    @Deprecated
    default void c(a aVar) {
    }

    default void c(a aVar, int i) {
    }

    default void c(a aVar, e eVar) {
    }

    default void c(a aVar, j jVar, com.applovin.exoplayer2.h.m mVar) {
    }

    default void c(a aVar, Exception exc) {
    }

    default void c(a aVar, boolean z) {
    }

    default void d(a aVar) {
    }

    @Deprecated
    default void d(a aVar, int i) {
    }

    default void d(a aVar, e eVar) {
    }

    default void d(a aVar, Exception exc) {
    }

    @Deprecated
    default void d(a aVar, boolean z) {
    }

    default void e(a aVar) {
    }

    default void e(a aVar, int i) {
    }

    default void e(a aVar, boolean z) {
    }

    default void f(a aVar) {
    }

    default void f(a aVar, int i) {
    }

    default void g(a aVar) {
    }

    default void h(a aVar) {
    }
}
