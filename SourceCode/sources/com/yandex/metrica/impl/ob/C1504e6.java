package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.Tl;
/* renamed from: com.yandex.metrica.impl.ob.e6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1504e6 implements InterfaceC1479d6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f14647a;

    /* renamed from: b  reason: collision with root package name */
    protected final C1457c9 f14648b;

    /* renamed from: c  reason: collision with root package name */
    private Tl.a f14649c;

    public C1504e6(C1457c9 c1457c9, String str) {
        this.f14648b = c1457c9;
        this.f14647a = str;
        Tl.a aVar = new Tl.a();
        try {
            String g2 = c1457c9.g(str);
            if (!TextUtils.isEmpty(g2)) {
                aVar = new Tl.a(g2);
            }
        } catch (Throwable unused) {
        }
        this.f14649c = aVar;
    }

    public C1504e6 a(long j) {
        a("SESSION_INIT_TIME", Long.valueOf(j));
        return this;
    }

    public C1504e6 b(long j) {
        a("SESSION_LAST_EVENT_OFFSET", Long.valueOf(j));
        return this;
    }

    public Long c() {
        return this.f14649c.a("SESSION_INIT_TIME");
    }

    public C1504e6 d(long j) {
        a("SESSION_ID", Long.valueOf(j));
        return this;
    }

    public Long e() {
        return this.f14649c.a("SESSION_COUNTER_ID");
    }

    public Long f() {
        return this.f14649c.a("SESSION_ID");
    }

    public Long g() {
        return this.f14649c.a("SESSION_SLEEP_START");
    }

    public boolean h() {
        return this.f14649c.length() > 0;
    }

    public Boolean i() {
        Tl.a aVar = this.f14649c;
        aVar.getClass();
        try {
            return Boolean.valueOf(aVar.getBoolean("SESSION_IS_ALIVE_REPORT_NEEDED"));
        } catch (Throwable unused) {
            return null;
        }
    }

    public C1504e6 a(boolean z) {
        a("SESSION_IS_ALIVE_REPORT_NEEDED", Boolean.valueOf(z));
        return this;
    }

    public void b() {
        this.f14648b.c(this.f14647a, this.f14649c.toString());
        this.f14648b.d();
    }

    public C1504e6 c(long j) {
        a("SESSION_COUNTER_ID", Long.valueOf(j));
        return this;
    }

    public Long d() {
        return this.f14649c.a("SESSION_LAST_EVENT_OFFSET");
    }

    public C1504e6 e(long j) {
        a("SESSION_SLEEP_START", Long.valueOf(j));
        return this;
    }

    private void a(String str, Object obj) {
        try {
            this.f14649c.put(str, obj);
        } catch (Throwable unused) {
        }
    }

    public void a() {
        this.f14649c = new Tl.a();
        b();
    }
}
