package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
/* loaded from: classes5.dex */
public class L {

    /* renamed from: a  reason: collision with root package name */
    private final W0 f13378a;

    /* renamed from: b  reason: collision with root package name */
    private final W0 f13379b;

    /* renamed from: c  reason: collision with root package name */
    private final W0 f13380c;

    /* renamed from: d  reason: collision with root package name */
    private final W0 f13381d;

    /* renamed from: e  reason: collision with root package name */
    private final W0 f13382e;

    /* renamed from: f  reason: collision with root package name */
    private final W0 f13383f;

    /* renamed from: g  reason: collision with root package name */
    private final W0 f13384g;

    /* renamed from: h  reason: collision with root package name */
    private final W0 f13385h;
    private final W0 i;
    private final W0 j;
    private final W0 k;
    private final long l;
    private final C1544fl m;
    private final C1829ra n;
    private final long o;
    private final Xh p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public L(C1790pi c1790pi, C2022zb c2022zb, Map<String, String> map) {
        this(a(c1790pi.V()), a(c1790pi.i()), a(c1790pi.j()), a(c1790pi.G()), a(c1790pi.p()), a(Tl.a(Tl.a(c1790pi.n()))), a(Tl.a(map)), new W0(c2022zb.a().f15814a == null ? null : c2022zb.a().f15814a.f15758b, c2022zb.a().f15815b, c2022zb.a().f15816c), new W0(c2022zb.b().f15814a == null ? null : c2022zb.b().f15814a.f15758b, c2022zb.b().f15815b, c2022zb.b().f15816c), new W0(c2022zb.c().f15814a != null ? c2022zb.c().f15814a.f15758b : null, c2022zb.c().f15815b, c2022zb.c().f15816c), a(Tl.b(c1790pi.h())), new C1544fl(c1790pi), c1790pi.l(), C1422b.a(), c1790pi.C() + c1790pi.O().a(), a(c1790pi.f().x));
    }

    public W0 a() {
        return this.f13384g;
    }

    public W0 b() {
        return this.k;
    }

    public W0 c() {
        return this.f13379b;
    }

    public W0 d() {
        return this.f13380c;
    }

    public C1829ra e() {
        return this.n;
    }

    public Xh f() {
        return this.p;
    }

    public W0 g() {
        return this.f13385h;
    }

    public W0 h() {
        return this.f13382e;
    }

    public W0 i() {
        return this.i;
    }

    public long j() {
        return this.o;
    }

    public W0 k() {
        return this.f13381d;
    }

    public W0 l() {
        return this.f13383f;
    }

    public long m() {
        return this.l;
    }

    public C1544fl n() {
        return this.m;
    }

    public W0 o() {
        return this.f13378a;
    }

    public W0 p() {
        return this.j;
    }

    public String toString() {
        return "ClientIdentifiersHolder{mUuidData=" + this.f13378a + ", mDeviceIdData=" + this.f13379b + ", mDeviceIdHashData=" + this.f13380c + ", mReportAdUrlData=" + this.f13381d + ", mGetAdUrlData=" + this.f13382e + ", mResponseClidsData=" + this.f13383f + ", mClientClidsForRequestData=" + this.f13384g + ", mGaidData=" + this.f13385h + ", mHoaidData=" + this.i + ", yandexAdvIdData=" + this.j + ", customSdkHostsData=" + this.k + ", customSdkHosts=" + this.k + ", mServerTimeOffset=" + this.l + ", mUiAccessConfig=" + this.m + ", diagnosticsConfigsHolder=" + this.n + ", nextStartupTime=" + this.o + ", features=" + this.p + '}';
    }

    private static Bundle a(Parcelable parcelable) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("value", parcelable);
        return bundle;
    }

    private static C1544fl b(Bundle bundle) {
        return (C1544fl) a(bundle.getBundle("UiAccessConfig"), C1544fl.class.getClassLoader());
    }

    public void c(Bundle bundle) {
        bundle.putBundle("Uuid", a(this.f13378a));
        bundle.putBundle("DeviceId", a(this.f13379b));
        bundle.putBundle("DeviceIdHash", a(this.f13380c));
        bundle.putBundle("AdUrlReport", a(this.f13381d));
        bundle.putBundle("AdUrlGet", a(this.f13382e));
        bundle.putBundle("Clids", a(this.f13383f));
        bundle.putBundle("RequestClids", a(this.f13384g));
        bundle.putBundle(IronSourceConstants.TYPE_GAID, a(this.f13385h));
        bundle.putBundle("HOAID", a(this.i));
        bundle.putBundle("YANDEX_ADV_ID", a(this.j));
        bundle.putBundle("CUSTOM_SDK_HOSTS", a(this.k));
        bundle.putBundle("UiAccessConfig", a(this.m));
        bundle.putBundle("DiagnosticsConfigsHolder", a(this.n));
        bundle.putLong("ServerTimeOffset", this.l);
        bundle.putLong("NextStartupTime", this.o);
        bundle.putBundle("features", a(this.p));
    }

    private static Parcelable a(Bundle bundle, ClassLoader classLoader) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(classLoader);
        return bundle.getParcelable("value");
    }

    private static W0 b(Bundle bundle, String str) {
        W0 w0 = (W0) a(bundle.getBundle(str), W0.class.getClassLoader());
        return w0 == null ? new W0(null, U0.UNKNOWN, "bundle serialization error") : w0;
    }

    private static C1829ra a(Bundle bundle) {
        C1829ra c1829ra = (C1829ra) a(bundle.getBundle("DiagnosticsConfigsHolder"), C1829ra.class.getClassLoader());
        return c1829ra == null ? new C1829ra() : c1829ra;
    }

    private static Xh a(Bundle bundle, String str) {
        Xh xh = (Xh) a(bundle.getBundle(str), Xh.class.getClassLoader());
        return xh == null ? new Xh(null, U0.UNKNOWN, "bundle serialization error") : xh;
    }

    private static W0 a(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        return new W0(str, isEmpty ? U0.UNKNOWN : U0.OK, isEmpty ? "no identifier in startup state" : null);
    }

    private static Xh a(Boolean bool) {
        boolean z = bool != null;
        return new Xh(bool, z ? U0.OK : U0.UNKNOWN, z ? null : "no identifier in startup state");
    }

    public L(Bundle bundle) {
        this(b(bundle, "Uuid"), b(bundle, "DeviceId"), b(bundle, "DeviceIdHash"), b(bundle, "AdUrlReport"), b(bundle, "AdUrlGet"), b(bundle, "Clids"), b(bundle, "RequestClids"), b(bundle, IronSourceConstants.TYPE_GAID), b(bundle, "HOAID"), b(bundle, "YANDEX_ADV_ID"), b(bundle, "CUSTOM_SDK_HOSTS"), b(bundle), a(bundle), bundle.getLong("ServerTimeOffset"), bundle.getLong("NextStartupTime"), a(bundle, "features"));
    }

    public L(W0 w0, W0 w02, W0 w03, W0 w04, W0 w05, W0 w06, W0 w07, W0 w08, W0 w09, W0 w010, W0 w011, C1544fl c1544fl, C1829ra c1829ra, long j, long j2, Xh xh) {
        this.f13378a = w0;
        this.f13379b = w02;
        this.f13380c = w03;
        this.f13381d = w04;
        this.f13382e = w05;
        this.f13383f = w06;
        this.f13384g = w07;
        this.f13385h = w08;
        this.i = w09;
        this.j = w010;
        this.k = w011;
        this.m = c1544fl;
        this.n = c1829ra;
        this.l = j;
        this.o = j2;
        this.p = xh;
    }
}
