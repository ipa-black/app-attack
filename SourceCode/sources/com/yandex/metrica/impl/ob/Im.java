package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
/* loaded from: classes5.dex */
public class Im {

    /* renamed from: a  reason: collision with root package name */
    private final Hm f13220a;

    /* renamed from: b  reason: collision with root package name */
    private volatile IHandlerExecutor f13221b;

    /* renamed from: c  reason: collision with root package name */
    private volatile ICommonExecutor f13222c;

    /* renamed from: d  reason: collision with root package name */
    private volatile ICommonExecutor f13223d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Handler f13224e;

    public Im() {
        this(new Hm());
    }

    public ICommonExecutor a() {
        if (this.f13222c == null) {
            synchronized (this) {
                if (this.f13222c == null) {
                    this.f13220a.getClass();
                    this.f13222c = new Jm("YMM-APT");
                }
            }
        }
        return this.f13222c;
    }

    public IHandlerExecutor b() {
        if (this.f13221b == null) {
            synchronized (this) {
                if (this.f13221b == null) {
                    this.f13220a.getClass();
                    this.f13221b = new Jm("YMM-YM");
                }
            }
        }
        return this.f13221b;
    }

    public Handler c() {
        if (this.f13224e == null) {
            synchronized (this) {
                if (this.f13224e == null) {
                    this.f13220a.getClass();
                    this.f13224e = new Handler(Looper.getMainLooper());
                }
            }
        }
        return this.f13224e;
    }

    public ICommonExecutor d() {
        if (this.f13223d == null) {
            synchronized (this) {
                if (this.f13223d == null) {
                    this.f13220a.getClass();
                    this.f13223d = new Jm("YMM-RS");
                }
            }
        }
        return this.f13223d;
    }

    Im(Hm hm) {
        this.f13220a = hm;
    }
}
