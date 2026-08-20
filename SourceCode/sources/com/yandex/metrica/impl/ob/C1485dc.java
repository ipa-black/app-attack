package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
/* renamed from: com.yandex.metrica.impl.ob.dc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1485dc extends Dc<C1460cc> {

    /* renamed from: f  reason: collision with root package name */
    private final com.yandex.metrica.gpllibrary.b f14590f;

    public C1485dc(Context context, Pc pc, IHandlerExecutor iHandlerExecutor, C2000yd c2000yd) {
        this(context, pc, iHandlerExecutor, c2000yd, new G1());
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public boolean a(C1460cc c1460cc) {
        C1460cc c1460cc2 = c1460cc;
        if (c1460cc2.f14548b != null && this.f12803b.a(this.f12802a)) {
            try {
                this.f14590f.startLocationUpdates(c1460cc2.f14548b.f14408a);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public void b() {
        if (this.f12803b.a(this.f12802a)) {
            try {
                this.f14590f.updateLastKnownLocation();
            } catch (Throwable unused) {
            }
        }
    }

    private C1485dc(Context context, Pc pc, IHandlerExecutor iHandlerExecutor, C2000yd c2000yd, G1 g1) {
        this(context, iHandlerExecutor, new C2023zc(pc), g1.a(c2000yd));
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public void a() {
        try {
            this.f14590f.stopLocationUpdates();
        } catch (Throwable unused) {
        }
    }

    private static com.yandex.metrica.gpllibrary.b a(Context context, LocationListener locationListener, IHandlerExecutor iHandlerExecutor) {
        if (C1575h2.a("com.google.android.gms.location.LocationRequest")) {
            try {
                return new com.yandex.metrica.gpllibrary.a(context, locationListener, iHandlerExecutor.getLooper(), iHandlerExecutor, Dc.f12801e);
            } catch (Throwable unused) {
            }
        }
        return new Tb();
    }

    C1485dc(Context context, IHandlerExecutor iHandlerExecutor, LocationListener locationListener, InterfaceC2024zd interfaceC2024zd) {
        this(context, iHandlerExecutor.getLooper(), locationListener, interfaceC2024zd, a(context, locationListener, iHandlerExecutor));
    }

    C1485dc(Context context, Looper looper, LocationListener locationListener, InterfaceC2024zd interfaceC2024zd, com.yandex.metrica.gpllibrary.b bVar) {
        super(context, locationListener, interfaceC2024zd, looper);
        this.f14590f = bVar;
    }
}
