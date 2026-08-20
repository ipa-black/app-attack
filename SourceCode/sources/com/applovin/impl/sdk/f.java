package com.applovin.impl.sdk;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.exoplayer2.C;
import java.net.HttpURLConnection;
import java.net.URLEncoder;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5779a = (int) TimeUnit.SECONDS.toMillis(30);
    private static final f m = new f();

    /* renamed from: c  reason: collision with root package name */
    private Handler f5781c;

    /* renamed from: e  reason: collision with root package name */
    private Handler f5783e;

    /* renamed from: h  reason: collision with root package name */
    private n f5786h;
    private Thread i;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicLong f5780b = new AtomicLong(0);

    /* renamed from: d  reason: collision with root package name */
    private final HandlerThread f5782d = new HandlerThread("applovin-anr-detector");

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f5784f = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f5785g = new AtomicBoolean();
    private long j = TimeUnit.SECONDS.toMillis(4);
    private long k = TimeUnit.SECONDS.toMillis(3);
    private long l = TimeUnit.SECONDS.toMillis(3);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f5784f.get()) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis() - f.this.f5780b.get();
            if (currentTimeMillis < 0 || currentTimeMillis > f.this.j) {
                f.this.a();
                f.this.b();
            }
            f.this.f5783e.postDelayed(this, f.this.l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f5784f.get()) {
                return;
            }
            f.this.f5780b.set(System.currentTimeMillis());
            f.this.f5781c.postDelayed(this, f.this.k);
        }
    }

    private f() {
    }

    private static String a(String str) {
        try {
            return URLEncoder.encode(str, C.UTF8_NAME);
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f5785g.get()) {
            this.f5784f.set(true);
        }
    }

    public static void a(n nVar) {
        if (nVar != null) {
            if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.fa)).booleanValue() || Utils.isPubInDebugMode(nVar.P(), nVar)) {
                m.a();
            } else {
                m.b(nVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) c().openConnection();
            int i = f5779a;
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoOutput(false);
            Log.d("applovin-anr-detector", "ANR reported with code " + httpURLConnection.getResponseCode());
        } catch (Throwable th) {
            Log.w("applovin-anr-detector", "Failed to report ANR", th);
        }
    }

    private void b(n nVar) {
        if (this.f5785g.compareAndSet(false, true)) {
            this.f5786h = nVar;
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.f.1
                @Override // java.lang.Runnable
                public void run() {
                    f.this.i = Thread.currentThread();
                }
            });
            this.j = ((Long) nVar.a(com.applovin.impl.sdk.c.b.fb)).longValue();
            this.k = ((Long) nVar.a(com.applovin.impl.sdk.c.b.fc)).longValue();
            this.l = ((Long) nVar.a(com.applovin.impl.sdk.c.b.fd)).longValue();
            this.f5781c = new Handler(nVar.P().getMainLooper());
            this.f5782d.start();
            this.f5781c.post(new b());
            Handler handler = new Handler(this.f5782d.getLooper());
            this.f5783e = handler;
            handler.postDelayed(new a(), this.l / 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029 A[Catch: MalformedURLException -> 0x01b6, TRY_ENTER, TryCatch #0 {MalformedURLException -> 0x01b6, blocks: (B:8:0x0019, B:11:0x0029, B:16:0x0047, B:18:0x004b, B:20:0x0052, B:21:0x0079, B:23:0x011a, B:24:0x011c, B:26:0x012c, B:27:0x012e, B:12:0x0036, B:14:0x003a), top: B:31:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0036 A[Catch: MalformedURLException -> 0x01b6, TryCatch #0 {MalformedURLException -> 0x01b6, blocks: (B:8:0x0019, B:11:0x0029, B:16:0x0047, B:18:0x004b, B:20:0x0052, B:21:0x0079, B:23:0x011a, B:24:0x011c, B:26:0x012c, B:27:0x012e, B:12:0x0036, B:14:0x003a), top: B:31:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x011a A[Catch: MalformedURLException -> 0x01b6, TryCatch #0 {MalformedURLException -> 0x01b6, blocks: (B:8:0x0019, B:11:0x0029, B:16:0x0047, B:18:0x004b, B:20:0x0052, B:21:0x0079, B:23:0x011a, B:24:0x011c, B:26:0x012c, B:27:0x012e, B:12:0x0036, B:14:0x003a), top: B:31:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x012c A[Catch: MalformedURLException -> 0x01b6, TryCatch #0 {MalformedURLException -> 0x01b6, blocks: (B:8:0x0019, B:11:0x0029, B:16:0x0047, B:18:0x004b, B:20:0x0052, B:21:0x0079, B:23:0x011a, B:24:0x011c, B:26:0x012c, B:27:0x012e, B:12:0x0036, B:14:0x003a), top: B:31:0x0019 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.URL c() {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.f.c():java.net.URL");
    }
}
