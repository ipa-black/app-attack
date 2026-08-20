package com.yandex.metrica.impl.ob;

import android.util.Pair;
/* renamed from: com.yandex.metrica.impl.ob.s  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1842s {

    /* renamed from: a  reason: collision with root package name */
    private C1420am f15695a;

    /* renamed from: b  reason: collision with root package name */
    private long f15696b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15697c;

    /* renamed from: d  reason: collision with root package name */
    private final C1446bn f15698d;

    /* renamed from: com.yandex.metrica.impl.ob.s$a */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f15699a;

        /* renamed from: b  reason: collision with root package name */
        public final long f15700b;

        public a(String str, long j) {
            this.f15699a = str;
            this.f15700b = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f15700b != aVar.f15700b) {
                return false;
            }
            String str = this.f15699a;
            String str2 = aVar.f15699a;
            if (str != null) {
                if (str.equals(str2)) {
                    return true;
                }
            } else if (str2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f15699a;
            int hashCode = str != null ? str.hashCode() : 0;
            long j = this.f15700b;
            return (hashCode * 31) + ((int) (j ^ (j >>> 32)));
        }
    }

    public C1842s(String str, long j, C1470cm c1470cm) {
        this(str, j, new C1446bn(c1470cm, "[App Environment]"));
    }

    public synchronized void a(Pair<String, String> pair) {
        if (this.f15698d.b(this.f15695a, (String) pair.first, (String) pair.second)) {
            this.f15697c = true;
        }
    }

    public synchronized void b() {
        this.f15695a = new C1420am();
    }

    public synchronized String toString() {
        return "Map size " + this.f15695a.size() + ". Is changed " + this.f15697c + ". Current revision " + this.f15696b;
    }

    C1842s(String str, long j, C1446bn c1446bn) {
        this.f15696b = j;
        try {
            this.f15695a = new C1420am(str);
        } catch (Throwable unused) {
            this.f15695a = new C1420am();
        }
        this.f15698d = c1446bn;
    }

    public synchronized a a() {
        if (this.f15697c) {
            this.f15696b++;
            this.f15697c = false;
        }
        return new a(Tl.g(this.f15695a), this.f15696b);
    }
}
