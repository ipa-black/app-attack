package com.applovin.impl.mediation.debugger.b.c;

import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxNativeAdAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b implements AppLovinCommunicatorSubscriber, Comparable<b> {
    private final Map<MaxAdFormat, String> A;
    private final boolean B;
    private final String C;
    private final Map<MaxAdFormat, com.applovin.impl.mediation.debugger.a.b> D;

    /* renamed from: a  reason: collision with root package name */
    private final n f4961a;

    /* renamed from: b  reason: collision with root package name */
    private final a f4962b;

    /* renamed from: c  reason: collision with root package name */
    private int f4963c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4964d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4965e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f4966f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f4967g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f4968h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final String n;
    private final String o;
    private final String p;
    private String q;
    private final String r;
    private final String s;
    private final String t;
    private final int u;
    private final List<MaxAdFormat> v;
    private final List<d> w;
    private final List<com.applovin.impl.mediation.debugger.b.c.a> x;
    private final List<String> y;
    private final c z;

    /* loaded from: classes.dex */
    public enum a {
        MISSING("MISSING"),
        INCOMPLETE_INTEGRATION("INCOMPLETE INTEGRATION"),
        INVALID_INTEGRATION("INVALID INTEGRATION"),
        COMPLETE("COMPLETE");
        

        /* renamed from: e  reason: collision with root package name */
        private final String f4974e;

        a(String str) {
            this.f4974e = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String a() {
            return this.f4974e;
        }
    }

    /* renamed from: com.applovin.impl.mediation.debugger.b.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0070b {
        NOT_SUPPORTED("Not Supported", SupportMenu.CATEGORY_MASK, "This network does not support test mode."),
        INVALID_INTEGRATION("Invalid Integration", SupportMenu.CATEGORY_MASK, "Please address all the integration issue(s) marked in red above."),
        NOT_INITIALIZED("Not Initialized", SupportMenu.CATEGORY_MASK, "Please configure this network in your MAX dashboard."),
        DISABLED("Enable", -16776961, "Please re-launch the app to enable test ads."),
        READY("", -16776961, "");
        

        /* renamed from: f  reason: collision with root package name */
        private final String f4980f;

        /* renamed from: g  reason: collision with root package name */
        private final int f4981g;

        /* renamed from: h  reason: collision with root package name */
        private final String f4982h;

        EnumC0070b(String str, int i2, String str2) {
            this.f4980f = str;
            this.f4981g = i2;
            this.f4982h = str2;
        }

        public String a() {
            return this.f4980f;
        }

        public int b() {
            return this.f4981g;
        }

        public String c() {
            return this.f4982h;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0235  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(org.json.JSONObject r20, com.applovin.impl.sdk.n r21) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.debugger.b.c.b.<init>(org.json.JSONObject, com.applovin.impl.sdk.n):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0012, code lost:
        if (r3.f4965e != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0014, code lost:
        r0 = com.applovin.impl.mediation.debugger.b.c.b.a.f4970b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
        r0 = com.applovin.impl.mediation.debugger.b.c.b.a.f4969a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
        if (r3.f4967g != false) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.applovin.impl.mediation.debugger.b.c.b.a D() {
        /*
            r3 = this;
            boolean r0 = r3.f4964d
            if (r0 == 0) goto L10
            boolean r0 = r3.f4965e
            if (r0 == 0) goto Lb
            com.applovin.impl.mediation.debugger.b.c.b$a r0 = com.applovin.impl.mediation.debugger.b.c.b.a.COMPLETE
            goto L19
        Lb:
            boolean r0 = r3.f4967g
            if (r0 == 0) goto L14
            goto L17
        L10:
            boolean r0 = r3.f4965e
            if (r0 == 0) goto L17
        L14:
            com.applovin.impl.mediation.debugger.b.c.b$a r0 = com.applovin.impl.mediation.debugger.b.c.b.a.INCOMPLETE_INTEGRATION
            goto L19
        L17:
            com.applovin.impl.mediation.debugger.b.c.b$a r0 = com.applovin.impl.mediation.debugger.b.c.b.a.MISSING
        L19:
            com.applovin.impl.mediation.debugger.b.c.b$a r1 = com.applovin.impl.mediation.debugger.b.c.b.a.MISSING
            if (r0 != r1) goto L1e
            return r0
        L1e:
            java.util.List<com.applovin.impl.mediation.debugger.b.c.d> r1 = r3.w
            java.util.Iterator r1 = r1.iterator()
        L24:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L39
            java.lang.Object r2 = r1.next()
            com.applovin.impl.mediation.debugger.b.c.d r2 = (com.applovin.impl.mediation.debugger.b.c.d) r2
            boolean r2 = r2.c()
            if (r2 != 0) goto L24
            com.applovin.impl.mediation.debugger.b.c.b$a r0 = com.applovin.impl.mediation.debugger.b.c.b.a.INVALID_INTEGRATION
            return r0
        L39:
            java.util.List<com.applovin.impl.mediation.debugger.b.c.a> r1 = r3.x
            java.util.Iterator r1 = r1.iterator()
        L3f:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L54
            java.lang.Object r2 = r1.next()
            com.applovin.impl.mediation.debugger.b.c.a r2 = (com.applovin.impl.mediation.debugger.b.c.a) r2
            boolean r2 = r2.c()
            if (r2 != 0) goto L3f
            com.applovin.impl.mediation.debugger.b.c.b$a r0 = com.applovin.impl.mediation.debugger.b.c.b.a.INVALID_INTEGRATION
            return r0
        L54:
            boolean r1 = r3.m
            if (r1 == 0) goto L61
            boolean r1 = com.applovin.impl.sdk.n.B()
            if (r1 != 0) goto L61
            com.applovin.impl.mediation.debugger.b.c.b$a r0 = com.applovin.impl.mediation.debugger.b.c.b.a.INVALID_INTEGRATION
            return r0
        L61:
            com.applovin.impl.mediation.debugger.b.c.c r1 = r3.z
            boolean r1 = r1.a()
            if (r1 == 0) goto L73
            com.applovin.impl.mediation.debugger.b.c.c r1 = r3.z
            boolean r1 = r1.b()
            if (r1 != 0) goto L73
            com.applovin.impl.mediation.debugger.b.c.b$a r0 = com.applovin.impl.mediation.debugger.b.c.b.a.INCOMPLETE_INTEGRATION
        L73:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.debugger.b.c.b.D():com.applovin.impl.mediation.debugger.b.c.b$a");
    }

    private List<MaxAdFormat> a(MaxAdapter maxAdapter) {
        ArrayList arrayList = new ArrayList(5);
        if (maxAdapter instanceof MaxInterstitialAdapter) {
            arrayList.add(MaxAdFormat.INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAppOpenAdapter) {
            arrayList.add(MaxAdFormat.APP_OPEN);
        }
        if (maxAdapter instanceof MaxRewardedAdapter) {
            arrayList.add(MaxAdFormat.REWARDED);
        }
        if (maxAdapter instanceof MaxRewardedInterstitialAdapter) {
            arrayList.add(MaxAdFormat.REWARDED_INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAdViewAdapter) {
            arrayList.add(MaxAdFormat.BANNER);
            arrayList.add(MaxAdFormat.LEADER);
            arrayList.add(MaxAdFormat.MREC);
        }
        if (maxAdapter instanceof MaxNativeAdAdapter) {
            arrayList.add(MaxAdFormat.NATIVE);
        }
        return arrayList;
    }

    private List<String> a(JSONObject jSONObject) {
        return JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "supported_regions", null), null);
    }

    private List<d> a(JSONObject jSONObject, n nVar) {
        ArrayList arrayList = new ArrayList();
        if (this.p.equals("com.applovin.mediation.adapters.AppLovinMediationAdapter")) {
            d dVar = new d("com.google.android.gms.permission.AD_ID", "Please add\n<uses-permission android:name=\"com.google.android.gms.permission.AD_ID\" />\nto your AndroidManifest.xml", nVar.P());
            if (dVar.c()) {
                arrayList.add(dVar);
            }
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "permissions", new JSONObject());
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                arrayList.add(new d(next, jSONObject2.getString(next), nVar.P()));
            } catch (JSONException unused) {
            }
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.b.c.a> a(JSONObject jSONObject, String str, n nVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "dependencies", new JSONArray());
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "dependencies_v2", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length() + jSONArray2.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new com.applovin.impl.mediation.debugger.b.c.a(jSONObject2, nVar));
            }
        }
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null);
            if (jSONObject3 != null && com.applovin.impl.mediation.debugger.b.c.a.a(str, JsonUtils.getString(jSONObject3, "min_adapter_version", null), JsonUtils.getString(jSONObject3, "max_adapter_version", null))) {
                arrayList.add(new com.applovin.impl.mediation.debugger.b.c.a(jSONObject3, nVar));
            }
        }
        return arrayList;
    }

    public boolean A() {
        return this.B;
    }

    public String B() {
        return this.C;
    }

    public Map<MaxAdFormat, com.applovin.impl.mediation.debugger.a.b> C() {
        return this.D;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(b bVar) {
        return this.o.compareToIgnoreCase(bVar.o);
    }

    public a a() {
        return this.f4962b;
    }

    public int b() {
        return this.f4963c;
    }

    public EnumC0070b c() {
        return !this.f4968h ? EnumC0070b.NOT_SUPPORTED : (this.f4962b == a.COMPLETE || (this.f4962b == a.INCOMPLETE_INTEGRATION && d() && e())) ? !this.f4961a.N().a() ? EnumC0070b.DISABLED : (this.i && (this.f4963c == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() || this.f4963c == MaxAdapter.InitializationStatus.INITIALIZING.getCode())) ? EnumC0070b.NOT_INITIALIZED : EnumC0070b.READY : EnumC0070b.INVALID_INTEGRATION;
    }

    public boolean d() {
        return this.f4964d;
    }

    public boolean e() {
        return this.f4965e;
    }

    public boolean f() {
        return this.f4966f;
    }

    public boolean g() {
        return this.f4962b == a.MISSING && this.j;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediatedNetwork";
    }

    public String h() {
        return this.n;
    }

    public String i() {
        return this.o;
    }

    public String j() {
        return this.q;
    }

    public String k() {
        return this.r;
    }

    public String l() {
        return this.s;
    }

    public String m() {
        return this.p;
    }

    public List<String> n() {
        return this.y;
    }

    public int o() {
        return this.u;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        String string = appLovinCommunicatorMessage.getMessageData().getString("adapter_class", "");
        if (this.p.equals(string)) {
            this.f4963c = appLovinCommunicatorMessage.getMessageData().getInt("init_status", 0);
            MaxAdapter b2 = com.applovin.impl.mediation.c.c.b(string, this.f4961a);
            if (b2 == null || this.q.equals(b2.getSdkVersion())) {
                return;
            }
            this.q = b2.getSdkVersion();
            this.f4961a.aj().a(this.q, string);
        }
    }

    public List<MaxAdFormat> p() {
        return this.v;
    }

    public boolean q() {
        return this.k;
    }

    public List<d> r() {
        return this.w;
    }

    public List<com.applovin.impl.mediation.debugger.b.c.a> s() {
        return this.x;
    }

    public boolean t() {
        return this.m;
    }

    public String toString() {
        return "MediatedNetwork{name=" + this.n + ", displayName=" + this.o + ", sdkAvailable=" + this.f4964d + ", sdkVersion=" + this.q + ", adapterAvailable=" + this.f4965e + ", adapterVersion=" + this.r + "}";
    }

    public final c u() {
        return this.z;
    }

    public Map<MaxAdFormat, String> v() {
        return this.A;
    }

    public String w() {
        return this.t;
    }

    public boolean x() {
        return this.l;
    }

    public final n y() {
        return this.f4961a;
    }

    public final String z() {
        StringBuilder sb = new StringBuilder("\n---------- ");
        String str = "UNAVAILABLE";
        StringBuilder append = sb.append(this.n).append(" ----------\nStatus  - ").append(this.f4962b.a()).append("\nSDK     - ").append((!this.f4964d || TextUtils.isEmpty(this.q)) ? "UNAVAILABLE" : this.q).append("\nAdapter - ");
        if (this.f4965e && !TextUtils.isEmpty(this.r)) {
            str = this.r;
        }
        append.append(str);
        if (this.z.a() && !this.z.b()) {
            sb.append("\n* ").append(this.z.c());
        }
        for (d dVar : r()) {
            if (!dVar.c()) {
                sb.append("\n* MISSING ").append(dVar.a()).append(": ").append(dVar.b());
            }
        }
        for (com.applovin.impl.mediation.debugger.b.c.a aVar : s()) {
            if (!aVar.c()) {
                sb.append("\n* MISSING ").append(aVar.a()).append(": ").append(aVar.b());
            }
        }
        return sb.toString();
    }
}
