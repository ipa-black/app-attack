package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class T2 implements T0 {
    private static final EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason> n;

    /* renamed from: a  reason: collision with root package name */
    private final Context f13935a;

    /* renamed from: b  reason: collision with root package name */
    private final C1432b9 f13936b;

    /* renamed from: c  reason: collision with root package name */
    private final C1591hi f13937c;

    /* renamed from: d  reason: collision with root package name */
    private final C1439bg f13938d;

    /* renamed from: e  reason: collision with root package name */
    private final A3 f13939e;

    /* renamed from: f  reason: collision with root package name */
    private final R1 f13940f;

    /* renamed from: g  reason: collision with root package name */
    private final T1 f13941g;

    /* renamed from: h  reason: collision with root package name */
    private final C1672l0 f13942h;
    private final C1901ua i;
    private final C1890u j;
    private final C1749o2 k;
    private volatile C1648k1 l;
    private IIdentifierCallback m;

    /* loaded from: classes5.dex */
    class a implements IIdentifierCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppMetricaDeviceIDListener f13943a;

        a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
            this.f13943a = appMetricaDeviceIDListener;
        }

        @Override // com.yandex.metrica.IIdentifierCallback
        public void onReceive(Map<String, String> map) {
            T2.a(T2.this, (IIdentifierCallback) null);
            this.f13943a.onLoaded(map.get("appmetrica_device_id_hash"));
        }

        @Override // com.yandex.metrica.IIdentifierCallback
        public void onRequestError(IIdentifierCallback.Reason reason) {
            T2.a(T2.this, (IIdentifierCallback) null);
            this.f13943a.onError((AppMetricaDeviceIDListener.Reason) T2.n.get(reason));
        }
    }

    static {
        EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason> enumMap = new EnumMap<>(IIdentifierCallback.Reason.class);
        n = enumMap;
        enumMap.put((EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason>) IIdentifierCallback.Reason.UNKNOWN, (IIdentifierCallback.Reason) AppMetricaDeviceIDListener.Reason.UNKNOWN);
        enumMap.put((EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason>) IIdentifierCallback.Reason.INVALID_RESPONSE, (IIdentifierCallback.Reason) AppMetricaDeviceIDListener.Reason.INVALID_RESPONSE);
        enumMap.put((EnumMap<IIdentifierCallback.Reason, AppMetricaDeviceIDListener.Reason>) IIdentifierCallback.Reason.NETWORK, (IIdentifierCallback.Reason) AppMetricaDeviceIDListener.Reason.NETWORK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T2(Context context, S0 s0) {
        this(context.getApplicationContext(), s0, new C1432b9(C1632ja.a(context.getApplicationContext()).c()));
    }

    static /* synthetic */ IIdentifierCallback a(T2 t2, IIdentifierCallback iIdentifierCallback) {
        t2.m = null;
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.O0
    public N0 b() {
        return this.f13940f;
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void c(com.yandex.metrica.e eVar) {
        this.f13940f.c(eVar);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public C1648k1 d() {
        return this.l;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void setStatisticsSending(boolean z) {
        this.l.b().setStatisticsSending(z);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void setUserProfileID(String str) {
        this.l.b().setUserProfileID(str);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.i iVar) {
        this.i.a(this.f13935a, this.f13937c).a(yandexMetricaConfig, this.f13937c.c());
        C1470cm b2 = Ul.b(iVar.apiKey);
        Sl a2 = Ul.a(iVar.apiKey);
        this.f13942h.getClass();
        if (this.l == null) {
            this.f13938d.a();
            this.f13937c.a(b2);
            this.f13937c.a(iVar.f12563d);
            this.f13937c.a(iVar.f12561b);
            this.f13937c.a(iVar.f12562c);
            if (A2.a((Object) iVar.f12562c)) {
                this.f13937c.b("api");
            }
            this.f13939e.b(iVar);
            this.f13941g.a(iVar.locationTracking, iVar.statisticsSending, (Boolean) null);
            C1623j1 a3 = this.f13940f.a(iVar, false, this.f13936b);
            this.l = new C1648k1(a3, new C1622j0(a3));
            this.j.a(this.l.a());
            this.k.a(a3);
            this.f13937c.g();
            Log.i("AppMetrica", "Activate AppMetrica with APIKey " + A2.a(iVar.apiKey));
            if (Boolean.TRUE.equals(iVar.logs)) {
                b2.setEnabled();
                a2.setEnabled();
                C1470cm.a().setEnabled();
                Sl.a().setEnabled();
                return;
            }
            b2.setDisabled();
            a2.setDisabled();
            C1470cm.a().setDisabled();
            Sl.a().setDisabled();
        } else if (b2.isEnabled()) {
            b2.w("Appmetrica already has been activated!");
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void b(boolean z) {
        this.l.b().b(z);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public String c() {
        return this.f13937c.b();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void c(String str, String str2) {
        this.l.b().c(str, str2);
    }

    private T2(Context context, S0 s0, C1432b9 c1432b9) {
        this(context, s0, c1432b9, new O(context), new U2(), P.g(), new C1901ua());
    }

    T2(Context context, S0 s0, C1432b9 c1432b9, O o, U2 u2, P p, C1901ua c1901ua) {
        this.f13935a = context;
        this.f13936b = c1432b9;
        Handler c2 = s0.c();
        A3 a2 = u2.a(context, u2.a(c2, this));
        this.f13939e = a2;
        C1672l0 f2 = p.f();
        this.f13942h = f2;
        T1 a3 = u2.a(a2, context, s0.b());
        this.f13941g = a3;
        f2.a(a3);
        o.a(context);
        C1591hi a4 = u2.a(context, a3, c1432b9, c2);
        this.f13937c = a4;
        this.j = s0.a();
        this.i = c1901ua;
        a3.a(a4);
        this.f13938d = u2.a(a3, c1432b9, c2);
        this.f13940f = u2.a(context, a2, a3, c2, a4);
        this.k = p.l();
    }

    @Override // com.yandex.metrica.impl.ob.ResultReceiverC1523f0.a
    public void a(int i, Bundle bundle) {
        this.f13937c.a(bundle, (Yh) null);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f13938d.a(deferredDeeplinkParametersListener);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f13938d.a(deferredDeeplinkListener);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        a aVar = new a(appMetricaDeviceIDListener);
        this.m = aVar;
        this.f13937c.a(aVar, Collections.singletonList("appmetrica_device_id_hash"), this.f13939e.a());
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public M0 a(com.yandex.metrica.e eVar) {
        return this.f13940f.b(eVar);
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public String a() {
        return this.f13937c.e();
    }

    @Override // com.yandex.metrica.impl.ob.T0
    public void a(IIdentifierCallback iIdentifierCallback, List<String> list) {
        this.f13937c.a(iIdentifierCallback, list, this.f13939e.a());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(Location location) {
        this.l.b().a(location);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(boolean z) {
        this.l.b().a(z);
    }
}
