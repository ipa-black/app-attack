package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.Native;
import com.appodeal.ads.l;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.modules.libs.network.NetworkStateObserver;
import com.appodeal.ads.modules.libs.network.NetworkStatus;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.r;
import com.appodeal.ads.s;
import com.appodeal.ads.segments.h;
import com.appodeal.ads.segments.k;
import com.appodeal.ads.segments.n;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.app.AppState;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class u<AdObjectType extends l, AdRequestType extends r<AdObjectType>, RequestParamsType extends s> {
    public static final /* synthetic */ boolean E = true;
    public float A;
    public int B;
    public final a C;
    public RequestParamsType D;

    /* renamed from: a  reason: collision with root package name */
    public final LinkedBlockingQueue f7686a = new LinkedBlockingQueue();

    /* renamed from: b  reason: collision with root package name */
    public ThreadPoolExecutor f7687b;

    /* renamed from: c  reason: collision with root package name */
    public final NetworkStatus f7688c;

    /* renamed from: d  reason: collision with root package name */
    public final b0<AdObjectType, AdRequestType, ?> f7689d;

    /* renamed from: e  reason: collision with root package name */
    public final i f7690e;

    /* renamed from: f  reason: collision with root package name */
    public final AdType f7691f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f7692g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7693h;
    public boolean i;
    public boolean j;
    public boolean k;
    public com.appodeal.ads.segments.g l;
    public String m;
    public com.appodeal.ads.waterfall_filter.a n;
    public long o;
    public Integer p;
    public int q;
    public String r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public AdRequestType x;
    public AdRequestType y;
    public float z;

    /* loaded from: classes.dex */
    public class a extends com.appodeal.ads.utils.c0 {
        public a() {
        }

        @Override // com.appodeal.ads.utils.c0
        public final void a(Activity activity, AppState appState) {
            u.this.a(activity, appState);
        }

        @Override // com.appodeal.ads.utils.c0
        public final void a(Configuration configuration) {
            u.this.a(configuration);
        }
    }

    /* loaded from: classes.dex */
    public class b implements n.a {
        public b() {
        }

        @Override // com.appodeal.ads.segments.n.a
        public final void a() {
            u.this.j = true;
        }
    }

    /* loaded from: classes.dex */
    public class c implements h.a {
        public c() {
        }

        @Override // com.appodeal.ads.segments.h.a
        public final String a() {
            return u.this.m;
        }

        @Override // com.appodeal.ads.segments.h.a
        public final com.appodeal.ads.segments.g b() {
            return u.this.l;
        }

        @Override // com.appodeal.ads.segments.h.a
        public final void a(com.appodeal.ads.segments.g gVar) {
            u uVar = u.this;
            uVar.l = gVar;
            uVar.m = null;
        }
    }

    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ r f7697a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ l f7698b;

        public d(r rVar, l lVar) {
            this.f7697a = rVar;
            this.f7698b = lVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            u.this.f7689d.a((b0<AdObjectType, AdRequestType, ?>) this.f7697a, (r) this.f7698b, LoadingError.TimeoutError);
        }
    }

    public u(b0<AdObjectType, AdRequestType, ?> b0Var, AdType adType, com.appodeal.ads.segments.g gVar) {
        NetworkStatus networkStatus = NetworkStatus.INSTANCE;
        this.f7688c = networkStatus;
        c();
        this.f7692g = new ArrayList();
        this.f7693h = false;
        this.i = false;
        this.j = false;
        this.k = true;
        this.o = 0L;
        this.p = null;
        this.q = 0;
        this.s = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.z = 1.2f;
        this.A = 2.0f;
        this.B = 5000;
        this.C = new a();
        this.D = null;
        this.f7689d = b0Var;
        this.f7691f = adType;
        this.l = gVar;
        this.f7690e = i.a(adType);
        b0Var.a(this);
        com.appodeal.ads.segments.n.a(new b());
        com.appodeal.ads.segments.h.a(new c());
        networkStatus.subscribe(new NetworkStateObserver.ConnectionListener() { // from class: com.appodeal.ads.u$$ExternalSyntheticLambda0
            @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver.ConnectionListener
            public final void onConnectionUpdated(boolean z) {
                u.this.a(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z) {
        if (z) {
            t();
        }
    }

    public int a(AdRequestType adrequesttype, AdObjectType adobjecttype, boolean z) {
        return 1;
    }

    public abstract l a(r rVar, AdNetwork adNetwork, d0 d0Var);

    public abstract AdRequestType a(RequestParamsType requestparamstype);

    public void a(Activity activity, AppState appState) {
    }

    public void a(Configuration configuration) {
    }

    public final void a(com.appodeal.ads.segments.g gVar) {
        this.l = gVar;
    }

    public final void a(String str) {
        this.m = str;
    }

    public abstract void a(JSONObject jSONObject);

    public boolean a() {
        return !(this instanceof Native.a);
    }

    public boolean a(AdNetwork adNetwork, JSONObject jSONObject, String str, boolean z) {
        return false;
    }

    public boolean a(AdRequestType adrequesttype) {
        return !adrequesttype.f7334b.isEmpty();
    }

    public boolean a(AdRequestType adrequesttype, int i) {
        return false;
    }

    public boolean a(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        return adrequesttype.a(adobjecttype, this.l, this.f7691f);
    }

    public void b() {
        for (int i = 0; i < this.f7692g.size(); i++) {
            r rVar = (r) this.f7692g.get(i);
            if (rVar != null && !rVar.E && rVar != this.x && rVar != this.y) {
                rVar.c();
            }
        }
    }

    public abstract void b(Context context);

    public final void c() {
        int availableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.f7687b = new ThreadPoolExecutor(availableProcessors, availableProcessors, 0L, TimeUnit.MICROSECONDS, this.f7686a);
    }

    public final void c(Context context) {
        if (q4.f7304b) {
            this.u = true;
        } else {
            b(context);
        }
    }

    public final AdType d() {
        return this.f7691f;
    }

    public final void d(Context context) {
        AdRequestType f2 = f();
        if (f2 == null || !k()) {
            if (f2 == null || f2.b() || this.j) {
                c(context);
            } else if (f2.u) {
                this.f7689d.g(f2, f2.s);
            }
        }
    }

    public final com.appodeal.ads.segments.g e() {
        com.appodeal.ads.segments.g gVar = this.l;
        return gVar == null ? com.appodeal.ads.segments.h.a(RewardedVideo.VIDEO_MODE_DEFAULT) : gVar;
    }

    public final AdRequestType f() {
        r<AdObjectType> rVar;
        if (this.f7692g.isEmpty()) {
            rVar = null;
        } else {
            ArrayList arrayList = this.f7692g;
            rVar = (r) arrayList.get(arrayList.size() - 1);
        }
        while (rVar != null) {
            r<AdObjectType> rVar2 = rVar.H;
            if (rVar2 == null || rVar2.t < rVar.t) {
                break;
            }
            rVar = rVar2;
        }
        return rVar;
    }

    public final i g() {
        return this.f7690e;
    }

    public final double h() {
        k.a aVar = com.appodeal.ads.segments.n.c().f7529b;
        AdType adType = this.f7691f;
        JSONObject optJSONObject = aVar.f7533a.optJSONObject("price_floor");
        if (optJSONObject != null) {
            return optJSONObject.optDouble(com.appodeal.ads.segments.m.a(adType), -1.0d);
        }
        return -1.0d;
    }

    public abstract String i();

    public final void j() {
        if (this.i && k()) {
            AdRequestType f2 = f();
            if (f2 == null || (f2.b() && !f2.F)) {
                c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
            }
        }
    }

    public boolean k() {
        return this.k;
    }

    public boolean l() {
        return !(this instanceof Native.a);
    }

    public final boolean m() {
        return this.f7693h;
    }

    public final boolean n() {
        return com.appodeal.ads.segments.n.c().f7529b.a(this.f7691f);
    }

    public final boolean o() {
        return this.i;
    }

    public final boolean p() {
        return this.j;
    }

    public final void q() {
        if (this.i) {
            if (u() || (!this.w && k())) {
                this.w = true;
                this.u = false;
                s();
            }
        }
    }

    public final Long r() {
        AdRequestType f2 = f();
        return Long.valueOf(f2 != null ? f2.x().longValue() : -1L);
    }

    public void s() {
        c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
    }

    public void t() {
        if (this.v && k()) {
            this.v = false;
            c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
        }
    }

    public boolean u() {
        return this.u;
    }

    public boolean v() {
        return !(this instanceof Native.a);
    }

    /* loaded from: classes.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        public final AdRequestType f7700a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7701b;

        /* loaded from: classes.dex */
        public class a implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                TestActivity testActivity = q4.f7306d;
                testActivity.d();
                testActivity.b();
            }
        }

        /* loaded from: classes.dex */
        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                q4.k().a(u.this.f7691f);
            }
        }

        /* loaded from: classes.dex */
        public class c implements NetworkInitializationListener {
            @Override // com.appodeal.ads.NetworkInitializationListener
            public final void onInitializationFailed(LoadingError loadingError) {
            }

            @Override // com.appodeal.ads.NetworkInitializationListener
            public final void onInitializationFinished(Object obj) {
            }
        }

        public e(AdRequestType adrequesttype, String str) {
            this.f7700a = adrequesttype;
            this.f7701b = str;
        }

        public final void a(LoadingError loadingError) {
            u.this.f7689d.b(this.f7700a, null, null, loadingError);
        }

        public final void a(JSONObject jSONObject) {
            try {
                if (jSONObject == null) {
                    a(LoadingError.RequestError);
                    return;
                }
                if (!u.this.f7693h && !jSONObject.optBoolean(this.f7701b) && !com.appodeal.ads.segments.n.c().f7529b.a(u.this.f7691f)) {
                    if (jSONObject.has("ads") && jSONObject.has("main_id")) {
                        u.this.o = System.currentTimeMillis();
                        u.this.q = jSONObject.optInt("afd", 0);
                        if (jSONObject.has("main_id")) {
                            u.this.r = jSONObject.getString("main_id");
                        }
                        if (jSONObject.has("rri")) {
                            u.this.s = jSONObject.optBoolean("rri");
                        }
                        if (jSONObject.has("waterfall_cache_timeout")) {
                            u.this.p = Integer.valueOf(jSONObject.getInt("waterfall_cache_timeout"));
                        }
                        u.this.a(jSONObject);
                        r0.c(jSONObject);
                        u uVar = u.this;
                        uVar.n = new com.appodeal.ads.waterfall_filter.a(jSONObject, uVar.f7691f);
                        u.this.n.a((r) null);
                        this.f7700a.a(u.this.n);
                        AdRequestType adrequesttype = this.f7700a;
                        adrequesttype.j = u.this.r;
                        q4 q4Var = q4.f7303a;
                        adrequesttype.k = Long.valueOf(com.appodeal.ads.segments.n.c().f7528a);
                        AdRequestType adrequesttype2 = this.f7700a;
                        if (adrequesttype2.f7340h) {
                            if (adrequesttype2.i && q4.f7306d != null) {
                                h5.f6714a.post(new a());
                                return;
                            }
                            h5.f6714a.post(new b());
                            AdNetwork b2 = u.this.f7690e.b(Constants.DEBUG_INTERSTITIAL);
                            if (b2 != null) {
                                b2.initialize(com.appodeal.ads.context.b.f6583b, new d0(), new h(this.f7700a, j4.f6751a), new c());
                                return;
                            }
                            return;
                        }
                        u.this.b((u) adrequesttype2);
                        return;
                    }
                    if (jSONObject.has("message")) {
                        u.this.a(LogConstants.EVENT_REQUEST_FAILED, jSONObject.getString("message"));
                    }
                    u.this.f7689d.b(this.f7700a, null, null, LoadingError.RequestError);
                    return;
                }
                u uVar2 = u.this;
                uVar2.f7693h = true;
                uVar2.a(LogConstants.EVENT_REQUEST_FAILED, LogConstants.MSG_AD_TYPE_DISABLED);
            } catch (Exception e2) {
                Log.log(e2);
                u.this.f7689d.b(this.f7700a, null, null, LoadingError.InternalError);
            }
        }
    }

    public static boolean b(r rVar, l lVar) {
        ArrayList arrayList;
        ArrayList arrayList2;
        JSONObject jSONObject = (!rVar.v() || (arrayList2 = rVar.f7334b) == null || arrayList2.size() <= 0) ? null : (JSONObject) rVar.f7334b.get(0);
        if (jSONObject == null && (arrayList = rVar.f7333a) != null && arrayList.size() > 0) {
            jSONObject = (JSONObject) rVar.f7333a.get(0);
        }
        return jSONObject != null && jSONObject.optDouble("ecpm", 0.0d) > lVar.f6826c.getEcpm();
    }

    public final synchronized void a(Context context) {
        if (this.i) {
            return;
        }
        try {
            com.appodeal.ads.utils.app.b.All.a(this.C);
            this.f7690e.a(context);
            this.i = true;
            Log.log(this.f7691f.getDisplayName(), LogConstants.EVENT_INITIALIZE, "done");
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(AdRequestType adrequesttype, int i, boolean z, boolean z2) {
        b0<AdObjectType, AdRequestType, ?> b0Var;
        LoadingError loadingError;
        l h2;
        if (!this.f7688c.isConnected()) {
            this.f7689d.b(adrequesttype, null, null, LoadingError.ConnectionError);
        } else if (adrequesttype != 0 && !a((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype, i)) {
            JSONObject a2 = adrequesttype.a(i, z, z2);
            if (a2 == null) {
                this.f7689d.a((b0<AdObjectType, AdRequestType, ?>) adrequesttype, (AdRequestType) null, (f5) null, LoadingError.InternalError);
                return;
            }
            d0 a3 = d0.a(a2, z);
            if (TextUtils.isEmpty(a3.getId())) {
                this.f7689d.a((b0<AdObjectType, AdRequestType, ?>) adrequesttype, (AdRequestType) null, LoadingError.IncorrectAdunit);
                return;
            }
            adrequesttype.a(a3);
            try {
                if (l() && (h2 = adrequesttype.h()) != null && Double.compare(h2.getEcpm(), a3.getEcpm()) >= 0) {
                    a(LogConstants.EVENT_LOAD_SKIPPED, a3, (LoadingError) null);
                    adrequesttype.b(h2);
                    adrequesttype.b(a3);
                    h2.b();
                    this.f7689d.n(adrequesttype, h2);
                    return;
                }
                JSONArray optJSONArray = a2.optJSONArray("target_placements");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    int i2 = 0;
                    for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                        if (adrequesttype.i().containsKey(optJSONArray.optString(i3))) {
                            i2++;
                        }
                    }
                    if (i2 == optJSONArray.length()) {
                        b((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype);
                        return;
                    }
                }
                AdNetwork b2 = this.f7690e.b(a3.getStatus());
                if (a(b2, a2, a3.getId(), z2)) {
                    adrequesttype.b(a3);
                    return;
                }
                if (b2 != null) {
                    l a4 = a(adrequesttype, b2, a3);
                    if (a4 != null) {
                        if (a()) {
                            a4.a(a2);
                        }
                        if (!a((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype, (AdRequestType) a4)) {
                            this.f7689d.a((b0<AdObjectType, AdRequestType, ?>) adrequesttype, (AdRequestType) a4, (f5) a3, LoadingError.NoFill);
                            return;
                        }
                        if (z) {
                            adrequesttype.c(a4);
                        } else {
                            adrequesttype.b(a4);
                        }
                        b2.setLogging(q4.i() == Log.LogLevel.verbose);
                        adrequesttype.a(a4);
                        v vVar = new v(this, adrequesttype, a4, a((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype, (AdRequestType) a4, z), a4, adrequesttype);
                        if (!z2 && !adrequesttype.t() && a4.isAsync()) {
                            this.f7687b.submit(vVar);
                            if (adrequesttype.a() > 0) {
                                b((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype);
                            }
                        } else {
                            h5.f6714a.post(vVar);
                        }
                        h5.a(new d(adrequesttype, a4), a4.getLoadingTimeout());
                        return;
                    }
                    b0Var = this.f7689d;
                    loadingError = LoadingError.AdTypeNotSupportedInAdapter;
                } else {
                    b0Var = this.f7689d;
                    loadingError = LoadingError.AdapterNotFound;
                }
                b0Var.a((b0<AdObjectType, AdRequestType, ?>) adrequesttype, (AdRequestType) null, a3, loadingError);
            } catch (Exception e2) {
                Log.log(e2);
                this.f7689d.a((b0<AdObjectType, AdRequestType, ?>) adrequesttype, (AdRequestType) null, a3, LoadingError.InternalError);
            }
        }
    }

    public final void b(AdRequestType adrequesttype) {
        if (a((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype)) {
            q4.k().a(this.f7691f);
            a((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype, 0, true, false);
        } else if (!(!adrequesttype.f7333a.isEmpty())) {
            this.f7689d.b(adrequesttype, null, null, LoadingError.NoFill);
        } else {
            q4.k().a(this.f7691f);
            a((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype, 0, false, false);
        }
    }

    public final void a(String str, AdUnit adUnit, LoadingError loadingError) {
        String format;
        q4 q4Var = q4.f7303a;
        if (r0.f7344d == Log.LogLevel.none) {
            return;
        }
        if (adUnit == null) {
            format = loadingError == null ? null : String.format("%s (%s)", loadingError.toString().toUpperCase(), Integer.valueOf(loadingError.getCode()));
        } else {
            String id = adUnit.getId();
            if (!TextUtils.isEmpty(id) && TextUtils.getTrimmedLength(id) > 5) {
                id = id.substring(0, 5) + APSSharedUtil.TRUNCATE_SEPARATOR;
            }
            String str2 = id;
            format = loadingError == null ? String.format(Locale.ENGLISH, "%s - eCPM: %.2f, precache: %s, expTime: %s, id: %s", n5.a(adUnit.getStatus()), Double.valueOf(adUnit.getEcpm()), Boolean.valueOf(adUnit.isPrecache()), Long.valueOf(adUnit.getExpTime()), str2) : String.format(Locale.ENGLISH, "%s - %s (%s) - eCPM: %.2f, precache: %s, expTime: %s, id: %s", n5.a(adUnit.getStatus()), loadingError.toString().toUpperCase(), Integer.valueOf(loadingError.getCode()), Double.valueOf(adUnit.getEcpm()), Boolean.valueOf(adUnit.isPrecache()), Long.valueOf(adUnit.getExpTime()), str2);
        }
        a(str, format);
    }

    public final void a(String str, String str2) {
        Log.log(this.f7691f.getDisplayName(), str, str2);
    }

    public void a(Context context, RequestParamsType requestparamstype) {
        q4.f7303a.getClass();
        a(LogConstants.EVENT_REQUEST_FAILED, String.format("paused: %s, disabled: %s, disabled by segment: %s", Boolean.valueOf(q4.p()), Boolean.valueOf(this.f7693h), Boolean.valueOf(com.appodeal.ads.segments.n.c().f7529b.a(this.f7691f))));
    }

    public final void b(Context context, RequestParamsType requestparamstype) {
        AdRequestType adrequesttype;
        r rVar;
        this.D = requestparamstype;
        try {
            if (!this.i) {
                a(LogConstants.EVENT_REQUEST_FAILED, LogConstants.MSG_NOT_INITIALIZED);
            } else if (!this.f7688c.isConnected()) {
                this.v = true;
                this.f7689d.b(null, null, null, LoadingError.ConnectionError);
            } else {
                q4.f7303a.getClass();
                if (!q4.p() && !this.f7693h && !com.appodeal.ads.segments.n.c().c().a(this.f7691f)) {
                    AdRequestType f2 = f();
                    if (f2 == null) {
                        Boolean valueOf = Boolean.valueOf(requestparamstype.b());
                        Boolean bool = Boolean.FALSE;
                        a(LogConstants.EVENT_CACHE, String.format("isDebug: %s, isLoaded: %s, isLoading: %s", valueOf, bool, bool));
                    } else {
                        a(LogConstants.EVENT_CACHE, String.format("isDebug: %s, isLoaded: %s, isLoading: %s", Boolean.valueOf(requestparamstype.b()), Boolean.valueOf(f2.p()), Boolean.valueOf(f2.u())));
                        if (v()) {
                            com.appodeal.ads.utils.o.b(f2.h());
                            com.appodeal.ads.utils.o.a(f2.i().values());
                        }
                    }
                    adrequesttype = a((u<AdObjectType, AdRequestType, RequestParamsType>) requestparamstype);
                    try {
                        this.f7692g.add(adrequesttype);
                        this.x = adrequesttype;
                        adrequesttype.z();
                        adrequesttype.b(this.r);
                        com.appodeal.ads.segments.n.a(context);
                        adrequesttype.a(Long.valueOf(q4.l()));
                        if (!adrequesttype.q()) {
                            long j = this.o;
                            if (j != 0 && !r0.a(j, this.p.intValue())) {
                                com.appodeal.ads.waterfall_filter.a aVar = this.n;
                                if (aVar != null) {
                                    String o = adrequesttype.o();
                                    if (!TextUtils.isEmpty(o)) {
                                        if (!E && o == null) {
                                            throw new AssertionError();
                                        }
                                        for (int size = this.f7692g.size() - 1; size >= 0; size--) {
                                            rVar = (r) this.f7692g.get(size);
                                            if (rVar.B && o.equals(rVar.j)) {
                                                break;
                                            }
                                        }
                                    }
                                    rVar = null;
                                    aVar.a(rVar);
                                    adrequesttype.a(this.n);
                                }
                                this.j = false;
                                b((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype);
                                b();
                                return;
                            }
                        }
                        k0.a(context, (u<?, ?, ?>) this, (r<?>) adrequesttype, (s<?>) requestparamstype, (u<?, ?, ?>.e) new e(adrequesttype, i()));
                        b();
                        return;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        Log.log(e);
                        this.f7689d.b(adrequesttype, null, null, LoadingError.InternalError);
                        return;
                    }
                }
                a(context, (Context) requestparamstype);
            }
        } catch (Exception e3) {
            e = e3;
            adrequesttype = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(AdRequestType adrequesttype, JSONObject jSONObject) {
        AdRequestType adrequesttype2;
        AdObjectType adobjecttype;
        AdRequestType adrequesttype3;
        if (jSONObject != null) {
            try {
                if (!adrequesttype.F && !adrequesttype.C && (adobjecttype = adrequesttype.s) != null) {
                    AdRequestType adrequesttype4 = adobjecttype.f6824a;
                    if (!adrequesttype4.F && !adrequesttype4.C && (adrequesttype3 = this.x) != null && adrequesttype3 == adrequesttype) {
                        if (jSONObject.has("ads") && jSONObject.has("main_id")) {
                            adrequesttype2 = a((u<AdObjectType, AdRequestType, RequestParamsType>) this.D);
                            try {
                                adrequesttype2.H = adrequesttype;
                                this.f7692g.add(adrequesttype2);
                                this.x = adrequesttype2;
                                adrequesttype2.a(true, false);
                                com.appodeal.ads.waterfall_filter.a aVar = new com.appodeal.ads.waterfall_filter.a(jSONObject, adrequesttype.n());
                                aVar.a(adrequesttype);
                                com.appodeal.ads.waterfall_filter.d dVar = aVar.f7884e;
                                adrequesttype2.f7333a = dVar.f7892b;
                                adrequesttype2.f7334b = dVar.f7891a;
                                adrequesttype2.j = jSONObject.getString("main_id");
                                adrequesttype2.k = Long.valueOf(com.appodeal.ads.segments.n.c().f7528a);
                                b((u<AdObjectType, AdRequestType, RequestParamsType>) adrequesttype2);
                                return;
                            } catch (Throwable th) {
                                th = th;
                                Log.log(th);
                                this.f7689d.b(adrequesttype2, null, null, LoadingError.InternalError);
                                return;
                            }
                        }
                        if (jSONObject.has("message")) {
                            a(LogConstants.EVENT_REQUEST_FAILED, jSONObject.getString("message"));
                        }
                        this.f7689d.a((b0<AdObjectType, AdRequestType, ?>) adrequesttype);
                        a(LogConstants.EVENT_REQUEST_FAILED, "skip postbid request");
                        return;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                adrequesttype2 = null;
            }
        }
        this.f7689d.a((b0<AdObjectType, AdRequestType, ?>) adrequesttype);
        a(LogConstants.EVENT_REQUEST_FAILED, "skip postbid request");
    }
}
