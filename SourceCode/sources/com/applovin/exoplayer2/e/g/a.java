package com.applovin.exoplayer2.e.g;

import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f2237a;

    /* renamed from: com.applovin.exoplayer2.e.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0036a extends a {

        /* renamed from: b  reason: collision with root package name */
        public final long f2238b;

        /* renamed from: c  reason: collision with root package name */
        public final List<b> f2239c;

        /* renamed from: d  reason: collision with root package name */
        public final List<C0036a> f2240d;

        public C0036a(int i, long j) {
            super(i);
            this.f2238b = j;
            this.f2239c = new ArrayList();
            this.f2240d = new ArrayList();
        }

        public void a(C0036a c0036a) {
            this.f2240d.add(c0036a);
        }

        public void a(b bVar) {
            this.f2239c.add(bVar);
        }

        public b d(int i) {
            int size = this.f2239c.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.f2239c.get(i2);
                if (bVar.f2237a == i) {
                    return bVar;
                }
            }
            return null;
        }

        public C0036a e(int i) {
            int size = this.f2240d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0036a c0036a = this.f2240d.get(i2);
                if (c0036a.f2237a == i) {
                    return c0036a;
                }
            }
            return null;
        }

        @Override // com.applovin.exoplayer2.e.g.a
        public String toString() {
            return c(this.f2237a) + " leaves: " + Arrays.toString(this.f2239c.toArray()) + " containers: " + Arrays.toString(this.f2240d.toArray());
        }
    }

    /* loaded from: classes.dex */
    static final class b extends a {

        /* renamed from: b  reason: collision with root package name */
        public final y f2241b;

        public b(int i, y yVar) {
            super(i);
            this.f2241b = yVar;
        }
    }

    public a(int i) {
        this.f2237a = i;
    }

    public static int a(int i) {
        return (i >> 24) & 255;
    }

    public static int b(int i) {
        return i & ViewCompat.MEASURED_SIZE_MASK;
    }

    public static String c(int i) {
        return "" + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    public String toString() {
        return c(this.f2237a);
    }
}
