package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class V5 {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f14139a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1479d6 f14140b;

    /* renamed from: c  reason: collision with root package name */
    private final X5 f14141c;

    /* renamed from: d  reason: collision with root package name */
    private long f14142d;

    /* renamed from: e  reason: collision with root package name */
    private long f14143e;

    /* renamed from: f  reason: collision with root package name */
    private AtomicLong f14144f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f14145g;

    /* renamed from: h  reason: collision with root package name */
    private volatile a f14146h;
    private long i;
    private long j;
    private SystemTimeProvider k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f14147a;

        /* renamed from: b  reason: collision with root package name */
        private final String f14148b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14149c;

        /* renamed from: d  reason: collision with root package name */
        private final String f14150d;

        /* renamed from: e  reason: collision with root package name */
        private final String f14151e;

        /* renamed from: f  reason: collision with root package name */
        private final int f14152f;

        /* renamed from: g  reason: collision with root package name */
        private final int f14153g;

        a(JSONObject jSONObject) {
            this.f14147a = jSONObject.optString("analyticsSdkVersionName", null);
            this.f14148b = jSONObject.optString("kitBuildNumber", null);
            this.f14149c = jSONObject.optString("appVer", null);
            this.f14150d = jSONObject.optString("appBuild", null);
            this.f14151e = jSONObject.optString("osVer", null);
            this.f14152f = jSONObject.optInt("osApiLev", -1);
            this.f14153g = jSONObject.optInt("attribution_id", 0);
        }

        boolean a(Lg lg) {
            lg.getClass();
            return TextUtils.equals("5.3.0", this.f14147a) && TextUtils.equals("45003240", this.f14148b) && TextUtils.equals(lg.f(), this.f14149c) && TextUtils.equals(lg.b(), this.f14150d) && TextUtils.equals(lg.o(), this.f14151e) && this.f14152f == lg.n() && this.f14153g == lg.C();
        }

        public String toString() {
            return "SessionRequestParams{mKitVersionName='" + this.f14147a + "', mKitBuildNumber='" + this.f14148b + "', mAppVersion='" + this.f14149c + "', mAppBuild='" + this.f14150d + "', mOsVersion='" + this.f14151e + "', mApiLevel=" + this.f14152f + ", mAttributionId=" + this.f14153g + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public V5(L3 l3, InterfaceC1479d6 interfaceC1479d6, X5 x5, SystemTimeProvider systemTimeProvider) {
        this.f14139a = l3;
        this.f14140b = interfaceC1479d6;
        this.f14141c = x5;
        this.k = systemTimeProvider;
        g();
    }

    private void g() {
        this.f14143e = this.f14141c.a(this.k.elapsedRealtime());
        this.f14142d = this.f14141c.c(-1L);
        this.f14144f = new AtomicLong(this.f14141c.b(0L));
        this.f14145g = this.f14141c.a(true);
        long e2 = this.f14141c.e(0L);
        this.i = e2;
        this.j = this.f14141c.d(e2 - this.f14143e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a(long j) {
        InterfaceC1479d6 interfaceC1479d6 = this.f14140b;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j - this.f14143e);
        this.j = seconds;
        ((C1504e6) interfaceC1479d6).b(seconds);
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b() {
        return Math.max(this.i - TimeUnit.MILLISECONDS.toSeconds(this.f14143e), this.j);
    }

    public long c() {
        return this.f14142d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long e() {
        long andIncrement = this.f14144f.getAndIncrement();
        ((C1504e6) this.f14140b).c(this.f14144f.get()).b();
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EnumC1529f6 f() {
        return this.f14141c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return this.f14145g && this.f14142d > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void i() {
        ((C1504e6) this.f14140b).a();
        this.f14146h = null;
    }

    public String toString() {
        return "Session{mId=" + this.f14142d + ", mInitTime=" + this.f14143e + ", mCurrentReportId=" + this.f14144f + ", mSessionRequestParams=" + this.f14146h + ", mSleepStartSeconds=" + this.i + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(long j) {
        boolean z = this.f14142d >= 0;
        boolean a2 = a();
        long elapsedRealtime = this.k.elapsedRealtime();
        long j2 = this.i;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        return z && a2 && ((((timeUnit.toSeconds(elapsedRealtime) > j2 ? 1 : (timeUnit.toSeconds(elapsedRealtime) == j2 ? 0 : -1)) < 0) || ((timeUnit.toSeconds(j) - j2) > ((long) this.f14141c.a(this.f14139a.m().N())) ? 1 : ((timeUnit.toSeconds(j) - j2) == ((long) this.f14141c.a(this.f14139a.m().N())) ? 0 : -1)) >= 0 || (timeUnit.toSeconds(j - this.f14143e) > Y5.f14300b ? 1 : (timeUnit.toSeconds(j - this.f14143e) == Y5.f14300b ? 0 : -1)) >= 0) ^ true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(long j) {
        InterfaceC1479d6 interfaceC1479d6 = this.f14140b;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j);
        this.i = seconds;
        ((C1504e6) interfaceC1479d6).e(seconds).b();
    }

    public void a(boolean z) {
        if (this.f14145g != z) {
            this.f14145g = z;
            ((C1504e6) this.f14140b).a(z).b();
        }
    }

    private boolean a() {
        if (this.f14146h == null) {
            synchronized (this) {
                if (this.f14146h == null) {
                    try {
                        String asString = this.f14139a.i().a(this.f14142d, this.f14141c.a()).getAsString("report_request_parameters");
                        if (!TextUtils.isEmpty(asString)) {
                            this.f14146h = new a(new JSONObject(asString));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        a aVar = this.f14146h;
        if (aVar != null) {
            return aVar.a(this.f14139a.m());
        }
        return false;
    }
}
