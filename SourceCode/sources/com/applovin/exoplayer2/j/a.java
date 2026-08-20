package com.applovin.exoplayer2.j;

import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.ad;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.j.d;
import com.applovin.exoplayer2.l.q;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public class a extends com.applovin.exoplayer2.j.b {

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.d f3470d;

    /* renamed from: e  reason: collision with root package name */
    private final long f3471e;

    /* renamed from: f  reason: collision with root package name */
    private final long f3472f;

    /* renamed from: g  reason: collision with root package name */
    private final long f3473g;

    /* renamed from: h  reason: collision with root package name */
    private final float f3474h;
    private final float i;
    private final s<C0052a> j;
    private final com.applovin.exoplayer2.l.d k;
    private float l;
    private int m;
    private int n;
    private long o;
    private com.applovin.exoplayer2.h.b.b p;

    /* renamed from: com.applovin.exoplayer2.j.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0052a {

        /* renamed from: a  reason: collision with root package name */
        public final long f3475a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3476b;

        public C0052a(long j, long j2) {
            this.f3475a = j;
            this.f3476b = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0052a) {
                C0052a c0052a = (C0052a) obj;
                return this.f3475a == c0052a.f3475a && this.f3476b == c0052a.f3476b;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f3475a) * 31) + ((int) this.f3476b);
        }
    }

    /* loaded from: classes.dex */
    public static class b implements d.b {

        /* renamed from: a  reason: collision with root package name */
        private final int f3477a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3478b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3479c;

        /* renamed from: d  reason: collision with root package name */
        private final float f3480d;

        /* renamed from: e  reason: collision with root package name */
        private final float f3481e;

        /* renamed from: f  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.d f3482f;

        public b() {
            this(10000, 25000, 25000, 0.7f, 0.75f, com.applovin.exoplayer2.l.d.f3790a);
        }

        public b(int i, int i2, int i3, float f2, float f3, com.applovin.exoplayer2.l.d dVar) {
            this.f3477a = i;
            this.f3478b = i2;
            this.f3479c = i3;
            this.f3480d = f2;
            this.f3481e = f3;
            this.f3482f = dVar;
        }

        protected a a(ac acVar, int[] iArr, int i, com.applovin.exoplayer2.k.d dVar, s<C0052a> sVar) {
            return new a(acVar, iArr, i, dVar, this.f3477a, this.f3478b, this.f3479c, this.f3480d, this.f3481e, sVar, this.f3482f);
        }

        @Override // com.applovin.exoplayer2.j.d.b
        public final d[] a(d.a[] aVarArr, com.applovin.exoplayer2.k.d dVar, p.a aVar, ba baVar) {
            s b2 = a.b(aVarArr);
            d[] dVarArr = new d[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                d.a aVar2 = aVarArr[i];
                if (aVar2 != null && aVar2.f3542b.length != 0) {
                    dVarArr[i] = aVar2.f3542b.length == 1 ? new e(aVar2.f3541a, aVar2.f3542b[0], aVar2.f3543c) : a(aVar2.f3541a, aVar2.f3542b, aVar2.f3543c, dVar, (s) b2.get(i));
                }
            }
            return dVarArr;
        }
    }

    protected a(ac acVar, int[] iArr, int i, com.applovin.exoplayer2.k.d dVar, long j, long j2, long j3, float f2, float f3, List<C0052a> list, com.applovin.exoplayer2.l.d dVar2) {
        super(acVar, iArr, i);
        if (j3 < j) {
            q.c("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j3 = j;
        }
        this.f3470d = dVar;
        this.f3471e = j * 1000;
        this.f3472f = j2 * 1000;
        this.f3473g = j3 * 1000;
        this.f3474h = f2;
        this.i = f3;
        this.j = s.a((Collection) list);
        this.k = dVar2;
        this.l = 1.0f;
        this.n = 0;
        this.o = C.TIME_UNSET;
    }

    private static s<Integer> a(long[][] jArr) {
        com.applovin.exoplayer2.common.a.ac b2 = ad.a().b().b();
        for (int i = 0; i < jArr.length; i++) {
            long[] jArr2 = jArr[i];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    long[] jArr3 = jArr[i];
                    double d2 = 0.0d;
                    if (i2 >= jArr3.length) {
                        break;
                    }
                    long j = jArr3[i2];
                    if (j != -1) {
                        d2 = Math.log(j);
                    }
                    dArr[i2] = d2;
                    i2++;
                }
                int i3 = length - 1;
                double d3 = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d4 = dArr[i4];
                    i4++;
                    b2.a(Double.valueOf(d3 == 0.0d ? 1.0d : (((d4 + dArr[i4]) * 0.5d) - dArr[0]) / d3), Integer.valueOf(i));
                }
            }
        }
        return s.a(b2.h());
    }

    private static void a(List<s.a<C0052a>> list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            s.a<C0052a> aVar = list.get(i);
            if (aVar != null) {
                aVar.a(new C0052a(j, jArr[i]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static s<s<C0052a>> b(d.a[] aVarArr) {
        s.a aVar;
        ArrayList arrayList = new ArrayList();
        for (d.a aVar2 : aVarArr) {
            if (aVar2 == null || aVar2.f3542b.length <= 1) {
                aVar = null;
            } else {
                aVar = s.i();
                aVar.a(new C0052a(0L, 0L));
            }
            arrayList.add(aVar);
        }
        long[][] c2 = c(aVarArr);
        int[] iArr = new int[c2.length];
        long[] jArr = new long[c2.length];
        for (int i = 0; i < c2.length; i++) {
            long[] jArr2 = c2[i];
            jArr[i] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        a(arrayList, jArr);
        s<Integer> a2 = a(c2);
        for (int i2 = 0; i2 < a2.size(); i2++) {
            int intValue = a2.get(i2).intValue();
            int i3 = iArr[intValue] + 1;
            iArr[intValue] = i3;
            jArr[intValue] = c2[intValue][i3];
            a(arrayList, jArr);
        }
        for (int i4 = 0; i4 < aVarArr.length; i4++) {
            if (arrayList.get(i4) != null) {
                jArr[i4] = jArr[i4] * 2;
            }
        }
        a(arrayList, jArr);
        s.a i5 = s.i();
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            s.a aVar3 = (s.a) arrayList.get(i6);
            i5.a(aVar3 == null ? s.g() : aVar3.a());
        }
        return i5.a();
    }

    private static long[][] c(d.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            d.a aVar = aVarArr[i];
            if (aVar == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[aVar.f3542b.length];
                for (int i2 = 0; i2 < aVar.f3542b.length; i2++) {
                    jArr[i][i2] = aVar.f3541a.a(aVar.f3542b[i2]).f4185h;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    @Override // com.applovin.exoplayer2.j.b, com.applovin.exoplayer2.j.d
    public void a() {
        this.o = C.TIME_UNSET;
        this.p = null;
    }

    @Override // com.applovin.exoplayer2.j.b, com.applovin.exoplayer2.j.d
    public void a(float f2) {
        this.l = f2;
    }

    @Override // com.applovin.exoplayer2.j.b, com.applovin.exoplayer2.j.d
    public void b() {
        this.p = null;
    }

    @Override // com.applovin.exoplayer2.j.d
    public int c() {
        return this.m;
    }
}
