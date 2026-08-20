package com.applovin.exoplayer2.h.a;

import android.net.Uri;
import android.os.Bundle;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.h.a.a;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: b  reason: collision with root package name */
    public final Object f2982b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2983c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2984d;

    /* renamed from: e  reason: collision with root package name */
    public final long f2985e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2986f;
    private final C0043a[] i;

    /* renamed from: a  reason: collision with root package name */
    public static final a f2979a = new a(null, new C0043a[0], 0, C.TIME_UNSET, 0);

    /* renamed from: h  reason: collision with root package name */
    private static final C0043a f2981h = new C0043a(0).b(0);

    /* renamed from: g  reason: collision with root package name */
    public static final g.a<a> f2980g = new g.a() { // from class: com.applovin.exoplayer2.h.a.a$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            a a2;
            a2 = a.a(bundle);
            return a2;
        }
    };

    /* renamed from: com.applovin.exoplayer2.h.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0043a implements g {

        /* renamed from: h  reason: collision with root package name */
        public static final g.a<C0043a> f2987h = new g.a() { // from class: com.applovin.exoplayer2.h.a.a$a$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                a.C0043a a2;
                a2 = a.C0043a.a(bundle);
                return a2;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f2988a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2989b;

        /* renamed from: c  reason: collision with root package name */
        public final Uri[] f2990c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f2991d;

        /* renamed from: e  reason: collision with root package name */
        public final long[] f2992e;

        /* renamed from: f  reason: collision with root package name */
        public final long f2993f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f2994g;

        public C0043a(long j) {
            this(j, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        private C0043a(long j, int i, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
            com.applovin.exoplayer2.l.a.a(iArr.length == uriArr.length);
            this.f2988a = j;
            this.f2989b = i;
            this.f2991d = iArr;
            this.f2990c = uriArr;
            this.f2992e = jArr;
            this.f2993f = j2;
            this.f2994g = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static C0043a a(Bundle bundle) {
            long j = bundle.getLong(c(0));
            int i = bundle.getInt(c(1), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(c(2));
            int[] intArray = bundle.getIntArray(c(3));
            long[] longArray = bundle.getLongArray(c(4));
            long j2 = bundle.getLong(c(5));
            boolean z = bundle.getBoolean(c(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new C0043a(j, i, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j2, z);
        }

        private static int[] a(int[] iArr, int i) {
            int length = iArr.length;
            int max = Math.max(i, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        private static long[] a(long[] jArr, int i) {
            int length = jArr.length;
            int max = Math.max(i, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, (long) C.TIME_UNSET);
            return copyOf;
        }

        private static String c(int i) {
            return Integer.toString(i, 36);
        }

        public int a() {
            return a(-1);
        }

        public int a(int i) {
            int i2;
            int i3 = i + 1;
            while (true) {
                int[] iArr = this.f2991d;
                if (i3 >= iArr.length || this.f2994g || (i2 = iArr[i3]) == 0 || i2 == 1) {
                    break;
                }
                i3++;
            }
            return i3;
        }

        public C0043a b(int i) {
            int[] a2 = a(this.f2991d, i);
            long[] a3 = a(this.f2992e, i);
            return new C0043a(this.f2988a, i, a2, (Uri[]) Arrays.copyOf(this.f2990c, i), a3, this.f2993f, this.f2994g);
        }

        public boolean b() {
            return this.f2989b == -1 || a() < this.f2989b;
        }

        public boolean c() {
            if (this.f2989b == -1) {
                return true;
            }
            for (int i = 0; i < this.f2989b; i++) {
                int i2 = this.f2991d[i];
                if (i2 == 0 || i2 == 1) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0043a c0043a = (C0043a) obj;
            return this.f2988a == c0043a.f2988a && this.f2989b == c0043a.f2989b && Arrays.equals(this.f2990c, c0043a.f2990c) && Arrays.equals(this.f2991d, c0043a.f2991d) && Arrays.equals(this.f2992e, c0043a.f2992e) && this.f2993f == c0043a.f2993f && this.f2994g == c0043a.f2994g;
        }

        public int hashCode() {
            long j = this.f2988a;
            long j2 = this.f2993f;
            return (((((((((((this.f2989b * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Arrays.hashCode(this.f2990c)) * 31) + Arrays.hashCode(this.f2991d)) * 31) + Arrays.hashCode(this.f2992e)) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.f2994g ? 1 : 0);
        }
    }

    private a(Object obj, C0043a[] c0043aArr, long j, long j2, int i) {
        this.f2982b = obj;
        this.f2984d = j;
        this.f2985e = j2;
        this.f2983c = c0043aArr.length + i;
        this.i = c0043aArr;
        this.f2986f = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a a(Bundle bundle) {
        C0043a[] c0043aArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(b(1));
        if (parcelableArrayList == null) {
            c0043aArr = new C0043a[0];
        } else {
            C0043a[] c0043aArr2 = new C0043a[parcelableArrayList.size()];
            for (int i = 0; i < parcelableArrayList.size(); i++) {
                c0043aArr2[i] = C0043a.f2987h.fromBundle((Bundle) parcelableArrayList.get(i));
            }
            c0043aArr = c0043aArr2;
        }
        return new a(null, c0043aArr, bundle.getLong(b(2), 0L), bundle.getLong(b(3), C.TIME_UNSET), bundle.getInt(b(4)));
    }

    private boolean a(long j, long j2, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j3 = a(i).f2988a;
        return j3 == Long.MIN_VALUE ? j2 == C.TIME_UNSET || j < j2 : j < j3;
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    public int a(long j, long j2) {
        int i = this.f2983c - 1;
        while (i >= 0 && a(j, j2, i)) {
            i--;
        }
        if (i < 0 || !a(i).c()) {
            return -1;
        }
        return i;
    }

    public C0043a a(int i) {
        int i2 = this.f2986f;
        return i < i2 ? f2981h : this.i[i - i2];
    }

    public int b(long j, long j2) {
        if (j != Long.MIN_VALUE) {
            if (j2 == C.TIME_UNSET || j < j2) {
                int i = this.f2986f;
                while (i < this.f2983c && ((a(i).f2988a != Long.MIN_VALUE && a(i).f2988a <= j) || !a(i).b())) {
                    i++;
                }
                if (i < this.f2983c) {
                    return i;
                }
                return -1;
            }
            return -1;
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return ai.a(this.f2982b, aVar.f2982b) && this.f2983c == aVar.f2983c && this.f2984d == aVar.f2984d && this.f2985e == aVar.f2985e && this.f2986f == aVar.f2986f && Arrays.equals(this.i, aVar.i);
    }

    public int hashCode() {
        int i = this.f2983c * 31;
        Object obj = this.f2982b;
        return ((((((((i + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f2984d)) * 31) + ((int) this.f2985e)) * 31) + this.f2986f) * 31) + Arrays.hashCode(this.i);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AdPlaybackState(adsId=");
        sb.append(this.f2982b);
        sb.append(", adResumePositionUs=");
        sb.append(this.f2984d);
        sb.append(", adGroups=[");
        for (int i = 0; i < this.i.length; i++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.i[i].f2988a);
            sb.append(", ads=[");
            for (int i2 = 0; i2 < this.i[i].f2991d.length; i2++) {
                sb.append("ad(state=");
                int i3 = this.i[i].f2991d[i2];
                sb.append(i3 != 0 ? i3 != 1 ? i3 != 2 ? i3 != 3 ? i3 != 4 ? '?' : '!' : 'P' : 'S' : 'R' : '_');
                sb.append(", durationUs=");
                sb.append(this.i[i].f2992e[i2]);
                sb.append(')');
                if (i2 < this.i[i].f2991d.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i < this.i.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }
}
