package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.location.Location;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.impl.ob.C1795q;
import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.profile.UserProfile;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.jj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1641jj extends C1691lj implements K0 {
    @Override // com.yandex.metrica.impl.ob.I0
    public void a(int i, String str, String str2, Map<String, String> map, Map<String, byte[]> map2) {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(Activity activity) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(Location location) {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(D2 d2) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.impl.ob.R0
    public void a(H6 h6) {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(InterfaceC1693ll interfaceC1693ll, boolean z) {
        interfaceC1693ll.onError("Device user is in locked state");
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(C1795q.c cVar) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.impl.ob.R0
    public void a(C1945w6 c1945w6) {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(String str) {
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void a(String str, String str2) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(String str, boolean z) {
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void a(String str, byte[] bArr) {
    }

    @Override // com.yandex.metrica.impl.ob.El
    public void a(JSONObject jSONObject) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void a(boolean z) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.impl.ob.M0
    public void b() {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void b(Activity activity) {
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void b(String str) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.d
    public void b(String str, String str2) {
    }

    @Override // com.yandex.metrica.impl.ob.El
    public void b(JSONObject jSONObject) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void b(boolean z) {
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void c(String str) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1723n1
    public void c(String str, String str2) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.d
    public void d(String str, String str2) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void pauseSession() {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportEvent(String str) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportEvent(String str, Map map) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void resumeSession() {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z) {
    }

    @Override // com.yandex.metrica.impl.ob.C1691lj, com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
    }
}
