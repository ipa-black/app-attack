package com.applovin.exoplayer2.j;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.at;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.ai;
import com.applovin.exoplayer2.common.a.n;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.j.a;
import com.applovin.exoplayer2.j.c;
import com.applovin.exoplayer2.j.d;
import com.applovin.exoplayer2.j.f;
import com.applovin.exoplayer2.j.i;
import com.applovin.exoplayer2.p;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class c extends com.applovin.exoplayer2.j.f {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3490a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    private static final ai<Integer> f3491b = ai.a(new Comparator() { // from class: com.applovin.exoplayer2.j.c$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int b2;
            b2 = c.b((Integer) obj, (Integer) obj2);
            return b2;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static final ai<Integer> f3492c = ai.a(new Comparator() { // from class: com.applovin.exoplayer2.j.c$$ExternalSyntheticLambda1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int a2;
            a2 = c.a((Integer) obj, (Integer) obj2);
            return a2;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private final d.b f3493d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<C0053c> f3494e;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3495a;

        /* renamed from: b  reason: collision with root package name */
        private final String f3496b;

        /* renamed from: c  reason: collision with root package name */
        private final C0053c f3497c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f3498d;

        /* renamed from: e  reason: collision with root package name */
        private final int f3499e;

        /* renamed from: f  reason: collision with root package name */
        private final int f3500f;

        /* renamed from: g  reason: collision with root package name */
        private final int f3501g;

        /* renamed from: h  reason: collision with root package name */
        private final int f3502h;
        private final int i;
        private final boolean j;
        private final int k;
        private final int l;
        private final int m;
        private final int n;

        public a(v vVar, C0053c c0053c, int i) {
            int i2;
            int i3;
            int i4;
            this.f3497c = c0053c;
            this.f3496b = c.a(vVar.f4180c);
            int i5 = 0;
            this.f3498d = c.a(i, false);
            int i6 = 0;
            while (true) {
                i2 = Integer.MAX_VALUE;
                if (i6 >= c0053c.C.size()) {
                    i3 = 0;
                    i6 = Integer.MAX_VALUE;
                    break;
                }
                i3 = c.a(vVar, c0053c.C.get(i6), false);
                if (i3 > 0) {
                    break;
                }
                i6++;
            }
            this.f3500f = i6;
            this.f3499e = i3;
            this.f3501g = Integer.bitCount(vVar.f4182e & c0053c.D);
            boolean z = true;
            this.j = (vVar.f4181d & 1) != 0;
            this.k = vVar.y;
            this.l = vVar.z;
            this.m = vVar.f4185h;
            if ((vVar.f4185h != -1 && vVar.f4185h > c0053c.F) || (vVar.y != -1 && vVar.y > c0053c.E)) {
                z = false;
            }
            this.f3495a = z;
            String[] d2 = com.applovin.exoplayer2.l.ai.d();
            int i7 = 0;
            while (true) {
                if (i7 >= d2.length) {
                    i4 = 0;
                    i7 = Integer.MAX_VALUE;
                    break;
                }
                i4 = c.a(vVar, d2[i7], false);
                if (i4 > 0) {
                    break;
                }
                i7++;
            }
            this.f3502h = i7;
            this.i = i4;
            while (true) {
                if (i5 < c0053c.G.size()) {
                    if (vVar.l != null && vVar.l.equals(c0053c.G.get(i5))) {
                        i2 = i5;
                        break;
                    }
                    i5++;
                } else {
                    break;
                }
            }
            this.n = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            ai a2 = (this.f3495a && this.f3498d) ? c.f3491b : c.f3491b.a();
            n a3 = n.a().b(this.f3498d, aVar.f3498d).a(Integer.valueOf(this.f3500f), Integer.valueOf(aVar.f3500f), ai.b().a()).a(this.f3499e, aVar.f3499e).a(this.f3501g, aVar.f3501g).b(this.f3495a, aVar.f3495a).a(Integer.valueOf(this.n), Integer.valueOf(aVar.n), ai.b().a()).a(Integer.valueOf(this.m), Integer.valueOf(aVar.m), this.f3497c.K ? c.f3491b.a() : c.f3492c).b(this.j, aVar.j).a(Integer.valueOf(this.f3502h), Integer.valueOf(aVar.f3502h), ai.b().a()).a(this.i, aVar.i).a(Integer.valueOf(this.k), Integer.valueOf(aVar.k), a2).a(Integer.valueOf(this.l), Integer.valueOf(aVar.l), a2);
            Integer valueOf = Integer.valueOf(this.m);
            Integer valueOf2 = Integer.valueOf(aVar.m);
            if (!com.applovin.exoplayer2.l.ai.a((Object) this.f3496b, (Object) aVar.f3496b)) {
                a2 = c.f3492c;
            }
            return a3.a(valueOf, valueOf2, a2).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f3503a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f3504b;

        public b(v vVar, int i) {
            this.f3503a = (vVar.f4181d & 1) != 0;
            this.f3504b = c.a(i, false);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            return n.a().b(this.f3504b, bVar.f3504b).b(this.f3503a, bVar.f3503a).b();
        }
    }

    /* renamed from: com.applovin.exoplayer2.j.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0053c extends i implements com.applovin.exoplayer2.g {

        /* renamed from: a  reason: collision with root package name */
        public static final C0053c f3505a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public static final C0053c f3506b;
        public static final g.a<C0053c> n;
        private final SparseArray<Map<ad, e>> O;
        private final SparseBooleanArray P;

        /* renamed from: c  reason: collision with root package name */
        public final int f3507c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f3508d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f3509e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f3510f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f3511g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f3512h;
        public final boolean i;
        public final boolean j;
        public final boolean k;
        public final boolean l;
        public final boolean m;

        static {
            C0053c b2 = new d().b();
            f3505a = b2;
            f3506b = b2;
            n = new g.a() { // from class: com.applovin.exoplayer2.j.c$c$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.g.a
                public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
                    c.C0053c a2;
                    a2 = c.C0053c.a(bundle);
                    return a2;
                }
            };
        }

        private C0053c(d dVar) {
            super(dVar);
            this.f3508d = dVar.f3513a;
            this.f3509e = dVar.f3514b;
            this.f3510f = dVar.f3515c;
            this.f3511g = dVar.f3516d;
            this.f3512h = dVar.f3517e;
            this.i = dVar.f3518f;
            this.j = dVar.f3519g;
            this.f3507c = dVar.f3520h;
            this.k = dVar.i;
            this.l = dVar.j;
            this.m = dVar.k;
            this.O = dVar.l;
            this.P = dVar.m;
        }

        public static C0053c a(Context context) {
            return new d(context).b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ C0053c a(Bundle bundle) {
            return new d(bundle).b();
        }

        private static boolean a(SparseArray<Map<ad, e>> sparseArray, SparseArray<Map<ad, e>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (indexOfKey < 0 || !a(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        private static boolean a(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean a(java.util.Map<com.applovin.exoplayer2.h.ad, com.applovin.exoplayer2.j.c.e> r4, java.util.Map<com.applovin.exoplayer2.h.ad, com.applovin.exoplayer2.j.c.e> r5) {
            /*
                int r0 = r4.size()
                int r1 = r5.size()
                r2 = 0
                if (r1 == r0) goto Lc
                return r2
            Lc:
                java.util.Set r4 = r4.entrySet()
                java.util.Iterator r4 = r4.iterator()
            L14:
                boolean r0 = r4.hasNext()
                if (r0 == 0) goto L3b
                java.lang.Object r0 = r4.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                java.lang.Object r1 = r0.getKey()
                com.applovin.exoplayer2.h.ad r1 = (com.applovin.exoplayer2.h.ad) r1
                boolean r3 = r5.containsKey(r1)
                if (r3 == 0) goto L3a
                java.lang.Object r0 = r0.getValue()
                java.lang.Object r1 = r5.get(r1)
                boolean r0 = com.applovin.exoplayer2.l.ai.a(r0, r1)
                if (r0 != 0) goto L14
            L3a:
                return r2
            L3b:
                r4 = 1
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.j.c.C0053c.a(java.util.Map, java.util.Map):boolean");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String d(int i) {
            return Integer.toString(i, 36);
        }

        public final boolean a(int i) {
            return this.P.get(i);
        }

        public final boolean a(int i, ad adVar) {
            Map<ad, e> map = this.O.get(i);
            return map != null && map.containsKey(adVar);
        }

        public final e b(int i, ad adVar) {
            Map<ad, e> map = this.O.get(i);
            if (map != null) {
                return map.get(adVar);
            }
            return null;
        }

        @Override // com.applovin.exoplayer2.j.i
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0053c c0053c = (C0053c) obj;
            return super.equals(c0053c) && this.f3508d == c0053c.f3508d && this.f3509e == c0053c.f3509e && this.f3510f == c0053c.f3510f && this.f3511g == c0053c.f3511g && this.f3512h == c0053c.f3512h && this.i == c0053c.i && this.j == c0053c.j && this.f3507c == c0053c.f3507c && this.k == c0053c.k && this.l == c0053c.l && this.m == c0053c.m && a(this.P, c0053c.P) && a(this.O, c0053c.O);
        }

        @Override // com.applovin.exoplayer2.j.i
        public int hashCode() {
            return ((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.f3508d ? 1 : 0)) * 31) + (this.f3509e ? 1 : 0)) * 31) + (this.f3510f ? 1 : 0)) * 31) + (this.f3511g ? 1 : 0)) * 31) + (this.f3512h ? 1 : 0)) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0)) * 31) + this.f3507c) * 31) + (this.k ? 1 : 0)) * 31) + (this.l ? 1 : 0)) * 31) + (this.m ? 1 : 0);
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends i.a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f3513a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f3514b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f3515c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f3516d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f3517e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f3518f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f3519g;

        /* renamed from: h  reason: collision with root package name */
        private int f3520h;
        private boolean i;
        private boolean j;
        private boolean k;
        private final SparseArray<Map<ad, e>> l;
        private final SparseBooleanArray m;

        @Deprecated
        public d() {
            this.l = new SparseArray<>();
            this.m = new SparseBooleanArray();
            c();
        }

        public d(Context context) {
            super(context);
            this.l = new SparseArray<>();
            this.m = new SparseBooleanArray();
            c();
        }

        private d(Bundle bundle) {
            super(bundle);
            C0053c c0053c = C0053c.f3505a;
            a(bundle.getBoolean(C0053c.d(1000), c0053c.f3508d));
            b(bundle.getBoolean(C0053c.d(1001), c0053c.f3509e));
            c(bundle.getBoolean(C0053c.d(1002), c0053c.f3510f));
            d(bundle.getBoolean(C0053c.d(1003), c0053c.f3511g));
            e(bundle.getBoolean(C0053c.d(1004), c0053c.f3512h));
            f(bundle.getBoolean(C0053c.d(1005), c0053c.i));
            g(bundle.getBoolean(C0053c.d(1006), c0053c.j));
            a(bundle.getInt(C0053c.d(1007), c0053c.f3507c));
            h(bundle.getBoolean(C0053c.d(1008), c0053c.k));
            i(bundle.getBoolean(C0053c.d(1009), c0053c.l));
            j(bundle.getBoolean(C0053c.d(1010), c0053c.m));
            this.l = new SparseArray<>();
            a(bundle);
            this.m = a(bundle.getIntArray(C0053c.d(1014)));
        }

        private SparseBooleanArray a(int[] iArr) {
            if (iArr == null) {
                return new SparseBooleanArray();
            }
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
            for (int i : iArr) {
                sparseBooleanArray.append(i, true);
            }
            return sparseBooleanArray;
        }

        private void a(Bundle bundle) {
            int[] intArray = bundle.getIntArray(C0053c.d(1011));
            List a2 = com.applovin.exoplayer2.l.c.a(ad.f3009c, bundle.getParcelableArrayList(C0053c.d(1012)), s.g());
            SparseArray a3 = com.applovin.exoplayer2.l.c.a(e.f3521e, bundle.getSparseParcelableArray(C0053c.d(1013)), new SparseArray());
            if (intArray == null || intArray.length != a2.size()) {
                return;
            }
            for (int i = 0; i < intArray.length; i++) {
                a(intArray[i], (ad) a2.get(i), (e) a3.get(i));
            }
        }

        private void c() {
            this.f3513a = true;
            this.f3514b = false;
            this.f3515c = true;
            this.f3516d = true;
            this.f3517e = false;
            this.f3518f = false;
            this.f3519g = false;
            this.f3520h = 0;
            this.i = true;
            this.j = false;
            this.k = true;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* renamed from: a */
        public C0053c b() {
            return new C0053c(this);
        }

        public d a(int i) {
            this.f3520h = i;
            return this;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* renamed from: a */
        public d b(int i, int i2, boolean z) {
            super.b(i, i2, z);
            return this;
        }

        public final d a(int i, ad adVar, e eVar) {
            Map<ad, e> map = this.l.get(i);
            if (map == null) {
                map = new HashMap<>();
                this.l.put(i, map);
            }
            if (map.containsKey(adVar) && com.applovin.exoplayer2.l.ai.a(map.get(adVar), eVar)) {
                return this;
            }
            map.put(adVar, eVar);
            return this;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* renamed from: a */
        public d b(Context context) {
            super.b(context);
            return this;
        }

        @Override // com.applovin.exoplayer2.j.i.a
        /* renamed from: a */
        public d b(Context context, boolean z) {
            super.b(context, z);
            return this;
        }

        public d a(boolean z) {
            this.f3513a = z;
            return this;
        }

        public d b(boolean z) {
            this.f3514b = z;
            return this;
        }

        public d c(boolean z) {
            this.f3515c = z;
            return this;
        }

        public d d(boolean z) {
            this.f3516d = z;
            return this;
        }

        public d e(boolean z) {
            this.f3517e = z;
            return this;
        }

        public d f(boolean z) {
            this.f3518f = z;
            return this;
        }

        public d g(boolean z) {
            this.f3519g = z;
            return this;
        }

        public d h(boolean z) {
            this.i = z;
            return this;
        }

        public d i(boolean z) {
            this.j = z;
            return this;
        }

        public d j(boolean z) {
            this.k = z;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class e implements com.applovin.exoplayer2.g {

        /* renamed from: e  reason: collision with root package name */
        public static final g.a<e> f3521e = new g.a() { // from class: com.applovin.exoplayer2.j.c$e$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
                c.e a2;
                a2 = c.e.a(bundle);
                return a2;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f3522a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f3523b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3524c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3525d;

        public e(int i, int[] iArr, int i2) {
            this.f3522a = i;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f3523b = copyOf;
            this.f3524c = iArr.length;
            this.f3525d = i2;
            Arrays.sort(copyOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e a(Bundle bundle) {
            boolean z = false;
            int i = bundle.getInt(a(0), -1);
            int[] intArray = bundle.getIntArray(a(1));
            int i2 = bundle.getInt(a(2), -1);
            if (i >= 0 && i2 >= 0) {
                z = true;
            }
            com.applovin.exoplayer2.l.a.a(z);
            com.applovin.exoplayer2.l.a.b(intArray);
            return new e(i, intArray, i2);
        }

        private static String a(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f3522a == eVar.f3522a && Arrays.equals(this.f3523b, eVar.f3523b) && this.f3525d == eVar.f3525d;
        }

        public int hashCode() {
            return (((this.f3522a * 31) + Arrays.hashCode(this.f3523b)) * 31) + this.f3525d;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class f implements Comparable<f> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3526a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f3527b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f3528c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f3529d;

        /* renamed from: e  reason: collision with root package name */
        private final int f3530e;

        /* renamed from: f  reason: collision with root package name */
        private final int f3531f;

        /* renamed from: g  reason: collision with root package name */
        private final int f3532g;

        /* renamed from: h  reason: collision with root package name */
        private final int f3533h;
        private final boolean i;

        public f(v vVar, C0053c c0053c, int i, String str) {
            int i2;
            boolean z = false;
            this.f3527b = c.a(i, false);
            int i3 = vVar.f4181d & (~c0053c.f3507c);
            this.f3528c = (i3 & 1) != 0;
            this.f3529d = (i3 & 2) != 0;
            s<String> a2 = c0053c.H.isEmpty() ? s.a("") : c0053c.H;
            int i4 = 0;
            while (true) {
                if (i4 >= a2.size()) {
                    i4 = Integer.MAX_VALUE;
                    i2 = 0;
                    break;
                }
                i2 = c.a(vVar, a2.get(i4), c0053c.J);
                if (i2 > 0) {
                    break;
                }
                i4++;
            }
            this.f3530e = i4;
            this.f3531f = i2;
            int bitCount = Integer.bitCount(vVar.f4182e & c0053c.I);
            this.f3532g = bitCount;
            this.i = (vVar.f4182e & 1088) != 0;
            int a3 = c.a(vVar, str, c.a(str) == null);
            this.f3533h = a3;
            if (i2 > 0 || ((c0053c.H.isEmpty() && bitCount > 0) || this.f3528c || (this.f3529d && a3 > 0))) {
                z = true;
            }
            this.f3526a = z;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(f fVar) {
            n a2 = n.a().b(this.f3527b, fVar.f3527b).a(Integer.valueOf(this.f3530e), Integer.valueOf(fVar.f3530e), ai.b().a()).a(this.f3531f, fVar.f3531f).a(this.f3532g, fVar.f3532g).b(this.f3528c, fVar.f3528c).a(Boolean.valueOf(this.f3529d), Boolean.valueOf(fVar.f3529d), this.f3531f == 0 ? ai.b() : ai.b().a()).a(this.f3533h, fVar.f3533h);
            if (this.f3532g == 0) {
                a2 = a2.a(this.i, fVar.i);
            }
            return a2.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class g implements Comparable<g> {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3534a;

        /* renamed from: b  reason: collision with root package name */
        private final C0053c f3535b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f3536c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f3537d;

        /* renamed from: e  reason: collision with root package name */
        private final int f3538e;

        /* renamed from: f  reason: collision with root package name */
        private final int f3539f;

        /* renamed from: g  reason: collision with root package name */
        private final int f3540g;

        public g(v vVar, C0053c c0053c, int i, boolean z) {
            this.f3535b = c0053c;
            boolean z2 = true;
            int i2 = 0;
            this.f3534a = z && (vVar.q == -1 || vVar.q <= c0053c.q) && ((vVar.r == -1 || vVar.r <= c0053c.r) && ((vVar.s == -1.0f || vVar.s <= ((float) c0053c.s)) && (vVar.f4185h == -1 || vVar.f4185h <= c0053c.t)));
            if (!z || ((vVar.q != -1 && vVar.q < c0053c.u) || ((vVar.r != -1 && vVar.r < c0053c.v) || ((vVar.s != -1.0f && vVar.s < c0053c.w) || (vVar.f4185h != -1 && vVar.f4185h < c0053c.x))))) {
                z2 = false;
            }
            this.f3536c = z2;
            this.f3537d = c.a(i, false);
            this.f3538e = vVar.f4185h;
            this.f3539f = vVar.b();
            while (true) {
                if (i2 >= c0053c.B.size()) {
                    i2 = Integer.MAX_VALUE;
                    break;
                } else if (vVar.l != null && vVar.l.equals(c0053c.B.get(i2))) {
                    break;
                } else {
                    i2++;
                }
            }
            this.f3540g = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(g gVar) {
            ai a2 = (this.f3534a && this.f3537d) ? c.f3491b : c.f3491b.a();
            return n.a().b(this.f3537d, gVar.f3537d).b(this.f3534a, gVar.f3534a).b(this.f3536c, gVar.f3536c).a(Integer.valueOf(this.f3540g), Integer.valueOf(gVar.f3540g), ai.b().a()).a(Integer.valueOf(this.f3538e), Integer.valueOf(gVar.f3538e), this.f3535b.K ? c.f3491b.a() : c.f3492c).a(Integer.valueOf(this.f3539f), Integer.valueOf(gVar.f3539f), a2).a(Integer.valueOf(this.f3538e), Integer.valueOf(gVar.f3538e), a2).b();
        }
    }

    @Deprecated
    public c() {
        this(C0053c.f3505a, new a.b());
    }

    public c(Context context) {
        this(context, new a.b());
    }

    public c(Context context, d.b bVar) {
        this(C0053c.a(context), bVar);
    }

    public c(C0053c c0053c, d.b bVar) {
        this.f3493d = bVar;
        this.f3494e = new AtomicReference<>(c0053c);
    }

    private static int a(ac acVar, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            int intValue = list.get(i11).intValue();
            if (a(acVar.a(intValue), str, iArr[intValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                i10++;
            }
        }
        return i10;
    }

    protected static int a(v vVar, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(vVar.f4180c)) {
            String a2 = a(str);
            String a3 = a(vVar.f4180c);
            if (a3 == null || a2 == null) {
                return (z && a3 == null) ? 1 : 0;
            } else if (a3.startsWith(a2) || a2.startsWith(a3)) {
                return 3;
            } else {
                return com.applovin.exoplayer2.l.ai.b(a3, "-")[0].equals(com.applovin.exoplayer2.l.ai.b(a2, "-")[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(Integer num, Integer num2) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000d, code lost:
        if ((r6 > r7) != (r4 > r5)) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point a(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = r3
            goto L9
        L8:
            r1 = r0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = r0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.applovin.exoplayer2.l.ai.a(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.applovin.exoplayer2.l.ai.a(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.j.c.a(boolean, int, int, int, int):android.graphics.Point");
    }

    private static d.a a(ad adVar, int[][] iArr, int i, C0053c c0053c) {
        ad adVar2 = adVar;
        C0053c c0053c2 = c0053c;
        int i2 = c0053c2.f3510f ? 24 : 16;
        boolean z = c0053c2.f3509e && (i & i2) != 0;
        int i3 = 0;
        while (i3 < adVar2.f3010b) {
            ac a2 = adVar2.a(i3);
            int i4 = i3;
            int[] a3 = a(a2, iArr[i3], z, i2, c0053c2.q, c0053c2.r, c0053c2.s, c0053c2.t, c0053c2.u, c0053c2.v, c0053c2.w, c0053c2.x, c0053c2.y, c0053c2.z, c0053c2.A);
            if (a3.length > 0) {
                return new d.a(a2, a3);
            }
            i3 = i4 + 1;
            adVar2 = adVar;
            c0053c2 = c0053c;
        }
        return null;
    }

    private static d.a a(ad adVar, int[][] iArr, C0053c c0053c) {
        int i = -1;
        ac acVar = null;
        g gVar = null;
        for (int i2 = 0; i2 < adVar.f3010b; i2++) {
            ac a2 = adVar.a(i2);
            List<Integer> a3 = a(a2, c0053c.y, c0053c.z, c0053c.A);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < a2.f3005a; i3++) {
                v a4 = a2.a(i3);
                if ((a4.f4182e & 16384) == 0 && a(iArr2[i3], c0053c.k)) {
                    g gVar2 = new g(a4, c0053c, iArr2[i3], a3.contains(Integer.valueOf(i3)));
                    if ((gVar2.f3534a || c0053c.f3508d) && (gVar == null || gVar2.compareTo(gVar) > 0)) {
                        acVar = a2;
                        i = i3;
                        gVar = gVar2;
                    }
                }
            }
        }
        if (acVar == null) {
            return null;
        }
        return new d.a(acVar, i);
    }

    protected static String a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    private static List<Integer> a(ac acVar, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(acVar.f3005a);
        for (int i3 = 0; i3 < acVar.f3005a; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i4 = Integer.MAX_VALUE;
            for (int i5 = 0; i5 < acVar.f3005a; i5++) {
                v a2 = acVar.a(i5);
                if (a2.q > 0 && a2.r > 0) {
                    Point a3 = a(z, i, i2, a2.q, a2.r);
                    int i6 = a2.q * a2.r;
                    if (a2.q >= ((int) (a3.x * 0.98f)) && a2.r >= ((int) (a3.y * 0.98f)) && i6 < i4) {
                        i4 = i6;
                    }
                }
            }
            if (i4 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int b2 = acVar.a(((Integer) arrayList.get(size)).intValue()).b();
                    if (b2 == -1 || b2 > i4) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    private static void a(f.a aVar, int[][][] iArr, at[] atVarArr, com.applovin.exoplayer2.j.d[] dVarArr) {
        boolean z;
        boolean z2 = false;
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < aVar.a(); i3++) {
            int a2 = aVar.a(i3);
            com.applovin.exoplayer2.j.d dVar = dVarArr[i3];
            if ((a2 == 1 || a2 == 2) && dVar != null && a(iArr[i3], aVar.b(i3), dVar)) {
                if (a2 == 1) {
                    if (i2 != -1) {
                        z = false;
                        break;
                    }
                    i2 = i3;
                } else if (i != -1) {
                    z = false;
                    break;
                } else {
                    i = i3;
                }
            }
        }
        z = true;
        if (i2 != -1 && i != -1) {
            z2 = true;
        }
        if (z && z2) {
            at atVar = new at(true);
            atVarArr[i2] = atVar;
            atVarArr[i] = atVar;
        }
    }

    protected static boolean a(int i, boolean z) {
        int c2 = as.c(i);
        return c2 == 4 || (z && c2 == 3);
    }

    private static boolean a(v vVar, int i, v vVar2, int i2, boolean z, boolean z2, boolean z3) {
        if (!a(i, false) || vVar.f4185h == -1 || vVar.f4185h > i2) {
            return false;
        }
        if (z3 || (vVar.y != -1 && vVar.y == vVar2.y)) {
            if (z || (vVar.l != null && TextUtils.equals(vVar.l, vVar2.l))) {
                return z2 || (vVar.z != -1 && vVar.z == vVar2.z);
            }
            return false;
        }
        return false;
    }

    private static boolean a(v vVar, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        if ((vVar.f4182e & 16384) == 0 && a(i, false) && (i & i2) != 0) {
            if (str == null || com.applovin.exoplayer2.l.ai.a((Object) vVar.l, (Object) str)) {
                if (vVar.q == -1 || (i7 <= vVar.q && vVar.q <= i3)) {
                    if (vVar.r == -1 || (i8 <= vVar.r && vVar.r <= i4)) {
                        return (vVar.s == -1.0f || (((float) i9) <= vVar.s && vVar.s <= ((float) i5))) && vVar.f4185h != -1 && i10 <= vVar.f4185h && vVar.f4185h <= i6;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    private static boolean a(int[][] iArr, ad adVar, com.applovin.exoplayer2.j.d dVar) {
        if (dVar == null) {
            return false;
        }
        int a2 = adVar.a(dVar.d());
        for (int i = 0; i < dVar.e(); i++) {
            if (as.d(iArr[a2][dVar.b(i)]) != 32) {
                return false;
            }
        }
        return true;
    }

    private static int[] a(ac acVar, int[] iArr, int i, int i2, boolean z, boolean z2, boolean z3) {
        v a2 = acVar.a(i);
        int[] iArr2 = new int[acVar.f3005a];
        int i3 = 0;
        for (int i4 = 0; i4 < acVar.f3005a; i4++) {
            if (i4 == i || a(acVar.a(i4), iArr[i4], a2, i2, z, z2, z3)) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return Arrays.copyOf(iArr2, i3);
    }

    private static int[] a(ac acVar, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z2) {
        String str;
        int i12;
        int i13;
        HashSet hashSet;
        if (acVar.f3005a < 2) {
            return f3490a;
        }
        List<Integer> a2 = a(acVar, i10, i11, z2);
        if (a2.size() < 2) {
            return f3490a;
        }
        if (z) {
            str = null;
        } else {
            HashSet hashSet2 = new HashSet();
            String str2 = null;
            int i14 = 0;
            int i15 = 0;
            while (i15 < a2.size()) {
                String str3 = acVar.a(a2.get(i15).intValue()).l;
                if (hashSet2.add(str3)) {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                    int a3 = a(acVar, iArr, i, str3, i2, i3, i4, i5, i6, i7, i8, i9, a2);
                    if (a3 > i12) {
                        i14 = a3;
                        str2 = str3;
                        i15 = i13 + 1;
                        hashSet2 = hashSet;
                    }
                } else {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                }
                i14 = i12;
                i15 = i13 + 1;
                hashSet2 = hashSet;
            }
            str = str2;
        }
        b(acVar, iArr, i, str, i2, i3, i4, i5, i6, i7, i8, i9, a2);
        return a2.size() < 2 ? f3490a : com.applovin.exoplayer2.common.b.c.a(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        } else if (num2.intValue() == -1) {
            return 1;
        } else {
            return num.intValue() - num2.intValue();
        }
    }

    private static void b(ac acVar, int[] iArr, int i, String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!a(acVar.a(intValue), str, iArr[intValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                list.remove(size);
            }
        }
    }

    protected Pair<d.a, f> a(ad adVar, int[][] iArr, C0053c c0053c, String str) throws p {
        int i = -1;
        ac acVar = null;
        f fVar = null;
        for (int i2 = 0; i2 < adVar.f3010b; i2++) {
            ac a2 = adVar.a(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < a2.f3005a; i3++) {
                if (a(iArr2[i3], c0053c.k)) {
                    f fVar2 = new f(a2.a(i3), c0053c, iArr2[i3], str);
                    if (fVar2.f3526a && (fVar == null || fVar2.compareTo(fVar) > 0)) {
                        acVar = a2;
                        i = i3;
                        fVar = fVar2;
                    }
                }
            }
        }
        if (acVar == null) {
            return null;
        }
        return Pair.create(new d.a(acVar, i), (f) com.applovin.exoplayer2.l.a.b(fVar));
    }

    @Override // com.applovin.exoplayer2.j.f
    protected final Pair<at[], com.applovin.exoplayer2.j.d[]> a(f.a aVar, int[][][] iArr, int[] iArr2, p.a aVar2, ba baVar) throws com.applovin.exoplayer2.p {
        C0053c c0053c = this.f3494e.get();
        int a2 = aVar.a();
        d.a[] a3 = a(aVar, iArr, iArr2, c0053c);
        int i = 0;
        while (true) {
            if (i >= a2) {
                break;
            }
            int a4 = aVar.a(i);
            if (c0053c.a(i) || c0053c.M.contains(Integer.valueOf(a4))) {
                a3[i] = null;
            } else {
                ad b2 = aVar.b(i);
                if (c0053c.a(i, b2)) {
                    e b3 = c0053c.b(i, b2);
                    a3[i] = b3 != null ? new d.a(b2.a(b3.f3522a), b3.f3523b, b3.f3525d) : null;
                }
            }
            i++;
        }
        com.applovin.exoplayer2.j.d[] a5 = this.f3493d.a(a3, d(), aVar2, baVar);
        at[] atVarArr = new at[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            atVarArr[i2] = (c0053c.a(i2) || c0053c.M.contains(Integer.valueOf(aVar.a(i2))) || (aVar.a(i2) != -2 && a5[i2] == null)) ? null : at.f1394a;
        }
        if (c0053c.l) {
            a(aVar, iArr, atVarArr, a5);
        }
        return Pair.create(atVarArr, a5);
    }

    protected d.a a(int i, ad adVar, int[][] iArr, C0053c c0053c) throws com.applovin.exoplayer2.p {
        ac acVar = null;
        b bVar = null;
        int i2 = 0;
        for (int i3 = 0; i3 < adVar.f3010b; i3++) {
            ac a2 = adVar.a(i3);
            int[] iArr2 = iArr[i3];
            for (int i4 = 0; i4 < a2.f3005a; i4++) {
                if (a(iArr2[i4], c0053c.k)) {
                    b bVar2 = new b(a2.a(i4), iArr2[i4]);
                    if (bVar == null || bVar2.compareTo(bVar) > 0) {
                        acVar = a2;
                        i2 = i4;
                        bVar = bVar2;
                    }
                }
            }
        }
        if (acVar == null) {
            return null;
        }
        return new d.a(acVar, i2);
    }

    protected d.a a(ad adVar, int[][] iArr, int i, C0053c c0053c, boolean z) throws com.applovin.exoplayer2.p {
        d.a a2 = (c0053c.L || c0053c.K || !z) ? null : a(adVar, iArr, i, c0053c);
        return a2 == null ? a(adVar, iArr, c0053c) : a2;
    }

    @Override // com.applovin.exoplayer2.j.j
    public boolean a() {
        return true;
    }

    protected d.a[] a(f.a aVar, int[][][] iArr, int[] iArr2, C0053c c0053c) throws com.applovin.exoplayer2.p {
        int i;
        String str;
        int i2;
        a aVar2;
        String str2;
        int i3;
        int a2 = aVar.a();
        d.a[] aVarArr = new d.a[a2];
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        boolean z2 = false;
        while (true) {
            if (i5 >= a2) {
                break;
            }
            if (2 == aVar.a(i5)) {
                if (!z) {
                    d.a a3 = a(aVar.b(i5), iArr[i5], iArr2[i5], c0053c, true);
                    aVarArr[i5] = a3;
                    z = a3 != null;
                }
                z2 |= aVar.b(i5).f3010b > 0;
            }
            i5++;
        }
        int i6 = 0;
        int i7 = -1;
        a aVar3 = null;
        String str3 = null;
        while (i6 < a2) {
            if (i == aVar.a(i6)) {
                int i8 = (c0053c.m || !z2) ? i : false;
                i2 = i7;
                aVar2 = aVar3;
                str2 = str3;
                i3 = i6;
                Pair<d.a, a> b2 = b(aVar.b(i6), iArr[i6], iArr2[i6], c0053c, i8);
                if (b2 != null && (aVar2 == null || ((a) b2.second).compareTo(aVar2) > 0)) {
                    if (i2 != -1) {
                        aVarArr[i2] = null;
                    }
                    d.a aVar4 = (d.a) b2.first;
                    aVarArr[i3] = aVar4;
                    str3 = aVar4.f3541a.a(aVar4.f3542b[0]).f4180c;
                    aVar3 = (a) b2.second;
                    i7 = i3;
                    i6 = i3 + 1;
                    i = true;
                }
            } else {
                i2 = i7;
                aVar2 = aVar3;
                str2 = str3;
                i3 = i6;
            }
            i7 = i2;
            aVar3 = aVar2;
            str3 = str2;
            i6 = i3 + 1;
            i = true;
        }
        String str4 = str3;
        int i9 = -1;
        f fVar = null;
        while (i4 < a2) {
            int a4 = aVar.a(i4);
            if (a4 != 1) {
                if (a4 != 2) {
                    if (a4 != 3) {
                        aVarArr[i4] = a(a4, aVar.b(i4), iArr[i4], c0053c);
                    } else {
                        str = str4;
                        Pair<d.a, f> a5 = a(aVar.b(i4), iArr[i4], c0053c, str);
                        if (a5 != null && (fVar == null || ((f) a5.second).compareTo(fVar) > 0)) {
                            if (i9 != -1) {
                                aVarArr[i9] = null;
                            }
                            aVarArr[i4] = (d.a) a5.first;
                            fVar = (f) a5.second;
                            i9 = i4;
                        }
                    }
                }
                str = str4;
            } else {
                str = str4;
            }
            i4++;
            str4 = str;
        }
        return aVarArr;
    }

    protected Pair<d.a, a> b(ad adVar, int[][] iArr, int i, C0053c c0053c, boolean z) throws com.applovin.exoplayer2.p {
        d.a aVar = null;
        int i2 = -1;
        int i3 = -1;
        a aVar2 = null;
        for (int i4 = 0; i4 < adVar.f3010b; i4++) {
            ac a2 = adVar.a(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < a2.f3005a; i5++) {
                if (a(iArr2[i5], c0053c.k)) {
                    a aVar3 = new a(a2.a(i5), c0053c, iArr2[i5]);
                    if ((aVar3.f3495a || c0053c.f3511g) && (aVar2 == null || aVar3.compareTo(aVar2) > 0)) {
                        i2 = i4;
                        i3 = i5;
                        aVar2 = aVar3;
                    }
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        ac a3 = adVar.a(i2);
        if (!c0053c.L && !c0053c.K && z) {
            int[] a4 = a(a3, iArr[i2], i3, c0053c.F, c0053c.f3512h, c0053c.i, c0053c.j);
            if (a4.length > 1) {
                aVar = new d.a(a3, a4);
            }
        }
        if (aVar == null) {
            aVar = new d.a(a3, i3);
        }
        return Pair.create(aVar, (a) com.applovin.exoplayer2.l.a.b(aVar2));
    }
}
