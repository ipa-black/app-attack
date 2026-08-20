package com.criteo.publisher.n0;

import android.content.Context;
import android.os.Looper;
import com.appodeal.advertising.AdvertisingInfo;
import com.criteo.publisher.x;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: AdvertisingInfo.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private final f f9202b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f9203c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f9204d;

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f9201a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<c> f9205e = new AtomicReference<>();

    public b(Context context, Executor executor, f fVar) {
        this.f9203c = context;
        this.f9204d = executor;
        this.f9202b = fVar;
    }

    /* compiled from: AdvertisingInfo.java */
    /* loaded from: classes2.dex */
    class a extends x {
        a() {
        }

        @Override // com.criteo.publisher.x
        public void a() {
            b.this.b();
        }
    }

    public void f() {
        this.f9204d.execute(new a());
    }

    public String b() {
        return c().b();
    }

    public boolean d() {
        return c().c();
    }

    private c c() {
        if (this.f9205e.get() == null) {
            if (e()) {
                this.f9204d.execute(new C0254b());
            } else {
                a();
            }
        }
        c cVar = this.f9205e.get();
        return cVar == null ? c.a() : cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdvertisingInfo.java */
    /* renamed from: com.criteo.publisher.n0.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0254b extends x {
        C0254b() {
        }

        @Override // com.criteo.publisher.x
        public void a() {
            b.this.a();
        }
    }

    private boolean e() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            return false;
        }
        return Thread.currentThread().equals(mainLooper.getThread());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        c cVar;
        try {
            c a2 = this.f9202b.a(this.f9203c);
            if (a2.c()) {
                cVar = c.d();
            } else {
                cVar = c.a(a2.b());
            }
        } catch (e e2) {
            c a3 = c.a();
            this.f9201a.a("Error getting advertising id", e2);
            cVar = a3;
        } catch (Exception e3) {
            o.a((Throwable) new d(e3));
            return;
        }
        b$$ExternalSyntheticBackportWithForwarding0.m(this.f9205e, null, cVar);
    }

    /* compiled from: AdvertisingInfo.java */
    /* loaded from: classes2.dex */
    public static class f {
        c a(Context context) throws Exception {
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                return new c(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled());
            } catch (LinkageError e2) {
                throw new e(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdvertisingInfo.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: c  reason: collision with root package name */
        private static final c f9208c = new c(null, false);

        /* renamed from: d  reason: collision with root package name */
        private static final c f9209d = new c(AdvertisingInfo.defaultAdvertisingId, true);

        /* renamed from: a  reason: collision with root package name */
        private final String f9210a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f9211b;

        c(String str, boolean z) {
            this.f9210a = str;
            this.f9211b = z;
        }

        static c a(String str) {
            return new c(str, false);
        }

        static c d() {
            return f9209d;
        }

        static c a() {
            return f9208c;
        }

        public String b() {
            return this.f9210a;
        }

        public boolean c() {
            return this.f9211b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdvertisingInfo.java */
    /* loaded from: classes2.dex */
    public static class e extends Exception {
        e(Throwable th) {
            super("play-services-ads-identifier does not seems to be in the classpath", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdvertisingInfo.java */
    /* loaded from: classes2.dex */
    public static class d extends Exception {
        d(Throwable th) {
            super("Error getting advertising id", th);
        }
    }
}
