package com.applovin.exoplayer2.e;
/* loaded from: classes.dex */
public interface v {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final w f2708a;

        /* renamed from: b  reason: collision with root package name */
        public final w f2709b;

        public a(w wVar) {
            this(wVar, wVar);
        }

        public a(w wVar, w wVar2) {
            this.f2708a = (w) com.applovin.exoplayer2.l.a.b(wVar);
            this.f2709b = (w) com.applovin.exoplayer2.l.a.b(wVar2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f2708a.equals(aVar.f2708a) && this.f2709b.equals(aVar.f2709b);
        }

        public int hashCode() {
            return (this.f2708a.hashCode() * 31) + this.f2709b.hashCode();
        }

        public String toString() {
            return "[" + this.f2708a + (this.f2708a.equals(this.f2709b) ? "" : ", " + this.f2709b) + "]";
        }
    }

    /* loaded from: classes.dex */
    public static class b implements v {

        /* renamed from: a  reason: collision with root package name */
        private final long f2710a;

        /* renamed from: b  reason: collision with root package name */
        private final a f2711b;

        public b(long j) {
            this(j, 0L);
        }

        public b(long j, long j2) {
            this.f2710a = j;
            this.f2711b = new a(j2 == 0 ? w.f2712a : new w(0L, j2));
        }

        @Override // com.applovin.exoplayer2.e.v
        public a a(long j) {
            return this.f2711b;
        }

        @Override // com.applovin.exoplayer2.e.v
        public boolean a() {
            return false;
        }

        @Override // com.applovin.exoplayer2.e.v
        public long b() {
            return this.f2710a;
        }
    }

    a a(long j);

    boolean a();

    long b();
}
