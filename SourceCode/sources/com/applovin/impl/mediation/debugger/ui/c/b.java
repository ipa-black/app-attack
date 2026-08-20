package com.applovin.impl.mediation.debugger.ui.c;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.mediation.debugger.ui.d.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.g;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.R;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class b extends d {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.mediation.debugger.b.c.b f5092a;

    /* renamed from: b  reason: collision with root package name */
    private List<c> f5093b;

    /* renamed from: d  reason: collision with root package name */
    private final List<c> f5094d;

    /* renamed from: e  reason: collision with root package name */
    private final List<c> f5095e;

    /* renamed from: f  reason: collision with root package name */
    private final List<c> f5096f;

    /* renamed from: g  reason: collision with root package name */
    private final List<c> f5097g;

    /* renamed from: h  reason: collision with root package name */
    private SpannedString f5098h;

    /* loaded from: classes.dex */
    public enum a {
        INTEGRATIONS,
        PERMISSIONS,
        CONFIGURATION,
        DEPENDENCIES,
        TEST_ADS,
        COUNT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(com.applovin.impl.mediation.debugger.b.c.b bVar, Context context) {
        super(context);
        this.f5092a = bVar;
        if (bVar.a() == b.a.INVALID_INTEGRATION) {
            SpannableString spannableString = new SpannableString("Tap for more information");
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, spannableString.length(), 33);
            this.f5098h = new SpannedString(spannableString);
        } else {
            this.f5098h = new SpannedString("");
        }
        this.f5093b = c();
        this.f5094d = a(bVar.r());
        this.f5095e = a(bVar.u());
        this.f5096f = b(bVar.s());
        this.f5097g = h();
        notifyDataSetChanged();
    }

    private int a(boolean z) {
        return z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark;
    }

    private c a(b.EnumC0070b enumC0070b) {
        c.a p = c.p();
        if (enumC0070b == b.EnumC0070b.READY) {
            p.a(this.f5139c);
        }
        return p.a("Test Mode").b(enumC0070b.a()).b(enumC0070b.b()).c("Restart Required").d(enumC0070b.c()).a(true).a();
    }

    private c a(String str, String str2, boolean z, boolean z2) {
        return c.a(z ? c.b.RIGHT_DETAIL : c.b.DETAIL).a(str).b(z ? null : this.f5098h).c("Instructions").d(str2).a(z ? R.drawable.applovin_ic_check_mark_bordered : b(z2)).c(z ? g.a(R.color.applovin_sdk_checkmarkColor, this.f5139c) : d(z2)).a(!z).a();
    }

    private List<c> a(com.applovin.impl.mediation.debugger.b.c.c cVar) {
        ArrayList arrayList = new ArrayList(1);
        if (cVar.a()) {
            arrayList.add(a("Cleartext Traffic", cVar.c(), cVar.b(), false));
        }
        if (this.f5092a.t()) {
            arrayList.add(a("Java 8", "For optimal performance, please enable Java 8 support. See: https://dash.applovin.com/documentation/mediation/android/getting-started/integration", n.B(), true));
        }
        return arrayList;
    }

    private List<c> a(List<com.applovin.impl.mediation.debugger.b.c.d> list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            for (com.applovin.impl.mediation.debugger.b.c.d dVar : list) {
                arrayList.add(a(dVar.a(), dVar.b(), dVar.c(), true));
            }
        }
        return arrayList;
    }

    private int b(boolean z) {
        return z ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_warning;
    }

    private List<c> b(List<com.applovin.impl.mediation.debugger.b.c.a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            for (com.applovin.impl.mediation.debugger.b.c.a aVar : list) {
                arrayList.add(a(aVar.a(), aVar.b(), aVar.c(), true));
            }
        }
        return arrayList;
    }

    private int c(boolean z) {
        return g.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.f5139c);
    }

    private c c(List<String> list) {
        return c.p().a("Region/VPN Required").b(CollectionUtils.implode(list, ", ", list.size())).a();
    }

    private List<c> c() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(d());
        arrayList.add(f());
        arrayList.add(g());
        return arrayList;
    }

    private int d(boolean z) {
        return g.a(z ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_warningColor, this.f5139c);
    }

    private c d() {
        c.a b2 = c.p().a(LogConstants.KEY_SDK).b(this.f5092a.j());
        if (TextUtils.isEmpty(this.f5092a.j())) {
            b2.a(a(this.f5092a.d())).c(c(this.f5092a.d()));
        }
        return b2.a();
    }

    private String e(int i) {
        return (MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.getCode() == i || MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode() == i || MaxAdapter.InitializationStatus.DOES_NOT_APPLY.getCode() == i) ? "Initialized" : MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() == i ? "Failure" : MaxAdapter.InitializationStatus.INITIALIZING.getCode() == i ? "Initializing..." : "Not Initialized";
    }

    private c f() {
        c.a b2 = c.p().a("Adapter").b(this.f5092a.k());
        if (TextUtils.isEmpty(this.f5092a.k())) {
            b2.a(a(this.f5092a.e())).c(c(this.f5092a.e()));
        }
        return b2.a();
    }

    private c g() {
        return c.p().a("Initialization Status").b(e(this.f5092a.b())).a(false).a();
    }

    private List<c> h() {
        ArrayList arrayList = new ArrayList(3);
        if (StringUtils.isValidString(this.f5092a.w())) {
            arrayList.add(c.a(c.b.DETAIL).a(this.f5092a.w()).a());
        }
        if (this.f5092a.c() == b.EnumC0070b.NOT_SUPPORTED) {
            return arrayList;
        }
        if (this.f5092a.n() != null) {
            arrayList.add(c(this.f5092a.n()));
        }
        if (this.f5092a.x()) {
            arrayList.add(a("Not an Age Restricted User", "Test mode requires Age Restricted User (COPPA) to be set to false.", !AppLovinPrivacySettings.isAgeRestrictedUser(this.f5139c) && AppLovinPrivacySettings.isAgeRestrictedUserSet(this.f5139c), false));
        }
        arrayList.add(a(this.f5092a.c()));
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int a(int i) {
        return (i == a.INTEGRATIONS.ordinal() ? this.f5093b : i == a.PERMISSIONS.ordinal() ? this.f5094d : i == a.CONFIGURATION.ordinal() ? this.f5095e : i == a.DEPENDENCIES.ordinal() ? this.f5096f : this.f5097g).size();
    }

    public com.applovin.impl.mediation.debugger.b.c.b a() {
        return this.f5092a;
    }

    public boolean a(com.applovin.impl.mediation.debugger.ui.d.a aVar) {
        return aVar.a() == a.TEST_ADS.ordinal() && aVar.b() == this.f5097g.size() - 1;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected c b(int i) {
        return i == a.INTEGRATIONS.ordinal() ? new e("INTEGRATIONS") : i == a.PERMISSIONS.ordinal() ? new e("PERMISSIONS") : i == a.CONFIGURATION.ordinal() ? new e("CONFIGURATION") : i == a.DEPENDENCIES.ordinal() ? new e("DEPENDENCIES") : new e("TEST ADS");
    }

    public void b() {
        this.f5093b = c();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<c> c(int i) {
        return i == a.INTEGRATIONS.ordinal() ? this.f5093b : i == a.PERMISSIONS.ordinal() ? this.f5094d : i == a.CONFIGURATION.ordinal() ? this.f5095e : i == a.DEPENDENCIES.ordinal() ? this.f5096f : this.f5097g;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int e() {
        return a.COUNT.ordinal();
    }

    public String toString() {
        return "MediatedNetworkListAdapter{}";
    }
}
