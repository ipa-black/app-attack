package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class v implements g {
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    private int H;

    /* renamed from: a  reason: collision with root package name */
    public final String f4178a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4179b;

    /* renamed from: c  reason: collision with root package name */
    public final String f4180c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4181d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4182e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4183f;

    /* renamed from: g  reason: collision with root package name */
    public final int f4184g;

    /* renamed from: h  reason: collision with root package name */
    public final int f4185h;
    public final String i;
    public final com.applovin.exoplayer2.g.a j;
    public final String k;
    public final String l;
    public final int m;
    public final List<byte[]> n;
    public final com.applovin.exoplayer2.d.e o;
    public final long p;
    public final int q;
    public final int r;
    public final float s;
    public final int t;
    public final float u;
    public final byte[] v;
    public final int w;
    public final com.applovin.exoplayer2.m.b x;
    public final int y;
    public final int z;
    private static final v G = new a().a();
    public static final g.a<v> F = new g.a() { // from class: com.applovin.exoplayer2.v$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            v a2;
            a2 = v.a(bundle);
            return a2;
        }
    };

    /* loaded from: classes.dex */
    public static final class a {
        private int A;
        private int B;
        private int C;
        private int D;

        /* renamed from: a  reason: collision with root package name */
        private String f4186a;

        /* renamed from: b  reason: collision with root package name */
        private String f4187b;

        /* renamed from: c  reason: collision with root package name */
        private String f4188c;

        /* renamed from: d  reason: collision with root package name */
        private int f4189d;

        /* renamed from: e  reason: collision with root package name */
        private int f4190e;

        /* renamed from: f  reason: collision with root package name */
        private int f4191f;

        /* renamed from: g  reason: collision with root package name */
        private int f4192g;

        /* renamed from: h  reason: collision with root package name */
        private String f4193h;
        private com.applovin.exoplayer2.g.a i;
        private String j;
        private String k;
        private int l;
        private List<byte[]> m;
        private com.applovin.exoplayer2.d.e n;
        private long o;
        private int p;
        private int q;
        private float r;
        private int s;
        private float t;
        private byte[] u;
        private int v;
        private com.applovin.exoplayer2.m.b w;
        private int x;
        private int y;
        private int z;

        public a() {
            this.f4191f = -1;
            this.f4192g = -1;
            this.l = -1;
            this.o = Long.MAX_VALUE;
            this.p = -1;
            this.q = -1;
            this.r = -1.0f;
            this.t = 1.0f;
            this.v = -1;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.C = -1;
            this.D = 0;
        }

        private a(v vVar) {
            this.f4186a = vVar.f4178a;
            this.f4187b = vVar.f4179b;
            this.f4188c = vVar.f4180c;
            this.f4189d = vVar.f4181d;
            this.f4190e = vVar.f4182e;
            this.f4191f = vVar.f4183f;
            this.f4192g = vVar.f4184g;
            this.f4193h = vVar.i;
            this.i = vVar.j;
            this.j = vVar.k;
            this.k = vVar.l;
            this.l = vVar.m;
            this.m = vVar.n;
            this.n = vVar.o;
            this.o = vVar.p;
            this.p = vVar.q;
            this.q = vVar.r;
            this.r = vVar.s;
            this.s = vVar.t;
            this.t = vVar.u;
            this.u = vVar.v;
            this.v = vVar.w;
            this.w = vVar.x;
            this.x = vVar.y;
            this.y = vVar.z;
            this.z = vVar.A;
            this.A = vVar.B;
            this.B = vVar.C;
            this.C = vVar.D;
            this.D = vVar.E;
        }

        public a a(float f2) {
            this.r = f2;
            return this;
        }

        public a a(int i) {
            this.f4186a = Integer.toString(i);
            return this;
        }

        public a a(long j) {
            this.o = j;
            return this;
        }

        public a a(com.applovin.exoplayer2.d.e eVar) {
            this.n = eVar;
            return this;
        }

        public a a(com.applovin.exoplayer2.g.a aVar) {
            this.i = aVar;
            return this;
        }

        public a a(com.applovin.exoplayer2.m.b bVar) {
            this.w = bVar;
            return this;
        }

        public a a(String str) {
            this.f4186a = str;
            return this;
        }

        public a a(List<byte[]> list) {
            this.m = list;
            return this;
        }

        public a a(byte[] bArr) {
            this.u = bArr;
            return this;
        }

        public v a() {
            return new v(this);
        }

        public a b(float f2) {
            this.t = f2;
            return this;
        }

        public a b(int i) {
            this.f4189d = i;
            return this;
        }

        public a b(String str) {
            this.f4187b = str;
            return this;
        }

        public a c(int i) {
            this.f4190e = i;
            return this;
        }

        public a c(String str) {
            this.f4188c = str;
            return this;
        }

        public a d(int i) {
            this.f4191f = i;
            return this;
        }

        public a d(String str) {
            this.f4193h = str;
            return this;
        }

        public a e(int i) {
            this.f4192g = i;
            return this;
        }

        public a e(String str) {
            this.j = str;
            return this;
        }

        public a f(int i) {
            this.l = i;
            return this;
        }

        public a f(String str) {
            this.k = str;
            return this;
        }

        public a g(int i) {
            this.p = i;
            return this;
        }

        public a h(int i) {
            this.q = i;
            return this;
        }

        public a i(int i) {
            this.s = i;
            return this;
        }

        public a j(int i) {
            this.v = i;
            return this;
        }

        public a k(int i) {
            this.x = i;
            return this;
        }

        public a l(int i) {
            this.y = i;
            return this;
        }

        public a m(int i) {
            this.z = i;
            return this;
        }

        public a n(int i) {
            this.A = i;
            return this;
        }

        public a o(int i) {
            this.B = i;
            return this;
        }

        public a p(int i) {
            this.C = i;
            return this;
        }

        public a q(int i) {
            this.D = i;
            return this;
        }
    }

    private v(a aVar) {
        this.f4178a = aVar.f4186a;
        this.f4179b = aVar.f4187b;
        this.f4180c = com.applovin.exoplayer2.l.ai.b(aVar.f4188c);
        this.f4181d = aVar.f4189d;
        this.f4182e = aVar.f4190e;
        int i = aVar.f4191f;
        this.f4183f = i;
        int i2 = aVar.f4192g;
        this.f4184g = i2;
        this.f4185h = i2 != -1 ? i2 : i;
        this.i = aVar.f4193h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
        this.n = aVar.m == null ? Collections.emptyList() : aVar.m;
        com.applovin.exoplayer2.d.e eVar = aVar.n;
        this.o = eVar;
        this.p = aVar.o;
        this.q = aVar.p;
        this.r = aVar.q;
        this.s = aVar.r;
        this.t = aVar.s == -1 ? 0 : aVar.s;
        this.u = aVar.t == -1.0f ? 1.0f : aVar.t;
        this.v = aVar.u;
        this.w = aVar.v;
        this.x = aVar.w;
        this.y = aVar.x;
        this.z = aVar.y;
        this.A = aVar.z;
        this.B = aVar.A == -1 ? 0 : aVar.A;
        this.C = aVar.B != -1 ? aVar.B : 0;
        this.D = aVar.C;
        this.E = (aVar.D != 0 || eVar == null) ? aVar.D : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static v a(Bundle bundle) {
        a aVar = new a();
        com.applovin.exoplayer2.l.c.a(bundle);
        int i = 0;
        String string = bundle.getString(b(0));
        v vVar = G;
        aVar.a((String) a(string, vVar.f4178a)).b((String) a(bundle.getString(b(1)), vVar.f4179b)).c((String) a(bundle.getString(b(2)), vVar.f4180c)).b(bundle.getInt(b(3), vVar.f4181d)).c(bundle.getInt(b(4), vVar.f4182e)).d(bundle.getInt(b(5), vVar.f4183f)).e(bundle.getInt(b(6), vVar.f4184g)).d((String) a(bundle.getString(b(7)), vVar.i)).a((com.applovin.exoplayer2.g.a) a((com.applovin.exoplayer2.g.a) bundle.getParcelable(b(8)), vVar.j)).e((String) a(bundle.getString(b(9)), vVar.k)).f((String) a(bundle.getString(b(10)), vVar.l)).f(bundle.getInt(b(11), vVar.m));
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(c(i));
            if (byteArray == null) {
                a a2 = aVar.a(arrayList).a((com.applovin.exoplayer2.d.e) bundle.getParcelable(b(13)));
                String b2 = b(14);
                v vVar2 = G;
                a2.a(bundle.getLong(b2, vVar2.p)).g(bundle.getInt(b(15), vVar2.q)).h(bundle.getInt(b(16), vVar2.r)).a(bundle.getFloat(b(17), vVar2.s)).i(bundle.getInt(b(18), vVar2.t)).b(bundle.getFloat(b(19), vVar2.u)).a(bundle.getByteArray(b(20))).j(bundle.getInt(b(21), vVar2.w)).a((com.applovin.exoplayer2.m.b) com.applovin.exoplayer2.l.c.a(com.applovin.exoplayer2.m.b.f3928e, bundle.getBundle(b(22)))).k(bundle.getInt(b(23), vVar2.y)).l(bundle.getInt(b(24), vVar2.z)).m(bundle.getInt(b(25), vVar2.A)).n(bundle.getInt(b(26), vVar2.B)).o(bundle.getInt(b(27), vVar2.C)).p(bundle.getInt(b(28), vVar2.D)).q(bundle.getInt(b(29), vVar2.E));
                return aVar.a();
            }
            arrayList.add(byteArray);
            i++;
        }
    }

    private static <T> T a(T t, T t2) {
        return t != null ? t : t2;
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    private static String c(int i) {
        return b(12) + "_" + Integer.toString(i, 36);
    }

    public a a() {
        return new a();
    }

    public v a(int i) {
        return a().q(i).a();
    }

    public boolean a(v vVar) {
        if (this.n.size() != vVar.n.size()) {
            return false;
        }
        for (int i = 0; i < this.n.size(); i++) {
            if (!Arrays.equals(this.n.get(i), vVar.n.get(i))) {
                return false;
            }
        }
        return true;
    }

    public int b() {
        int i;
        int i2 = this.q;
        if (i2 == -1 || (i = this.r) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        int i2 = this.H;
        if (i2 == 0 || (i = vVar.H) == 0 || i2 == i) {
            return this.f4181d == vVar.f4181d && this.f4182e == vVar.f4182e && this.f4183f == vVar.f4183f && this.f4184g == vVar.f4184g && this.m == vVar.m && this.p == vVar.p && this.q == vVar.q && this.r == vVar.r && this.t == vVar.t && this.w == vVar.w && this.y == vVar.y && this.z == vVar.z && this.A == vVar.A && this.B == vVar.B && this.C == vVar.C && this.D == vVar.D && this.E == vVar.E && Float.compare(this.s, vVar.s) == 0 && Float.compare(this.u, vVar.u) == 0 && com.applovin.exoplayer2.l.ai.a((Object) this.f4178a, (Object) vVar.f4178a) && com.applovin.exoplayer2.l.ai.a((Object) this.f4179b, (Object) vVar.f4179b) && com.applovin.exoplayer2.l.ai.a((Object) this.i, (Object) vVar.i) && com.applovin.exoplayer2.l.ai.a((Object) this.k, (Object) vVar.k) && com.applovin.exoplayer2.l.ai.a((Object) this.l, (Object) vVar.l) && com.applovin.exoplayer2.l.ai.a((Object) this.f4180c, (Object) vVar.f4180c) && Arrays.equals(this.v, vVar.v) && com.applovin.exoplayer2.l.ai.a(this.j, vVar.j) && com.applovin.exoplayer2.l.ai.a(this.x, vVar.x) && com.applovin.exoplayer2.l.ai.a(this.o, vVar.o) && a(vVar);
        }
        return false;
    }

    public int hashCode() {
        if (this.H == 0) {
            String str = this.f4178a;
            int hashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f4179b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f4180c;
            int hashCode3 = (((((((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f4181d) * 31) + this.f4182e) * 31) + this.f4183f) * 31) + this.f4184g) * 31;
            String str4 = this.i;
            int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            com.applovin.exoplayer2.g.a aVar = this.j;
            int hashCode5 = (hashCode4 + (aVar == null ? 0 : aVar.hashCode())) * 31;
            String str5 = this.k;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.l;
            this.H = ((((((((((((((((((((((((((((((hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.m) * 31) + ((int) this.p)) * 31) + this.q) * 31) + this.r) * 31) + Float.floatToIntBits(this.s)) * 31) + this.t) * 31) + Float.floatToIntBits(this.u)) * 31) + this.w) * 31) + this.y) * 31) + this.z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E;
        }
        return this.H;
    }

    public String toString() {
        return "Format(" + this.f4178a + ", " + this.f4179b + ", " + this.k + ", " + this.l + ", " + this.i + ", " + this.f4185h + ", " + this.f4180c + ", [" + this.q + ", " + this.r + ", " + this.s + "], [" + this.y + ", " + this.z + "])";
    }
}
