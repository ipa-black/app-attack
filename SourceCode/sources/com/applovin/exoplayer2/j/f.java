package com.applovin.exoplayer2.j;

import android.util.Pair;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.at;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.p;
/* loaded from: classes.dex */
public abstract class f extends j {

    /* renamed from: a  reason: collision with root package name */
    private a f3546a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f3547a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f3548b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f3549c;

        /* renamed from: d  reason: collision with root package name */
        private final ad[] f3550d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f3551e;

        /* renamed from: f  reason: collision with root package name */
        private final int[][][] f3552f;

        /* renamed from: g  reason: collision with root package name */
        private final ad f3553g;

        a(String[] strArr, int[] iArr, ad[] adVarArr, int[] iArr2, int[][][] iArr3, ad adVar) {
            this.f3548b = strArr;
            this.f3549c = iArr;
            this.f3550d = adVarArr;
            this.f3552f = iArr3;
            this.f3551e = iArr2;
            this.f3553g = adVar;
            this.f3547a = iArr.length;
        }

        public int a() {
            return this.f3547a;
        }

        public int a(int i) {
            return this.f3549c[i];
        }

        public ad b(int i) {
            return this.f3550d[i];
        }
    }

    private static int a(as[] asVarArr, ac acVar, int[] iArr, boolean z) throws p {
        int length = asVarArr.length;
        int i = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < asVarArr.length; i2++) {
            as asVar = asVarArr[i2];
            int i3 = 0;
            for (int i4 = 0; i4 < acVar.f3005a; i4++) {
                i3 = Math.max(i3, as.c(asVar.a(acVar.a(i4))));
            }
            boolean z3 = iArr[i2] == 0;
            if (i3 > i || (i3 == i && z && !z2 && z3)) {
                length = i2;
                z2 = z3;
                i = i3;
            }
        }
        return length;
    }

    private static int[] a(as asVar, ac acVar) throws p {
        int[] iArr = new int[acVar.f3005a];
        for (int i = 0; i < acVar.f3005a; i++) {
            iArr[i] = asVar.a(acVar.a(i));
        }
        return iArr;
    }

    private static int[] a(as[] asVarArr) throws p {
        int length = asVarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = asVarArr[i].o();
        }
        return iArr;
    }

    protected abstract Pair<at[], d[]> a(a aVar, int[][][] iArr, int[] iArr2, p.a aVar2, ba baVar) throws com.applovin.exoplayer2.p;

    @Override // com.applovin.exoplayer2.j.j
    public final k a(as[] asVarArr, ad adVar, p.a aVar, ba baVar) throws com.applovin.exoplayer2.p {
        int[] iArr = new int[asVarArr.length + 1];
        int length = asVarArr.length + 1;
        ac[][] acVarArr = new ac[length];
        int[][][] iArr2 = new int[asVarArr.length + 1][];
        for (int i = 0; i < length; i++) {
            acVarArr[i] = new ac[adVar.f3010b];
            iArr2[i] = new int[adVar.f3010b];
        }
        int[] a2 = a(asVarArr);
        for (int i2 = 0; i2 < adVar.f3010b; i2++) {
            ac a3 = adVar.a(i2);
            int a4 = a(asVarArr, a3, iArr, u.e(a3.a(0).l) == 5);
            int[] a5 = a4 == asVarArr.length ? new int[a3.f3005a] : a(asVarArr[a4], a3);
            int i3 = iArr[a4];
            acVarArr[a4][i3] = a3;
            iArr2[a4][i3] = a5;
            iArr[a4] = i3 + 1;
        }
        ad[] adVarArr = new ad[asVarArr.length];
        String[] strArr = new String[asVarArr.length];
        int[] iArr3 = new int[asVarArr.length];
        for (int i4 = 0; i4 < asVarArr.length; i4++) {
            int i5 = iArr[i4];
            adVarArr[i4] = new ad((ac[]) ai.a(acVarArr[i4], i5));
            iArr2[i4] = (int[][]) ai.a(iArr2[i4], i5);
            strArr[i4] = asVarArr[i4].y();
            iArr3[i4] = asVarArr[i4].a();
        }
        a aVar2 = new a(strArr, iArr3, adVarArr, a2, iArr2, new ad((ac[]) ai.a(acVarArr[asVarArr.length], iArr[asVarArr.length])));
        Pair<at[], d[]> a6 = a(aVar2, iArr2, a2, aVar, baVar);
        return new k((at[]) a6.first, (d[]) a6.second, aVar2);
    }

    @Override // com.applovin.exoplayer2.j.j
    public final void a(Object obj) {
        this.f3546a = (a) obj;
    }
}
