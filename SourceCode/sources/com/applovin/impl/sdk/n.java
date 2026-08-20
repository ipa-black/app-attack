package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.e.i;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdService;
import com.applovin.impl.sdk.network.PostbackServiceImpl;
import com.applovin.impl.sdk.network.d;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinTargetingData;
import com.applovin.sdk.AppLovinUserSegment;
import com.applovin.sdk.AppLovinUserService;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public static n f5853a;

    /* renamed from: b  reason: collision with root package name */
    public static n f5854b;

    /* renamed from: c  reason: collision with root package name */
    protected static Context f5855c;

    /* renamed from: e  reason: collision with root package name */
    private static final long f5856e = System.currentTimeMillis();

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f5857f;

    /* renamed from: g  reason: collision with root package name */
    private static a f5858g;
    private com.applovin.impl.sdk.c.e A;
    private m B;
    private com.applovin.impl.sdk.utils.q C;
    private c D;
    private s E;
    private r F;
    private com.applovin.impl.sdk.d.c G;
    private SessionTracker H;
    private t I;
    private com.applovin.impl.sdk.network.d J;
    private j K;
    private com.applovin.impl.sdk.utils.o L;
    private h M;
    private com.applovin.impl.a.a.a N;
    private com.applovin.impl.sdk.a.f O;
    private u P;
    private ArrayService Q;
    private PostbackServiceImpl R;
    private com.applovin.impl.sdk.network.f S;
    private e T;
    private com.applovin.impl.mediation.f U;
    private com.applovin.impl.mediation.e V;
    private MediationServiceImpl W;
    private com.applovin.mediation.hybridAds.d X;
    private com.applovin.impl.mediation.h Y;
    private com.applovin.impl.mediation.debugger.b Z;
    private w aa;
    private com.applovin.impl.mediation.d ab;
    private com.applovin.impl.mediation.debugger.ui.testmode.c ac;
    private List<MaxAdFormat> ad;
    private final Object ae = new Object();
    private final AtomicBoolean af = new AtomicBoolean(true);
    private boolean ag = false;
    private boolean ah = false;
    private boolean ai = false;
    private boolean aj = false;
    private int ak = 0;
    private AppLovinSdk.SdkInitializationListener al;
    private AppLovinSdk.SdkInitializationListener am;
    private AppLovinSdkConfiguration an;

    /* renamed from: d  reason: collision with root package name */
    protected com.applovin.impl.sdk.c.c f5859d;

    /* renamed from: h  reason: collision with root package name */
    private String f5860h;
    private WeakReference<Activity> i;
    private long j;
    private boolean k;
    private AppLovinSdkSettings l;
    private AppLovinUserSegment m;
    private AppLovinTargetingData n;
    private String o;
    private AppLovinAdServiceImpl p;
    private AppLovinNativeAdService q;
    private EventServiceImpl r;
    private UserServiceImpl s;
    private VariableServiceImpl t;
    private AppLovinSdk u;
    private v v;
    private com.applovin.impl.sdk.e.o w;
    private com.applovin.impl.sdk.network.b x;
    private com.applovin.impl.sdk.d.g y;
    private o z;

    static {
        boolean z;
        try {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.n$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Utils.logJava8MethodReference();
                }
            });
            z = true;
        } finally {
            z = false;
            try {
            } finally {
            }
        }
    }

    public static long A() {
        return f5856e;
    }

    public static boolean B() {
        return f5857f;
    }

    public static Context Q() {
        return f5855c;
    }

    public static a a(Context context) {
        if (f5858g == null) {
            f5858g = new a(context);
        }
        return f5858g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        for (String str : JsonUtils.getList(jSONObject, "error_messages", Collections.emptyList())) {
            v.i("AppLovinSdk", str);
        }
    }

    private void as() {
        this.J.a(new d.a() { // from class: com.applovin.impl.sdk.n.5
            @Override // com.applovin.impl.sdk.network.d.a
            public void a() {
                v unused = n.this.v;
                if (v.a()) {
                    n.this.v.c("AppLovinSdk", "Connected to internet - re-initializing SDK");
                }
                synchronized (n.this.ae) {
                    if (!n.this.ag) {
                        n.this.b();
                    }
                }
                n.this.J.b(this);
            }

            @Override // com.applovin.impl.sdk.network.d.a
            public void b() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MaxAdFormat> b(JSONObject jSONObject) {
        List<String> asList = Arrays.asList(JsonUtils.getString(jSONObject, "eaf", "").split(","));
        ArrayList arrayList = new ArrayList(asList.size());
        for (String str : asList) {
            MaxAdFormat formatFromString = MaxAdFormat.formatFromString(str);
            if (formatFromString != null) {
                arrayList.add(formatFromString);
            }
        }
        return arrayList;
    }

    public String C() {
        return this.f5860h;
    }

    public v D() {
        return this.v;
    }

    public e E() {
        return this.T;
    }

    public com.applovin.impl.mediation.f F() {
        return this.U;
    }

    public com.applovin.impl.mediation.e G() {
        return this.V;
    }

    public MediationServiceImpl H() {
        return this.W;
    }

    public com.applovin.mediation.hybridAds.d I() {
        return this.X;
    }

    public w J() {
        return this.aa;
    }

    public com.applovin.impl.mediation.debugger.b K() {
        return this.Z;
    }

    public com.applovin.impl.mediation.h L() {
        return this.Y;
    }

    public com.applovin.impl.mediation.d M() {
        return this.ab;
    }

    public com.applovin.impl.mediation.debugger.ui.testmode.c N() {
        return this.ac;
    }

    public com.applovin.impl.sdk.c.c O() {
        return this.f5859d;
    }

    public Context P() {
        return f5855c;
    }

    public Activity R() {
        WeakReference<Activity> weakReference = this.i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public boolean S() {
        return this.ai;
    }

    public boolean T() {
        return this.aj;
    }

    public com.applovin.impl.sdk.network.b U() {
        return this.x;
    }

    public com.applovin.impl.sdk.e.o V() {
        return this.w;
    }

    public com.applovin.impl.sdk.d.g W() {
        return this.y;
    }

    public com.applovin.impl.sdk.network.f X() {
        return this.S;
    }

    public o Y() {
        return this.z;
    }

    public m Z() {
        return this.B;
    }

    public <T> T a(com.applovin.impl.sdk.c.b<T> bVar) {
        return (T) this.f5859d.a(bVar);
    }

    public <T> T a(com.applovin.impl.sdk.c.d<T> dVar) {
        return (T) b((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<T>>) dVar, (com.applovin.impl.sdk.c.d<T>) null);
    }

    public <T> T a(String str, T t, Class<?> cls, SharedPreferences sharedPreferences) {
        return (T) com.applovin.impl.sdk.c.e.a(str, t, cls, sharedPreferences);
    }

    public void a() {
        synchronized (this.ae) {
            if (!this.ag && !this.ah) {
                b();
            }
        }
    }

    public void a(long j) {
        this.B.a(j);
    }

    public void a(SharedPreferences sharedPreferences) {
        this.A.a(sharedPreferences);
    }

    public void a(com.applovin.impl.mediation.a.f fVar) {
        if (this.w.a()) {
            return;
        }
        List<String> b2 = b(com.applovin.impl.sdk.c.a.f5591a);
        if (b2.size() <= 0 || !this.V.b().keySet().containsAll(b2)) {
            return;
        }
        if (v.a()) {
            this.v.b("AppLovinSdk", "All required adapters initialized");
        }
        this.w.e();
        j();
    }

    public <T> void a(com.applovin.impl.sdk.c.d<T> dVar, T t) {
        this.A.a(dVar, t);
    }

    public <T> void a(com.applovin.impl.sdk.c.d<T> dVar, T t, SharedPreferences sharedPreferences) {
        this.A.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<T>>) dVar, (com.applovin.impl.sdk.c.d<T>) t, sharedPreferences);
    }

    public void a(final AppLovinSdk.SdkInitializationListener sdkInitializationListener) {
        if (!d()) {
            this.al = sdkInitializationListener;
        } else if (sdkInitializationListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.n.1
                @Override // java.lang.Runnable
                public void run() {
                    sdkInitializationListener.onSdkInitialized(n.this.an);
                }
            });
        }
    }

    public void a(AppLovinSdk appLovinSdk) {
        this.u = appLovinSdk;
    }

    public void a(String str) {
        v.f("AppLovinSdk", "Setting plugin version: " + str);
        this.f5859d.a(com.applovin.impl.sdk.c.b.dI, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0299, code lost:
        if (com.applovin.sdk.AppLovinSdk.VERSION_CODE > com.applovin.impl.sdk.utils.Utils.toVersionCode(r8)) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r8, com.applovin.sdk.AppLovinSdkSettings r9, android.content.Context r10) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.n.a(java.lang.String, com.applovin.sdk.AppLovinSdkSettings, android.content.Context):void");
    }

    public <T> void a(String str, T t, SharedPreferences.Editor editor) {
        this.A.a(str, (String) t, editor);
    }

    public void a(Map<String, List<?>> map) {
        this.Z.a(map);
    }

    public void a(boolean z) {
        synchronized (this.ae) {
            this.ag = false;
            this.ah = z;
        }
        if (this.f5859d == null || this.w == null) {
            return;
        }
        List<String> b2 = b(com.applovin.impl.sdk.c.a.f5591a);
        if (b2.isEmpty()) {
            this.w.e();
            j();
            return;
        }
        long longValue = ((Long) a(com.applovin.impl.sdk.c.a.f5592b)).longValue();
        com.applovin.impl.sdk.e.z zVar = new com.applovin.impl.sdk.e.z(this, true, new Runnable() { // from class: com.applovin.impl.sdk.n.2
            @Override // java.lang.Runnable
            public void run() {
                if (n.this.w.a()) {
                    return;
                }
                v unused = n.this.v;
                if (v.a()) {
                    n.this.v.b("AppLovinSdk", "Timing out adapters init...");
                }
                n.this.w.e();
                n.this.j();
            }
        });
        if (v.a()) {
            this.v.b("AppLovinSdk", "Waiting for required adapters to init: " + b2 + " - timing out in " + longValue + "ms...");
        }
        this.w.a(zVar, o.a.MEDIATION_TIMEOUT, longValue, true);
    }

    public boolean a(com.applovin.impl.sdk.c.b<String> bVar, MaxAdFormat maxAdFormat) {
        return c(bVar).contains(maxAdFormat);
    }

    public boolean a(MaxAdFormat maxAdFormat) {
        List<MaxAdFormat> list = this.ad;
        return (list == null || list.size() <= 0 || this.ad.contains(maxAdFormat)) ? false : true;
    }

    public PostbackServiceImpl aa() {
        return this.R;
    }

    public AppLovinSdk ab() {
        return this.u;
    }

    public c ac() {
        return this.D;
    }

    public s ad() {
        return this.E;
    }

    public r ae() {
        return this.F;
    }

    public com.applovin.impl.sdk.d.c af() {
        return this.G;
    }

    public SessionTracker ag() {
        return this.H;
    }

    public t ah() {
        return this.I;
    }

    public a ai() {
        return f5858g;
    }

    public j aj() {
        return this.K;
    }

    public com.applovin.impl.sdk.utils.o ak() {
        return this.L;
    }

    public h al() {
        return this.M;
    }

    public AppLovinBroadcastManager am() {
        return AppLovinBroadcastManager.getInstance(f5855c);
    }

    public com.applovin.impl.a.a.a an() {
        return this.N;
    }

    public com.applovin.impl.sdk.a.f ao() {
        return this.O;
    }

    public u ap() {
        return this.P;
    }

    public ArrayService aq() {
        return this.Q;
    }

    public Activity ar() {
        Activity a2 = a(f5855c).a();
        return a2 != null ? a2 : R();
    }

    public <T> T b(com.applovin.impl.sdk.c.d<T> dVar, T t) {
        return (T) this.A.b(dVar, t);
    }

    public <T> T b(com.applovin.impl.sdk.c.d<T> dVar, T t, SharedPreferences sharedPreferences) {
        return (T) this.A.b((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<T>>) dVar, (com.applovin.impl.sdk.c.d<T>) t, sharedPreferences);
    }

    public List<String> b(com.applovin.impl.sdk.c.b<String> bVar) {
        return this.f5859d.b(bVar);
    }

    public void b() {
        synchronized (this.ae) {
            this.ag = true;
            V().d();
            int i = this.ak + 1;
            this.ak = i;
            V().a(new com.applovin.impl.sdk.e.i(i, this, new i.a() { // from class: com.applovin.impl.sdk.n.3
                @Override // com.applovin.impl.sdk.e.i.a
                public void a(JSONObject jSONObject) {
                    boolean z = jSONObject.length() > 0;
                    com.applovin.impl.sdk.utils.i.d(jSONObject, n.this);
                    com.applovin.impl.sdk.utils.i.c(jSONObject, n.this);
                    f.a(n.this);
                    com.applovin.impl.sdk.utils.i.e(jSONObject, n.this);
                    com.applovin.impl.sdk.utils.i.a(jSONObject, z, n.this);
                    com.applovin.impl.mediation.c.b.a(jSONObject, n.this);
                    com.applovin.impl.mediation.c.b.b(jSONObject, n.this);
                    n.this.K().a(JsonUtils.getBoolean(jSONObject, "smd", false).booleanValue(), JsonUtils.getInt(jSONObject, "smd_delay_sec", 2));
                    n nVar = n.this;
                    nVar.ad = nVar.b(jSONObject);
                    if (z) {
                        n.this.an = new SdkConfigurationImpl(CollectionUtils.explode(JsonUtils.getString(jSONObject, "eaaui", "")), n.this);
                    }
                    com.applovin.impl.sdk.utils.i.f(jSONObject, n.this);
                    n.this.N().a(jSONObject);
                    n.this.a(jSONObject);
                    n.this.V().a((com.applovin.impl.sdk.e.a) new com.applovin.impl.sdk.e.n(n.this));
                }
            }), o.a.MAIN, ((Integer) a(com.applovin.impl.sdk.c.b.ee)).intValue());
        }
    }

    public <T> void b(com.applovin.impl.sdk.c.d<T> dVar) {
        this.A.a(dVar);
    }

    public void b(String str) {
        if (v.a()) {
            this.v.b("AppLovinSdk", "Setting user id: " + str);
        }
        if (StringUtils.isValidString(str) && str.length() > Utils.kilobytesToByes(8)) {
            v.i("AppLovinSdk", "Provided user id longer than supported (" + str.length() + " bytes, " + Utils.kilobytesToByes(8) + " maximum)");
        }
        this.C.a(str);
    }

    public List<MaxAdFormat> c(com.applovin.impl.sdk.c.b<String> bVar) {
        return this.f5859d.c(bVar);
    }

    public void c(String str) {
        this.o = str;
        b(com.applovin.impl.sdk.c.d.A);
    }

    public boolean c() {
        boolean z;
        synchronized (this.ae) {
            z = this.ag;
        }
        return z;
    }

    public boolean d() {
        boolean z;
        synchronized (this.ae) {
            z = this.ah;
        }
        return z;
    }

    public boolean e() {
        return this.k;
    }

    public boolean f() {
        return StringUtils.containsIgnoreCase(u(), AppLovinMediationProvider.MAX);
    }

    public boolean g() {
        return Utils.checkClassExistence("com.unity3d.player.UnityPlayerActivity");
    }

    public void h() {
        String str = (String) this.A.b(com.applovin.impl.sdk.c.d.f5610c, null);
        if (StringUtils.isValidString(str)) {
            if (AppLovinSdk.VERSION_CODE < Utils.toVersionCode(str)) {
                v.i("AppLovinSdk", "Current version (" + AppLovinSdk.VERSION + ") is older than earlier installed version (" + str + "), which may cause compatibility issues.");
            }
        }
    }

    public void i() {
        this.K.a();
    }

    public void j() {
        final AppLovinSdk.SdkInitializationListener sdkInitializationListener = this.al;
        if (sdkInitializationListener != null) {
            if (d()) {
                this.al = null;
                this.am = null;
                this.V.a(MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS);
            } else if (this.am == sdkInitializationListener) {
                return;
            } else {
                this.V.a(MaxAdapter.InitializationStatus.INITIALIZED_FAILURE);
                if (((Boolean) a(com.applovin.impl.sdk.c.b.am)).booleanValue()) {
                    this.al = null;
                } else {
                    this.am = sdkInitializationListener;
                }
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.n.4
                @Override // java.lang.Runnable
                public void run() {
                    v unused = n.this.v;
                    if (v.a()) {
                        n.this.v.b("AppLovinSdk", "Calling back publisher's initialization completion handler...");
                    }
                    sdkInitializationListener.onSdkInitialized(n.this.an);
                }
            }, Math.max(0L, ((Long) a(com.applovin.impl.sdk.c.b.an)).longValue()));
        }
    }

    public void k() {
        v.i("AppLovinSdk", "Resetting SDK state...");
        long b2 = this.y.b(com.applovin.impl.sdk.d.f.i);
        this.f5859d.c();
        this.f5859d.a();
        this.y.a();
        this.y.b(com.applovin.impl.sdk.d.f.i, b2 + 1);
        if (this.af.compareAndSet(true, false)) {
            b();
        } else {
            this.af.set(true);
        }
    }

    public void l() {
        a((Map<String, List<?>>) null);
    }

    public void m() {
        this.N.b();
    }

    public String n() {
        return this.C.a();
    }

    public String o() {
        return this.C.b();
    }

    public String p() {
        return this.C.c();
    }

    public AppLovinSdkSettings q() {
        return this.l;
    }

    public AppLovinUserSegment r() {
        return this.m;
    }

    public AppLovinTargetingDataImpl s() {
        return (AppLovinTargetingDataImpl) this.n;
    }

    public AppLovinSdkConfiguration t() {
        return this.an;
    }

    public String toString() {
        return "CoreSdk{sdkKey='" + this.f5860h + "', enabled=" + this.ah + ", isFirstSession=" + this.ai + '}';
    }

    public String u() {
        String str = (String) a(com.applovin.impl.sdk.c.d.A);
        return StringUtils.isValidString(str) ? str : this.o;
    }

    public AppLovinAdServiceImpl v() {
        return this.p;
    }

    public AppLovinNativeAdService w() {
        return this.q;
    }

    public AppLovinEventService x() {
        return this.r;
    }

    public AppLovinUserService y() {
        return this.s;
    }

    public VariableServiceImpl z() {
        return this.t;
    }
}
