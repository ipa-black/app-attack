package com.yandex.metrica;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.impl.ob.C1649k2;
import com.yandex.metrica.impl.ob.C1797q1;
import com.yandex.metrica.impl.ob.C1820r1;
import com.yandex.metrica.impl.ob.F0;
import com.yandex.metrica.impl.ob.InterfaceC1773p1;
import com.yandex.metrica.impl.ob.Vl;
/* loaded from: classes3.dex */
public class MetricaService extends Service {

    /* renamed from: c  reason: collision with root package name */
    private static InterfaceC1773p1 f12307c;

    /* renamed from: a  reason: collision with root package name */
    private final d f12308a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final IMetricaService.a f12309b = new b(this);

    /* loaded from: classes3.dex */
    class a implements d {
        a() {
        }

        @Override // com.yandex.metrica.MetricaService.d
        public void a(int i) {
            MetricaService.this.stopSelfResult(i);
        }
    }

    /* loaded from: classes3.dex */
    class b extends IMetricaService.a {
        b(MetricaService metricaService) {
        }

        @Override // com.yandex.metrica.IMetricaService
        public void a(int i, Bundle bundle) throws RemoteException {
            MetricaService.f12307c.a(i, bundle);
        }

        @Override // com.yandex.metrica.IMetricaService
        public void b(Bundle bundle) throws RemoteException {
            MetricaService.f12307c.b(bundle);
        }

        @Override // com.yandex.metrica.IMetricaService
        public void reportData(Bundle bundle) throws RemoteException {
            MetricaService.f12307c.reportData(bundle);
        }

        @Override // com.yandex.metrica.IMetricaService
        public void a(Bundle bundle) throws RemoteException {
            MetricaService.f12307c.a(bundle);
        }
    }

    /* loaded from: classes3.dex */
    static class c extends Binder {
        c() {
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(int i);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder;
        if ("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER".equals(intent.getAction())) {
            iBinder = new c();
        } else {
            iBinder = this.f12309b;
        }
        f12307c.a(intent);
        return iBinder;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        f12307c.onConfigurationChanged(configuration);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        F0.a(getApplicationContext());
        Vl.a(getApplicationContext());
        InterfaceC1773p1 interfaceC1773p1 = f12307c;
        if (interfaceC1773p1 == null) {
            f12307c = new C1797q1(new C1820r1(getApplicationContext(), this.f12308a));
        } else {
            interfaceC1773p1.a(this.f12308a);
        }
        f12307c.a();
        F0.g().a(new C1649k2(f12307c));
    }

    @Override // android.app.Service
    public void onDestroy() {
        f12307c.b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
        f12307c.c(intent);
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        f12307c.a(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        f12307c.a(intent, i, i2);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        f12307c.b(intent);
        return ("com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER".equals(intent.getAction()) || intent.getData() == null) ? false : true;
    }
}
