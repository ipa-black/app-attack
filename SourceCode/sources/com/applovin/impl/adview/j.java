package com.applovin.impl.adview;

import android.os.Handler;
import com.amazon.aps.shared.util.APSSharedUtil;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.v f4428a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f4429b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<b> f4430c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f4431d = new AtomicInteger();

    /* loaded from: classes.dex */
    public interface a {
        void a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f4435a;

        /* renamed from: b  reason: collision with root package name */
        private final a f4436b;

        /* renamed from: c  reason: collision with root package name */
        private final long f4437c;

        private b(String str, long j, a aVar) {
            this.f4435a = str;
            this.f4437c = j;
            this.f4436b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String a() {
            return this.f4435a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b() {
            return this.f4437c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a c() {
            return this.f4436b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                String str = this.f4435a;
                String str2 = ((b) obj).f4435a;
                return str != null ? str.equalsIgnoreCase(str2) : str2 == null;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f4435a;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "CountdownProxy{identifier='" + this.f4435a + "', countdownStepMillis=" + this.f4437c + '}';
        }
    }

    public j(Handler handler, com.applovin.impl.sdk.n nVar) {
        if (handler == null) {
            throw new IllegalArgumentException("No handler specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.f4429b = handler;
        this.f4428a = nVar.D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final b bVar, final int i) {
        this.f4429b.postDelayed(new Runnable() { // from class: com.applovin.impl.adview.j.1
            @Override // java.lang.Runnable
            public void run() {
                a c2 = bVar.c();
                if (!c2.b()) {
                    com.applovin.impl.sdk.v unused = j.this.f4428a;
                    if (com.applovin.impl.sdk.v.a()) {
                        j.this.f4428a.b("CountdownManager", "Ending countdown for " + bVar.a());
                    }
                } else if (j.this.f4431d.get() != i) {
                    com.applovin.impl.sdk.v unused2 = j.this.f4428a;
                    if (com.applovin.impl.sdk.v.a()) {
                        j.this.f4428a.d("CountdownManager", "Killing duplicate countdown from previous generation: " + bVar.a());
                    }
                } else {
                    try {
                        c2.a();
                        j.this.a(bVar, i);
                    } catch (Throwable th) {
                        com.applovin.impl.sdk.v unused3 = j.this.f4428a;
                        if (com.applovin.impl.sdk.v.a()) {
                            j.this.f4428a.b("CountdownManager", "Encountered error on countdown step for: " + bVar.a(), th);
                        }
                        j.this.b();
                    }
                }
            }
        }, bVar.b());
    }

    public void a() {
        HashSet<b> hashSet = new HashSet(this.f4430c);
        if (com.applovin.impl.sdk.v.a()) {
            this.f4428a.b("CountdownManager", "Starting " + hashSet.size() + " countdowns...");
        }
        int incrementAndGet = this.f4431d.incrementAndGet();
        for (b bVar : hashSet) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4428a.b("CountdownManager", "Starting countdown: " + bVar.a() + " for generation " + incrementAndGet + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            a(bVar, incrementAndGet);
        }
    }

    public void a(String str, long j, a aVar) {
        if (j <= 0) {
            throw new IllegalArgumentException("Invalid step specified.");
        }
        if (this.f4429b == null) {
            throw new IllegalArgumentException("No handler specified.");
        }
        if (com.applovin.impl.sdk.v.a()) {
            this.f4428a.b("CountdownManager", "Adding countdown: " + str);
        }
        this.f4430c.add(new b(str, j, aVar));
    }

    public void b() {
        if (com.applovin.impl.sdk.v.a()) {
            this.f4428a.b("CountdownManager", "Removing all countdowns...");
        }
        c();
        this.f4430c.clear();
    }

    public void c() {
        if (com.applovin.impl.sdk.v.a()) {
            this.f4428a.b("CountdownManager", "Stopping countdowns...");
        }
        this.f4431d.incrementAndGet();
        this.f4429b.removeCallbacksAndMessages(null);
    }
}
