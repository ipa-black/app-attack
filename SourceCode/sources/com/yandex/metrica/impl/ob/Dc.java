package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class Dc<T> {

    /* renamed from: e  reason: collision with root package name */
    static final long f12801e = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: a  reason: collision with root package name */
    protected final Context f12802a;

    /* renamed from: b  reason: collision with root package name */
    protected final InterfaceC2024zd f12803b;

    /* renamed from: c  reason: collision with root package name */
    protected final LocationListener f12804c;

    /* renamed from: d  reason: collision with root package name */
    protected final Looper f12805d;

    public Dc(Context context, LocationListener locationListener, InterfaceC2024zd interfaceC2024zd, Looper looper) {
        this.f12802a = context;
        this.f12804c = locationListener;
        this.f12803b = interfaceC2024zd;
        this.f12805d = looper;
    }

    public abstract void a();

    public abstract boolean a(T t);

    public abstract void b();
}
