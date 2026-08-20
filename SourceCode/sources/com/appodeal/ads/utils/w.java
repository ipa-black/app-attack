package com.appodeal.ads.utils;

import android.os.SystemClock;
import com.appodeal.ads.storage.b;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class w {
    public static final com.appodeal.ads.storage.o l = com.appodeal.ads.storage.o.f7663b;

    /* renamed from: a  reason: collision with root package name */
    public final String f7833a;

    /* renamed from: b  reason: collision with root package name */
    public final long f7834b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7835c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7836d;

    /* renamed from: e  reason: collision with root package name */
    public volatile long f7837e;

    /* renamed from: f  reason: collision with root package name */
    public volatile long f7838f;

    /* renamed from: g  reason: collision with root package name */
    public volatile long f7839g;

    /* renamed from: h  reason: collision with root package name */
    public volatile long f7840h;
    public volatile long i;
    public volatile long j;
    public long k;

    public w(long j) {
        this.f7837e = 0L;
        this.f7838f = 0L;
        this.f7839g = 0L;
        this.f7840h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.k = 0L;
        this.f7834b = j + 1;
        this.f7833a = UUID.randomUUID().toString();
        long a2 = b0.a();
        this.f7835c = a2;
        this.f7839g = a2;
        long b2 = b0.b();
        this.f7836d = b2;
        this.f7840h = b2;
    }

    public w(String str, long j, long j2, long j3, long j4, long j5) {
        this.f7837e = 0L;
        this.f7838f = 0L;
        this.f7839g = 0L;
        this.f7840h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.k = 0L;
        this.f7833a = str;
        this.f7834b = j;
        this.f7835c = j2;
        this.f7836d = j3;
        this.f7837e = j4;
        this.f7838f = j5;
    }

    public final synchronized String a() {
        return this.f7833a;
    }

    public final synchronized void b() {
        com.appodeal.ads.storage.o oVar = l;
        long l2 = oVar.f7664a.l();
        long k = oVar.f7664a.k();
        com.appodeal.ads.storage.b bVar = oVar.f7664a;
        b.a aVar = b.a.Default;
        oVar.a(this.f7833a, this.f7834b, this.f7835c, this.f7836d, bVar.a(aVar).getLong("app_uptime", 0L) + l2, oVar.f7664a.a(aVar).getLong("app_uptime_m", 0L) + k);
    }

    public final synchronized void c() {
        e();
        com.appodeal.ads.storage.o oVar = l;
        oVar.f7664a.a(this.f7837e, this.f7838f);
    }

    public final synchronized JSONObject d() {
        return new JSONObject().put("session_uuid", this.f7833a).put("session_id", this.f7834b).put("session_uptime", this.f7837e / 1000).put("session_uptime_m", this.f7838f).put("session_start_ts", this.f7835c / 1000).put("session_start_ts_m", this.f7836d);
    }

    public final synchronized void e() {
        this.f7837e = (System.currentTimeMillis() - this.f7839g) + this.f7837e;
        this.f7838f = (SystemClock.elapsedRealtime() - this.f7840h) + this.f7838f;
        this.f7839g = System.currentTimeMillis();
        this.f7840h = SystemClock.elapsedRealtime();
    }
}
