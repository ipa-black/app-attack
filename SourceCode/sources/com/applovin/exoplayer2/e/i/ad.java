package com.applovin.exoplayer2.e.i;

import android.util.SparseArray;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.l.ag;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public interface ad {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f2433a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2434b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f2435c;

        public a(String str, int i, byte[] bArr) {
            this.f2433a = str;
            this.f2434b = i;
            this.f2435c = bArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f2436a;

        /* renamed from: b  reason: collision with root package name */
        public final String f2437b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f2438c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f2439d;

        public b(int i, String str, List<a> list, byte[] bArr) {
            this.f2436a = i;
            this.f2437b = str;
            this.f2438c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f2439d = bArr;
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        SparseArray<ad> a();

        ad a(int i, b bVar);
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f2440a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2441b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2442c;

        /* renamed from: d  reason: collision with root package name */
        private int f2443d;

        /* renamed from: e  reason: collision with root package name */
        private String f2444e;

        public d(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public d(int i, int i2, int i3) {
            this.f2440a = i != Integer.MIN_VALUE ? i + "/" : "";
            this.f2441b = i2;
            this.f2442c = i3;
            this.f2443d = Integer.MIN_VALUE;
            this.f2444e = "";
        }

        private void d() {
            if (this.f2443d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void a() {
            int i = this.f2443d;
            this.f2443d = i == Integer.MIN_VALUE ? this.f2441b : i + this.f2442c;
            this.f2444e = this.f2440a + this.f2443d;
        }

        public int b() {
            d();
            return this.f2443d;
        }

        public String c() {
            d();
            return this.f2444e;
        }
    }

    void a();

    void a(ag agVar, com.applovin.exoplayer2.e.j jVar, d dVar);

    void a(com.applovin.exoplayer2.l.y yVar, int i) throws ai;
}
