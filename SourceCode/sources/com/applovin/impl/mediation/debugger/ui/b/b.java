package com.applovin.impl.mediation.debugger.ui.b;

import android.content.Context;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.mediation.debugger.a;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.sdk.e;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.g;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class b extends d implements AppLovinCommunicatorSubscriber, a.InterfaceC0068a {

    /* renamed from: a  reason: collision with root package name */
    private n f5062a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.applovin.impl.mediation.debugger.b.a.a> f5063b;

    /* renamed from: d  reason: collision with root package name */
    private List<com.applovin.impl.mediation.debugger.b.a.a> f5064d;

    /* renamed from: e  reason: collision with root package name */
    private String f5065e;

    /* renamed from: f  reason: collision with root package name */
    private String f5066f;

    /* renamed from: g  reason: collision with root package name */
    private String f5067g;

    /* renamed from: h  reason: collision with root package name */
    private com.applovin.impl.mediation.debugger.b.b.b f5068h;
    private final StringBuilder i;
    private final AtomicBoolean j;
    private boolean k;
    private List<com.applovin.impl.mediation.debugger.b.c.b> l;
    private List<com.applovin.impl.mediation.debugger.b.c.b> m;
    private List<com.applovin.impl.mediation.debugger.b.c.b> n;
    private List<com.applovin.impl.mediation.debugger.b.a.d> o;
    private List<com.applovin.impl.mediation.debugger.b.a.d> p;
    private List<com.applovin.impl.mediation.debugger.b.c.b> q;
    private List<c> r;
    private List<c> s;
    private List<c> t;
    private List<c> u;
    private List<c> v;
    private List<c> w;
    private List<c> x;

    /* loaded from: classes.dex */
    public enum a {
        AD_UNITS,
        SELECT_LIVE_NETWORKS,
        SELECT_TEST_MODE_NETWORKS,
        INITIALIZATION_AD_UNITS,
        COUNT
    }

    /* renamed from: com.applovin.impl.mediation.debugger.ui.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0075b {
        APP_INFO,
        MAX,
        PRIVACY,
        ADS,
        INCOMPLETE_NETWORKS,
        COMPLETED_NETWORKS,
        MISSING_NETWORKS,
        COUNT
    }

    public b(Context context) {
        super(context);
        this.i = new StringBuilder("");
        this.j = new AtomicBoolean();
        this.k = false;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.x = new ArrayList();
    }

    private c a(String str) {
        c.a p = c.p();
        if (!this.f5062a.N().a()) {
            p.a(this.f5139c);
        }
        c.a a2 = p.a((StringUtils.isValidString(str) ? "" : "Select ").concat("Live Network"));
        if (this.f5062a.N().a()) {
            str = "Enable";
        }
        return a2.b(str).b(-16776961).d("Ad loads are not supported while Test Mode is enabled. Please restart the app and make sure your GAID has not been enabled for test mode and that you are not on an emulator.").a(true).a();
    }

    private List<c> a(String str, String str2) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(c.p().a("View Ad Units (" + this.f5063b.size() + ")").a(this.f5139c).a(true).a());
        arrayList.add(a(str));
        arrayList.add(b(str2));
        if (!this.f5064d.isEmpty()) {
            arrayList.add(c.p().a("Selective Init Ad Units (" + this.f5064d.size() + ")").a(this.f5139c).a(true).a());
        }
        return arrayList;
    }

    private void a(c.a aVar, String str) {
        aVar.c("MAX Ad Review").d(str).a(R.drawable.applovin_ic_x_mark).c(g.a(R.color.applovin_sdk_xmarkColor, this.f5139c)).a(true);
    }

    private void a(StringBuilder sb, String str) {
        String sb2 = sb.toString();
        if (sb2.length() + str.length() >= ((Integer) this.f5062a.a(com.applovin.impl.sdk.c.b.ao)).intValue()) {
            v.f("MediationDebuggerListAdapter", sb2);
            this.i.append(sb2);
            sb.setLength(1);
        }
        sb.append(str);
    }

    private void a(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        List<com.applovin.impl.mediation.debugger.b.c.b> list2;
        for (com.applovin.impl.mediation.debugger.b.c.b bVar : list) {
            if (!bVar.g()) {
                if (bVar.a() == b.a.INCOMPLETE_INTEGRATION || bVar.a() == b.a.INVALID_INTEGRATION) {
                    list2 = this.l;
                } else if (bVar.a() == b.a.COMPLETE) {
                    list2 = this.m;
                } else if (bVar.a() == b.a.MISSING) {
                    list2 = this.n;
                }
                list2.add(bVar);
            }
        }
    }

    private c b(String str) {
        c.a p = c.p();
        if (this.f5062a.N().a()) {
            p.a(this.f5139c);
        }
        c.a a2 = p.a((StringUtils.isValidString(str) ? "" : "Select ").concat("Test Mode Network"));
        if (!this.f5062a.N().a()) {
            str = "Enable";
        }
        return a2.b(str).b(-16776961).d("Please re-launch the app to enable test mode. This will allow the selection of test mode networks.").a(true).a();
    }

    private c b(String str, String str2) {
        c.a a2 = c.p().a(str);
        if (StringUtils.isValidString(str2)) {
            a2.b(str2);
        } else {
            a2.a(R.drawable.applovin_ic_x_mark);
            a2.c(g.a(R.color.applovin_sdk_xmarkColor, this.f5139c));
        }
        return a2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c b(boolean z) {
        return c.p().a("app-ads.txt").a(z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).c(g.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.f5139c)).a(false).a();
    }

    private void b(List<com.applovin.impl.mediation.debugger.b.a.a> list) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (com.applovin.impl.mediation.debugger.b.a.a aVar : list) {
            com.applovin.impl.mediation.debugger.b.a.c e2 = aVar.e();
            for (com.applovin.impl.mediation.debugger.b.a.b bVar : e2.a()) {
                hashSet.add(bVar.a());
            }
            for (com.applovin.impl.mediation.debugger.b.a.b bVar2 : e2.b()) {
                hashSet2.add(bVar2.a());
            }
        }
        this.o = new ArrayList(hashSet);
        this.p = new ArrayList(hashSet2);
        Collections.sort(this.o);
        Collections.sort(this.p);
    }

    private void c(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        for (com.applovin.impl.mediation.debugger.b.c.b bVar : list) {
            if (bVar.c() == b.EnumC0070b.READY) {
                this.q.add(bVar);
            }
        }
    }

    private List<c> d(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (com.applovin.impl.mediation.debugger.b.c.b bVar : list) {
            arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.a(bVar, this.f5139c));
        }
        return arrayList;
    }

    private void p() {
        Map<String, String> metaData;
        StringBuilder sb = new StringBuilder("\n========== MEDIATION DEBUGGER ==========");
        sb.append("\n========== APP INFO ==========");
        sb.append("\nDev Build - " + Utils.isPubInDebugMode(this.f5139c, this.f5062a));
        sb.append("\nTest Mode - ".concat(this.f5062a.N().a() ? "enabled" : LogConstants.MSG_AD_TYPE_DISABLED));
        sb.append("\nTarget SDK - " + this.f5062a.Y().h().get("target_sdk"));
        sb.append("\n========== MAX ==========");
        String str = AppLovinSdk.VERSION;
        String str2 = (String) this.f5062a.a(com.applovin.impl.sdk.c.b.dI);
        String a2 = e.a();
        sb.append("\nSDK Version - " + str);
        StringBuilder sb2 = new StringBuilder("\nPlugin Version - ");
        if (!StringUtils.isValidString(str2)) {
            str2 = "None";
        }
        sb.append(sb2.append(str2).toString());
        StringBuilder sb3 = new StringBuilder("\nAd Review Version - ");
        if (!StringUtils.isValidString(a2)) {
            a2 = "Disabled";
        }
        sb.append(sb3.append(a2).toString());
        if (this.f5062a.g() && (metaData = Utils.getMetaData(this.f5062a.q())) != null) {
            String str3 = metaData.get("UnityVersion");
            sb.append("\nUnity Version - " + (StringUtils.isValidString(str3) ? str3 : "None"));
        }
        sb.append("\n========== PRIVACY ==========");
        sb.append(k.a(this.f5139c));
        sb.append("\n========== NETWORKS ==========");
        for (com.applovin.impl.mediation.debugger.b.c.b bVar : this.m) {
            a(sb, bVar.z());
        }
        for (com.applovin.impl.mediation.debugger.b.c.b bVar2 : this.l) {
            a(sb, bVar2.z());
        }
        sb.append("\n========== AD UNITS ==========");
        for (com.applovin.impl.mediation.debugger.b.a.a aVar : this.f5063b) {
            a(sb, aVar.f());
        }
        sb.append("\n========== END ==========");
        v.f("MediationDebuggerListAdapter", sb.toString());
        this.i.append(sb.toString());
    }

    private List<c> q() {
        String str;
        ArrayList arrayList = new ArrayList(5);
        try {
            str = this.f5139c.getPackageManager().getPackageInfo(this.f5139c.getPackageName(), 0).versionName;
        } catch (Throwable unused) {
            str = null;
        }
        arrayList.add(c.p().a("Package Name").b(this.f5139c.getPackageName()).a());
        c.a a2 = c.p().a("App Version");
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(a2.b(str).a());
        arrayList.add(c.p().a("OS").b(Utils.getAndroidOSInfo()).a());
        arrayList.add(c.p().a("Account").b(StringUtils.isValidString(this.f5067g) ? this.f5067g : "None").a());
        arrayList.add(c.p().a("Mediation Provider").b(StringUtils.isValidString(this.f5062a.u()) ? this.f5062a.u() : "None").a());
        arrayList.add(c.p().a("OM SDK Version").b(this.f5062a.ao().c()).a());
        if (!n.B()) {
            arrayList.add(u());
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.applovin.impl.mediation.debugger.ui.d.c> r() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 4
            r0.<init>(r1)
            com.applovin.impl.mediation.debugger.ui.d.c$a r1 = com.applovin.impl.mediation.debugger.ui.d.c.p()
            java.lang.String r2 = "SDK Version"
            com.applovin.impl.mediation.debugger.ui.d.c$a r1 = r1.a(r2)
            java.lang.String r2 = com.applovin.sdk.AppLovinSdk.VERSION
            com.applovin.impl.mediation.debugger.ui.d.c$a r1 = r1.b(r2)
            com.applovin.impl.mediation.debugger.ui.d.c r1 = r1.a()
            r0.add(r1)
            com.applovin.impl.sdk.n r1 = r6.f5062a
            com.applovin.impl.sdk.c.b<java.lang.String> r2 = com.applovin.impl.sdk.c.b.dI
            java.lang.Object r1 = r1.a(r2)
            java.lang.String r1 = (java.lang.String) r1
            com.applovin.impl.mediation.debugger.ui.d.c$a r2 = com.applovin.impl.mediation.debugger.ui.d.c.p()
            java.lang.String r3 = "Plugin Version"
            com.applovin.impl.mediation.debugger.ui.d.c$a r2 = r2.a(r3)
            boolean r3 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r1)
            java.lang.String r4 = "None"
            if (r3 == 0) goto L3a
            goto L3b
        L3a:
            r1 = r4
        L3b:
            com.applovin.impl.mediation.debugger.ui.d.c$a r1 = r2.b(r1)
            com.applovin.impl.mediation.debugger.ui.d.c r1 = r1.a()
            r0.add(r1)
            com.applovin.impl.mediation.debugger.ui.d.c$a r1 = com.applovin.impl.mediation.debugger.ui.d.c.p()
            java.lang.String r2 = "Ad Review Version"
            com.applovin.impl.mediation.debugger.ui.d.c$a r1 = r1.a(r2)
            java.lang.String r2 = com.applovin.impl.sdk.e.a()
            boolean r3 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r2)
            if (r3 == 0) goto L98
            java.lang.String r3 = com.applovin.impl.sdk.e.b()
            boolean r5 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r3)
            if (r5 == 0) goto L94
            com.applovin.impl.sdk.n r5 = r6.f5062a
            java.lang.String r5 = r5.C()
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L71
            goto L94
        L71:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "MAX Ad Review integrated with wrong SDK key. Please check that your "
            r2.<init>(r3)
            com.applovin.impl.sdk.n r3 = r6.f5062a
            boolean r3 = r3.g()
            if (r3 == 0) goto L83
            java.lang.String r3 = "SDK key is downloaded"
            goto L85
        L83:
            java.lang.String r3 = "Gradle plugin snippet is integrated"
        L85:
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " from the correct account."
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            goto L9a
        L94:
            r1.b(r2)
            goto L9d
        L98:
            java.lang.String r2 = "Integrating MAX Ad review is OPTIONAL. This feature gives developers unprecedented transparency into the creatives the users see in their apps."
        L9a:
            r6.a(r1, r2)
        L9d:
            com.applovin.impl.mediation.debugger.ui.d.c r1 = r1.a()
            r0.add(r1)
            com.applovin.impl.sdk.n r1 = r6.f5062a
            boolean r1 = r1.g()
            if (r1 == 0) goto Ld0
            com.applovin.impl.sdk.n r1 = r6.f5062a
            com.applovin.sdk.AppLovinSdkSettings r1 = r1.q()
            java.util.Map r1 = com.applovin.impl.sdk.utils.Utils.getMetaData(r1)
            if (r1 == 0) goto Ld0
            java.lang.String r2 = "UnityVersion"
            java.lang.Object r1 = r1.get(r2)
            java.lang.String r1 = (java.lang.String) r1
            boolean r2 = com.applovin.impl.sdk.utils.StringUtils.isValidString(r1)
            if (r2 == 0) goto Lc7
            r4 = r1
        Lc7:
            java.lang.String r1 = "Unity Version"
            com.applovin.impl.mediation.debugger.ui.d.c r1 = r6.b(r1, r4)
            r0.add(r1)
        Ld0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.debugger.ui.b.b.r():java.util.List");
    }

    private List<c> s() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.b(k.a(), true, this.f5139c));
        arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.b(k.b(), false, this.f5139c));
        arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.b(k.c(), true, this.f5139c));
        return arrayList;
    }

    private List<c> t() {
        return a((String) null, (String) null);
    }

    private c u() {
        return c.p().a("Java 8").a(R.drawable.applovin_ic_x_mark).c(g.a(R.color.applovin_sdk_xmarkColor, this.f5139c)).c("Upgrade to Java 8").d("For optimal performance, please enable Java 8 support. This will be required in a future SDK release. See: https://dash.applovin.com/documentation/mediation/android/getting-started/integration").a(true).a();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int a(int i) {
        return (i == EnumC0075b.APP_INFO.ordinal() ? this.r : i == EnumC0075b.MAX.ordinal() ? this.s : i == EnumC0075b.PRIVACY.ordinal() ? this.t : i == EnumC0075b.ADS.ordinal() ? this.u : i == EnumC0075b.INCOMPLETE_NETWORKS.ordinal() ? this.v : i == EnumC0075b.COMPLETED_NETWORKS.ordinal() ? this.w : this.x).size();
    }

    @Override // com.applovin.impl.mediation.debugger.a.InterfaceC0068a
    public void a() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.b.b.3
            @Override // java.lang.Runnable
            public void run() {
                b.this.s.add(b.this.b(false));
                b.this.notifyDataSetChanged();
            }
        });
    }

    @Override // com.applovin.impl.mediation.debugger.a.InterfaceC0068a
    public void a(final com.applovin.impl.mediation.debugger.b.b.a aVar) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                List<com.applovin.impl.mediation.debugger.b.b.b> list = aVar.a().get(b.this.f5068h.a());
                b.this.s.add(b.this.b(list != null ? list.contains(b.this.f5068h) : false));
                b.this.notifyDataSetChanged();
            }
        });
    }

    public void a(List<com.applovin.impl.mediation.debugger.b.c.b> list, List<com.applovin.impl.mediation.debugger.b.a.a> list2, List<com.applovin.impl.mediation.debugger.b.a.a> list3, com.applovin.impl.mediation.debugger.b.b.b bVar, String str, String str2, String str3, n nVar) {
        this.f5062a = nVar;
        this.f5063b = list2;
        this.f5064d = list3;
        this.f5068h = bVar;
        this.f5065e = str;
        this.f5066f = str2;
        this.f5067g = str3;
        if (list != null && this.j.compareAndSet(false, true)) {
            nVar.D();
            if (v.a()) {
                nVar.D().b("MediationDebuggerListAdapter", "Populating networks...");
            }
            a(list);
            b(list2);
            c(this.m);
            this.r.addAll(q());
            this.s.addAll(r());
            this.t.addAll(s());
            this.u.addAll(t());
            this.v = d(this.l);
            this.w = d(this.m);
            this.x = d(this.n);
            ArrayList arrayList = new ArrayList(3);
            arrayList.add("privacy_setting_updated");
            arrayList.add("network_sdk_version_updated");
            arrayList.add("live_network_updated");
            arrayList.add("test_mode_network_updated");
            AppLovinCommunicator.getInstance(this.f5139c).subscribe(this, arrayList);
            p();
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.notifyDataSetChanged();
            }
        });
    }

    public void a(boolean z) {
        this.k = z;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected c b(int i) {
        return i == EnumC0075b.APP_INFO.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("APP INFO") : i == EnumC0075b.MAX.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("MAX") : i == EnumC0075b.PRIVACY.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("PRIVACY") : i == EnumC0075b.ADS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("ADS") : i == EnumC0075b.INCOMPLETE_NETWORKS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("INCOMPLETE INTEGRATIONS") : i == EnumC0075b.COMPLETED_NETWORKS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("COMPLETED INTEGRATIONS") : new com.applovin.impl.mediation.debugger.ui.d.e("MISSING INTEGRATIONS");
    }

    public boolean b() {
        return this.j.get();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<c> c(int i) {
        return i == EnumC0075b.APP_INFO.ordinal() ? this.r : i == EnumC0075b.MAX.ordinal() ? this.s : i == EnumC0075b.PRIVACY.ordinal() ? this.t : i == EnumC0075b.ADS.ordinal() ? this.u : i == EnumC0075b.INCOMPLETE_NETWORKS.ordinal() ? this.v : i == EnumC0075b.COMPLETED_NETWORKS.ordinal() ? this.w : this.x;
    }

    public boolean c() {
        return this.k;
    }

    public n d() {
        return this.f5062a;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int e() {
        return EnumC0075b.COUNT.ordinal();
    }

    public List<com.applovin.impl.mediation.debugger.b.a.a> f() {
        return this.f5063b;
    }

    public List<com.applovin.impl.mediation.debugger.b.a.a> g() {
        return this.f5064d;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediationDebuggerListAdapter";
    }

    public String h() {
        return this.f5065e;
    }

    public String i() {
        return this.f5066f;
    }

    public List<com.applovin.impl.mediation.debugger.b.a.d> j() {
        return this.o;
    }

    public List<com.applovin.impl.mediation.debugger.b.a.d> k() {
        return this.p;
    }

    public List<com.applovin.impl.mediation.debugger.b.c.b> l() {
        return this.q;
    }

    public String m() {
        return this.i.toString();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        List<c> a2;
        if ("privacy_setting_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.t = s();
        } else if ("network_sdk_version_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.v = d(this.l);
            this.w = d(this.m);
        } else {
            if ("live_network_updated".equals(appLovinCommunicatorMessage.getTopic())) {
                a2 = a(appLovinCommunicatorMessage.getMessageData().getString("live_network", null), (String) null);
            } else if (!"test_mode_network_updated".equals(appLovinCommunicatorMessage.getTopic())) {
                return;
            } else {
                a2 = a((String) null, appLovinCommunicatorMessage.getMessageData().getString("test_mode_network", null));
            }
            this.u = a2;
        }
        n();
    }

    public String toString() {
        return "MediationDebuggerListAdapter{isInitialized=" + this.j.get() + "}";
    }
}
