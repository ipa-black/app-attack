package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.i;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.l0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1672l0 implements InterfaceC1723n1 {

    /* renamed from: a  reason: collision with root package name */
    private Location f15039a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f15040b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f15041c;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f15042d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f15043e = new LinkedHashMap();

    /* renamed from: f  reason: collision with root package name */
    private Map<String, String> f15044f = new LinkedHashMap();

    /* renamed from: g  reason: collision with root package name */
    private String f15045g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15046h;
    private T1 i;

    private static boolean a(Object obj) {
        return obj == null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(boolean z) {
        this.f15041c = Boolean.valueOf(z);
        b();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void b(boolean z) {
        this.f15040b = Boolean.valueOf(z);
        b();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void c(String str, String str2) {
        this.f15044f.put(str, str2);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void setStatisticsSending(boolean z) {
        this.f15042d = Boolean.valueOf(z);
        b();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void setUserProfileID(String str) {
        this.f15045g = str;
    }

    private void b(Map<String, String> map, i.b bVar) {
        if (A2.b(map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bVar.b(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(Location location) {
        this.f15039a = location;
    }

    public com.yandex.metrica.i a(com.yandex.metrica.i iVar) {
        if (this.f15046h) {
            return iVar;
        }
        i.b a2 = com.yandex.metrica.i.a(iVar.apiKey);
        a2.a(iVar.f12561b, iVar.i);
        a2.b(iVar.f12560a);
        a2.a(iVar.preloadInfo);
        a2.a(iVar.location);
        if (A2.a((Object) iVar.f12563d)) {
            a2.a(iVar.f12563d);
        }
        if (A2.a((Object) iVar.appVersion)) {
            a2.a(iVar.appVersion);
        }
        if (A2.a(iVar.f12565f)) {
            a2.b(iVar.f12565f.intValue());
        }
        if (A2.a(iVar.f12564e)) {
            a2.a(iVar.f12564e.intValue());
        }
        if (A2.a(iVar.f12566g)) {
            a2.c(iVar.f12566g.intValue());
        }
        if (A2.a(iVar.logs) && iVar.logs.booleanValue()) {
            a2.b();
        }
        if (A2.a(iVar.sessionTimeout)) {
            a2.e(iVar.sessionTimeout.intValue());
        }
        if (A2.a(iVar.crashReporting)) {
            a2.d(iVar.crashReporting.booleanValue());
        }
        if (A2.a(iVar.nativeCrashReporting)) {
            a2.f(iVar.nativeCrashReporting.booleanValue());
        }
        if (A2.a(iVar.locationTracking)) {
            a2.e(iVar.locationTracking.booleanValue());
        }
        if (A2.a((Object) iVar.f12562c)) {
            a2.f12573f = iVar.f12562c;
        }
        if (A2.a(iVar.firstActivationAsUpdate)) {
            a2.a(iVar.firstActivationAsUpdate.booleanValue());
        }
        if (A2.a(iVar.statisticsSending)) {
            a2.j(iVar.statisticsSending.booleanValue());
        }
        if (A2.a(iVar.k)) {
            a2.b(iVar.k.booleanValue());
        }
        if (A2.a(iVar.maxReportsInDatabaseCount)) {
            a2.d(iVar.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a(iVar.l)) {
            a2.a(iVar.l);
        }
        if (A2.a((Object) iVar.userProfileID)) {
            a2.c(iVar.userProfileID);
        }
        if (A2.a(iVar.revenueAutoTrackingEnabled)) {
            a2.h(iVar.revenueAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(iVar.appOpenTrackingEnabled)) {
            a2.c(iVar.appOpenTrackingEnabled.booleanValue());
        }
        a(this.f15043e, a2);
        a(iVar.f12567h, a2);
        b(this.f15044f, a2);
        b(iVar.errorEnvironment, a2);
        Boolean bool = this.f15040b;
        if (a(iVar.locationTracking) && A2.a(bool)) {
            a2.e(bool.booleanValue());
        }
        Location location = this.f15039a;
        if (a((Object) iVar.location) && A2.a(location)) {
            a2.a(location);
        }
        Boolean bool2 = this.f15042d;
        if (a(iVar.statisticsSending) && A2.a(bool2)) {
            a2.j(bool2.booleanValue());
        }
        if (!A2.a((Object) iVar.userProfileID) && A2.a((Object) this.f15045g)) {
            a2.c(this.f15045g);
        }
        this.f15046h = true;
        this.f15039a = null;
        this.f15040b = null;
        this.f15042d = null;
        this.f15043e.clear();
        this.f15044f.clear();
        this.f15045g = null;
        return a2.a();
    }

    private void b() {
        T1 t1 = this.i;
        if (t1 != null) {
            t1.a(this.f15040b, this.f15042d, this.f15041c);
        }
    }

    private void a(Map<String, String> map, i.b bVar) {
        if (A2.b(map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bVar.a(entry.getKey(), entry.getValue());
        }
    }

    public void a(T1 t1) {
        this.i = t1;
    }
}
