package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public class Pm {

    /* renamed from: a  reason: collision with root package name */
    private final Om f13729a;

    /* renamed from: b  reason: collision with root package name */
    private volatile ICommonExecutor f13730b;

    /* renamed from: c  reason: collision with root package name */
    private volatile ICommonExecutor f13731c;

    /* renamed from: d  reason: collision with root package name */
    private volatile ICommonExecutor f13732d;

    /* renamed from: e  reason: collision with root package name */
    private volatile IHandlerExecutor f13733e;

    /* renamed from: f  reason: collision with root package name */
    private volatile ICommonExecutor f13734f;

    /* renamed from: g  reason: collision with root package name */
    private volatile ICommonExecutor f13735g;

    /* renamed from: h  reason: collision with root package name */
    private volatile ICommonExecutor f13736h;
    private volatile ICommonExecutor i;
    private volatile Executor j;

    public Pm() {
        this(new Om());
    }

    public ICommonExecutor a() {
        if (this.f13736h == null) {
            synchronized (this) {
                if (this.f13736h == null) {
                    this.f13729a.getClass();
                    this.f13736h = new Jm("YMM-DE");
                }
            }
        }
        return this.f13736h;
    }

    public IHandlerExecutor b() {
        if (this.f13733e == null) {
            synchronized (this) {
                if (this.f13733e == null) {
                    this.f13729a.getClass();
                    this.f13733e = new Jm("YMM-UH-1");
                }
            }
        }
        return this.f13733e;
    }

    public ICommonExecutor c() {
        if (this.f13730b == null) {
            synchronized (this) {
                if (this.f13730b == null) {
                    this.f13729a.getClass();
                    this.f13730b = new Jm("YMM-MC");
                }
            }
        }
        return this.f13730b;
    }

    public ICommonExecutor d() {
        if (this.f13734f == null) {
            synchronized (this) {
                if (this.f13734f == null) {
                    this.f13729a.getClass();
                    this.f13734f = new Jm("YMM-CTH");
                }
            }
        }
        return this.f13734f;
    }

    public ICommonExecutor e() {
        if (this.f13731c == null) {
            synchronized (this) {
                if (this.f13731c == null) {
                    this.f13729a.getClass();
                    this.f13731c = new Jm("YMM-MSTE");
                }
            }
        }
        return this.f13731c;
    }

    public ICommonExecutor f() {
        if (this.i == null) {
            synchronized (this) {
                if (this.i == null) {
                    this.f13729a.getClass();
                    this.i = new Jm("YMM-RTM");
                }
            }
        }
        return this.i;
    }

    public ICommonExecutor g() {
        if (this.f13735g == null) {
            synchronized (this) {
                if (this.f13735g == null) {
                    this.f13729a.getClass();
                    this.f13735g = new Jm("YMM-SIO");
                }
            }
        }
        return this.f13735g;
    }

    public ICommonExecutor h() {
        if (this.f13732d == null) {
            synchronized (this) {
                if (this.f13732d == null) {
                    this.f13729a.getClass();
                    this.f13732d = new Jm("YMM-TP");
                }
            }
        }
        return this.f13732d;
    }

    public Executor i() {
        if (this.j == null) {
            synchronized (this) {
                if (this.j == null) {
                    Om om = this.f13729a;
                    om.getClass();
                    this.j = new Nm(om, new Handler(Looper.getMainLooper()));
                }
            }
        }
        return this.j;
    }

    Pm(Om om) {
        this.f13729a = om;
    }

    public Lm b(Runnable runnable) {
        this.f13729a.getClass();
        return Mm.a("YMM-IB", runnable);
    }

    public Lm a(Runnable runnable) {
        this.f13729a.getClass();
        return Mm.a("YMM-HMSR", runnable);
    }
}
