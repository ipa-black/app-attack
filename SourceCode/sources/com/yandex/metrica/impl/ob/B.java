package com.yandex.metrica.impl.ob;

import android.app.NotificationManager;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.google.protobuf.nano.ym.MessageNano;
import com.onesignal.OneSignalDbContract;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.impl.ob.C1930vf;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.plugins.PluginErrorDetails;
import com.yandex.metrica.profile.UserProfile;
import com.yandex.metrica.profile.UserProfileUpdate;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class B implements I0 {
    private static final Collection<Integer> n = new HashSet(Arrays.asList(14, 15));
    private static final Kn<C1930vf> o = new a();

    /* renamed from: a  reason: collision with root package name */
    protected final Context f12653a;

    /* renamed from: b  reason: collision with root package name */
    protected final Q1 f12654b;

    /* renamed from: c  reason: collision with root package name */
    protected final C1470cm f12655c;

    /* renamed from: d  reason: collision with root package name */
    protected final Sl f12656d;

    /* renamed from: e  reason: collision with root package name */
    protected final X6 f12657e;

    /* renamed from: f  reason: collision with root package name */
    protected final S6 f12658f;

    /* renamed from: g  reason: collision with root package name */
    protected final M6 f12659g;

    /* renamed from: h  reason: collision with root package name */
    private final K6 f12660h;
    protected final T1 i;
    private C1424b1 j;
    private final InterfaceC1445bm k;
    private final A0 l;
    private final C1849s6 m;

    /* loaded from: classes5.dex */
    class a implements Kn<C1930vf> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.Kn
        public In a(C1930vf c1930vf) {
            C1930vf.a[] aVarArr = c1930vf.f15922a;
            if (aVarArr == null || aVarArr.length == 0) {
                return In.a(this, "attributes list is empty");
            }
            return In.a(this);
        }
    }

    /* loaded from: classes5.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final Kn<Revenue> f12661a = new On();

        public static Kn<Revenue> a() {
            return f12661a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public B(Context context, T1 t1, Q1 q1, A0 a0, InterfaceC1445bm interfaceC1445bm, com.yandex.metrica.rtm.wrapper.d dVar, Yg yg, X6 x6, S6 s6, M6 m6, K6 k6, C1849s6 c1849s6) {
        this.f12653a = context.getApplicationContext();
        this.i = t1;
        this.f12654b = q1;
        this.l = a0;
        this.f12657e = x6;
        this.f12658f = s6;
        this.f12659g = m6;
        this.f12660h = k6;
        this.m = c1849s6;
        C1470cm b2 = Ul.b(q1.b().a());
        this.f12655c = b2;
        q1.a(new C1446bn(b2, "Crash Environment"));
        Sl a2 = Ul.a(q1.b().a());
        this.f12656d = a2;
        if (C1422b.a(q1.b().p())) {
            b2.setEnabled();
            a2.setEnabled();
        }
        this.k = interfaceC1445bm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1424b1 c1424b1) {
        this.j = c1424b1;
    }

    @Override // com.yandex.metrica.d
    public void b(String str, String str2) {
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        this.i.a(new J(str2, str, EnumC1399a1.EVENT_TYPE_STATBOX.b(), 0, c1470cm), this.f12654b);
        if (this.f12655c.isEnabled()) {
            StringBuilder sb = new StringBuilder("Statbox event received  with name: ");
            sb.append(f(str));
            sb.append(" with value: ");
            String f2 = f(str2);
            if (f2.length() > 100) {
                sb.append(f2.substring(0, 100));
                sb.append(APSSharedUtil.TRUNCATE_SEPARATOR);
            } else {
                sb.append(f2);
            }
            this.f12655c.i(sb.toString());
        }
    }

    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            if (this.f12655c.isEnabled()) {
                this.f12655c.fw("Invalid Error Environment (key,value) pair: (%s,%s).", str, str2);
                return;
            }
            return;
        }
        this.f12654b.f13738c.a(str, str2);
    }

    @Override // com.yandex.metrica.d
    public void d(String str, String str2) {
        List<Integer> list = C2011z0.i;
        this.i.a(new C1448c0(str2, str, EnumC1399a1.EVENT_TYPE_DIAGNOSTIC.b()), this.f12654b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(String str) {
        this.i.e();
        this.j.b();
        T1 t1 = this.i;
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J("", str, EnumC1399a1.EVENT_TYPE_START.b(), c1470cm), this.f12654b);
        this.f12654b.h();
    }

    public void f() {
        this.i.b(this.f12654b);
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("Pause session");
        }
        d(null);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        this.i.a(new Sg(adRevenue, this.f12655c), this.f12654b);
        if (this.f12655c.isEnabled()) {
            C1470cm c1470cm = this.f12655c;
            StringBuilder append = new StringBuilder("AdRevenue Received: AdRevenue{adRevenue=").append(adRevenue.adRevenue).append(", currency='").append(f(adRevenue.currency.getCurrencyCode())).append("', adType=");
            Object obj = adRevenue.adType;
            if (obj == null) {
                obj = "<null>";
            }
            c1470cm.i(append.append(obj).append(", adNetwork='").append(f(adRevenue.adNetwork)).append("', adUnitId='").append(f(adRevenue.adUnitId)).append("', adUnitName='").append(f(adRevenue.adUnitName)).append("', adPlacementId='").append(f(adRevenue.adPlacementId)).append("', adPlacementName='").append(f(adRevenue.adPlacementName)).append("', precision='").append(f(adRevenue.precision)).append("', payload=").append(Tl.g(adRevenue.payload)).append('}').toString());
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("E-commerce event received: " + eCommerceEvent.getPublicDescription());
        }
        this.i.a(eCommerceEvent, this.f12654b);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
        B6 b6 = new B6(str, a(th));
        T1 t1 = this.i;
        byte[] byteArray = MessageNano.toByteArray(this.f12658f.fromModel(b6));
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J(byteArray, str, EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF.b(), c1470cm), this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.fi("Error received: %s", f(str));
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
        if (this.f12655c.isEnabled() && this.f12655c.isEnabled()) {
            this.f12655c.i("Event received: " + f(str));
        }
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        this.i.a(new J("", str, EnumC1399a1.EVENT_TYPE_REGULAR.b(), 0, c1470cm), this.f12654b);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
        In a2 = b.a().a(revenue);
        if (a2.b()) {
            this.i.a(new W1(revenue, this.f12655c), this.f12654b);
            if (this.f12655c.isEnabled()) {
                StringBuilder sb = new StringBuilder("Revenue received for productID: ");
                sb.append(f(revenue.productID));
                sb.append(" of quantity: ");
                Integer num = revenue.quantity;
                if (num != null) {
                    sb.append(num);
                } else {
                    sb.append("<null>");
                }
                sb.append(" with price");
                if (revenue.priceMicros != null) {
                    sb.append(" (in micros): ");
                    sb.append(revenue.priceMicros);
                } else {
                    sb.append(": ");
                    sb.append(revenue.price);
                }
                sb.append(" ");
                sb.append(revenue.currency);
                this.f12655c.i(sb.toString());
            }
        } else if (this.f12655c.isEnabled()) {
            this.f12655c.w("Passed revenue is not valid. Reason: " + a2.a());
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
        H6 a2 = I6.a(th, new C1945w6(null, null, ((Xl) this.k).b()), null, this.l.a(), this.l.b());
        this.i.b(a2, this.f12654b);
        b(a2);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
        C1413af c1413af = new C1413af();
        for (UserProfileUpdate<? extends InterfaceC1438bf> userProfileUpdate : userProfile.getUserProfileUpdates()) {
            Se se = (Se) userProfileUpdate.getUserProfileUpdatePatcher();
            se.a(this.f12655c);
            se.a(c1413af);
        }
        C1930vf c2 = c1413af.c();
        In a2 = o.a(c2);
        if (a2.b()) {
            this.i.a(c2, this.f12654b);
            if (this.f12655c.isEnabled()) {
                this.f12655c.i("User profile received");
            }
        } else if (this.f12655c.isEnabled()) {
            this.f12655c.w("UserInfo wasn't sent because " + a2.a());
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
        e(null);
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("Resume session");
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
        T1 t1 = this.i;
        EnumC1399a1 enumC1399a1 = EnumC1399a1.EVENT_TYPE_PURGE_BUFFER;
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J("", "", enumC1399a1.b(), 0, c1470cm), this.f12654b);
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z) {
        this.f12654b.b().c(z);
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
        this.i.b(str, this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("Set user profile ID: " + f(str));
        }
    }

    public void a(Map<String, String> map) {
        if (A2.b(map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            c(entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String f(String str) {
        return str == null ? "<null>" : str.isEmpty() ? "<empty>" : str;
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void a(String str, byte[] bArr) {
        T1 t1 = this.i;
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        J j = new J("", (String) null, EnumC1399a1.EVENT_TYPE_SET_SESSION_EXTRA.b(), c1470cm);
        if (bArr == null) {
            bArr = new byte[0];
        }
        j.a(Collections.singletonMap(str, bArr));
        t1.a(j, this.f12654b);
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void c(String str) {
        this.i.a(str, this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("Error received: native");
        }
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        String b2;
        H6 a2 = this.m.a(pluginErrorDetails);
        T1 t1 = this.i;
        F6 f6 = a2.f13027a;
        String str = "";
        if (f6 != null && (b2 = f6.b()) != null) {
            str = b2;
        }
        byte[] byteArray = MessageNano.toByteArray(this.f12657e.fromModel(a2));
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J(byteArray, str, EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b(), c1470cm), this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.fi("Crash from plugin received: %s", f(pluginErrorDetails.getMessage()));
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
        if (this.f12655c.isEnabled()) {
            e(str, str2);
        }
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        this.i.a(new J(str2, str, EnumC1399a1.EVENT_TYPE_REGULAR.b(), 0, c1470cm), this.f12654b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str) {
        if (this.f12654b.f()) {
            return;
        }
        this.i.d();
        this.j.a();
        this.f12654b.g();
        T1 t1 = this.i;
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J("", str, EnumC1399a1.EVENT_TYPE_UPDATE_FOREGROUND_TIME.b(), 0, c1470cm), this.f12654b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(H6 h6) {
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("Unhandled exception received: " + h6.toString());
        }
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void b() {
        Object systemService;
        Integer valueOf;
        T1 t1 = this.i;
        Context context = this.f12653a;
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14507a = "";
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        E c2 = g2.c();
        Intrinsics.checkNotNullExpressionValue(c2, "GlobalServiceLocator.get…nce().batteryInfoProvider");
        Integer a2 = c2.a();
        long elapsedRealtime = SystemClock.elapsedRealtime() / 1000;
        if (A2.a(23)) {
            try {
                systemService = context.getSystemService(OneSignalDbContract.NotificationTable.TABLE_NAME);
            } catch (Throwable unused) {
            }
            if (systemService != null) {
                valueOf = Integer.valueOf(((NotificationManager) systemService).getCurrentInterruptionFilter());
                JSONObject put = new JSONObject().put("dfid", new JSONObject().putOpt("battery", a2).put("boot_time_seconds", elapsedRealtime).putOpt("notification_filter", valueOf));
                Intrinsics.checkNotNullExpressionValue(put, "JSONObject()\n           …tionFilter)\n            )");
                c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_IDENTITY_LIGHT.b();
                c1448c0.f14508b = put.toString();
                t1.a(c1448c0, this.f12654b);
            }
            throw new NullPointerException("null cannot be cast to non-null type android.app.NotificationManager");
        }
        valueOf = null;
        JSONObject put2 = new JSONObject().put("dfid", new JSONObject().putOpt("battery", a2).put("boot_time_seconds", elapsedRealtime).putOpt("notification_filter", valueOf));
        Intrinsics.checkNotNullExpressionValue(put2, "JSONObject()\n           …tionFilter)\n            )");
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_IDENTITY_LIGHT.b();
        c1448c0.f14508b = put2.toString();
        t1.a(c1448c0, this.f12654b);
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void b(String str) {
        this.i.a(C1448c0.a(str), this.f12654b);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        reportError(str, str2, (Throwable) null);
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        this.i.a(C2011z0.a(str2, MessageNano.toByteArray(this.f12659g.fromModel(new C2017z6(new B6(str2, a(th)), str))), this.f12655c), this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.fi("Error received: id: %s, message: %s", f(str), f(str2));
        }
    }

    private void e(String str, String str2) {
        if (this.f12655c.isEnabled()) {
            this.f12655c.i("Event received: " + f(str) + ". With value: " + f(str2));
        }
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        C1849s6 c1849s6 = this.m;
        c1849s6.getClass();
        this.i.a(C2011z0.a(str, MessageNano.toByteArray(this.f12658f.fromModel(new B6(str, pluginErrorDetails != null ? c1849s6.a(pluginErrorDetails) : null))), this.f12655c), this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.fi("Error from plugin received: %s", f(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        boolean z = !this.f12654b.f();
        if (z) {
            C1470cm c1470cm = this.f12655c;
            List<Integer> list = C2011z0.i;
            this.i.a(new J("", "", EnumC1399a1.EVENT_TYPE_UPDATE_FOREGROUND_TIME.b(), 0, c1470cm), this.f12654b);
        }
        return z;
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        C1849s6 c1849s6 = this.m;
        c1849s6.getClass();
        this.i.a(C2011z0.a(str2, MessageNano.toByteArray(this.f12659g.fromModel(new C2017z6(new B6(str2, pluginErrorDetails != null ? c1849s6.a(pluginErrorDetails) : null), str))), this.f12655c), this.f12654b);
        if (this.f12655c.isEnabled()) {
            this.f12655c.fi("Error with identifier: %s from plugin received: %s", str, f(str2));
        }
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void a(int i, String str, String str2, Map<String, String> map, Map<String, byte[]> map2) {
        if (n.contains(Integer.valueOf(i)) || i < 1 || i > 99) {
            HashMap hashMap = map == null ? null : new HashMap(map);
            C1470cm c1470cm = this.f12655c;
            List<Integer> list = C2011z0.i;
            C1448c0 c2 = new J(str2, str, EnumC1399a1.EVENT_TYPE_CUSTOM_EVENT.b(), i, c1470cm).c(Tl.g(hashMap));
            if (map2 != null) {
                c2.a(map2);
            }
            this.i.a(c2, this.f12654b);
        }
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
        HashMap hashMap = A2.b(map) ? null : new HashMap(map);
        T1 t1 = this.i;
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J("", str, EnumC1399a1.EVENT_TYPE_REGULAR.b(), 0, c1470cm), this.f12654b, hashMap);
        if (this.f12655c.isEnabled()) {
            e(str, hashMap != null ? hashMap.toString() : null);
        }
    }

    private H6 a(Throwable th) {
        Throwable th2;
        StackTraceElement[] stackTraceElementArr;
        if (th == null) {
            stackTraceElementArr = null;
            th2 = null;
        } else if (th instanceof C1653k6) {
            stackTraceElementArr = th.getStackTrace();
            th2 = null;
        } else {
            th2 = th;
            stackTraceElementArr = null;
        }
        return I6.a(th2, new C1945w6(null, null, ((Xl) this.k).b()), stackTraceElementArr != null ? Arrays.asList(stackTraceElementArr) : null, this.l.a(), this.l.b());
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(H6 h6) {
        this.i.a(h6, this.f12654b);
        b(h6);
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(C1945w6 c1945w6) {
        C1969x6 c1969x6 = new C1969x6(c1945w6, this.l.a(), this.l.b());
        T1 t1 = this.i;
        byte[] byteArray = MessageNano.toByteArray(this.f12660h.fromModel(c1969x6));
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        t1.a(new J(byteArray, "", EnumC1399a1.EVENT_TYPE_ANR.b(), c1470cm), this.f12654b);
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
        T1 t1 = this.i;
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14507a = str;
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_APPMETRICA_DIAGNOSTICS.b();
        c1448c0.f14508b = jSONObject.toString();
        t1.a(c1448c0, this.f12654b);
    }

    @Override // com.yandex.metrica.impl.ob.I0
    public void a(String str, String str2) {
        e(str, str2);
        C1470cm c1470cm = this.f12655c;
        List<Integer> list = C2011z0.i;
        this.i.a(new J(str2, str, EnumC1399a1.EVENT_TYPE_REGULAR.b(), 0, c1470cm).a(EnumC1987y0.JS), this.f12654b);
    }
}
