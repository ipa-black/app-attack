package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.a;
import com.ironsource.mediationsdk.C1349f;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.M;
import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener;
import com.ironsource.mediationsdk.sdk.InitializationListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoManualListener;
import com.ironsource.mediationsdk.server.HttpFunctions;
import com.ironsource.mediationsdk.server.ServerURL;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceAES;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.k;
import com.ironsource.mediationsdk.utils.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class H implements com.ironsource.mediationsdk.utils.i {
    private static boolean ap = false;
    S A;
    P B;
    com.ironsource.mediationsdk.adunit.c.g C;
    com.ironsource.mediationsdk.adunit.c.h D;
    boolean E;
    boolean F;
    boolean G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    int L;
    C1362s M;
    C1360q N;
    com.ironsource.mediationsdk.impressionData.a O;
    private final String P;
    private final String Q;
    private AbstractAdapter R;
    private AtomicBoolean S;
    private final Object T;
    private AtomicBoolean U;
    private boolean V;
    private List<IronSource.AD_UNIT> W;
    private Set<IronSource.AD_UNIT> X;
    private Set<IronSource.AD_UNIT> Y;
    private boolean Z;

    /* renamed from: a  reason: collision with root package name */
    final String f10670a;
    private final String aa;
    private boolean ab;
    private boolean ac;
    private Boolean ad;
    private IronSourceBannerLayout ae;
    private String af;
    private InitializationListener ag;
    private AtomicBoolean ah;
    private boolean ai;
    private CopyOnWriteArraySet<String> aj;
    private CopyOnWriteArraySet<String> ak;
    private CopyOnWriteArraySet<String> al;
    private C1364u am;
    private com.ironsource.d.b an;
    private ai ao;

    /* renamed from: b  reason: collision with root package name */
    ab f10671b;

    /* renamed from: c  reason: collision with root package name */
    E f10672c;

    /* renamed from: d  reason: collision with root package name */
    O f10673d;

    /* renamed from: e  reason: collision with root package name */
    C1354k f10674e;

    /* renamed from: f  reason: collision with root package name */
    IronSourceLoggerManager f10675f;

    /* renamed from: g  reason: collision with root package name */
    com.ironsource.mediationsdk.sdk.i f10676g;

    /* renamed from: h  reason: collision with root package name */
    com.ironsource.mediationsdk.logger.b f10677h;
    com.ironsource.mediationsdk.utils.l i;
    public String j;
    public String k;
    String l;
    public String m;
    public Map<String, String> n;
    public String o;
    public String p;
    Context q;
    Boolean r;
    IronSourceSegment s;
    int t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    Boolean y;
    InterfaceC1369z z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.H$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10678a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f10679b;

        static {
            int[] iArr = new int[k.a.a().length];
            f10679b = iArr;
            try {
                int i = k.a.f11442a;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f10679b;
                int i2 = k.a.f11443b;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f10679b;
                int i3 = k.a.f11444c;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f10679b;
                int i4 = k.a.f11445d;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr5 = new int[IronSource.AD_UNIT.values().length];
            f10678a = iArr5;
            try {
                iArr5[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10678a[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10678a[IronSource.AD_UNIT.OFFERWALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f10678a[IronSource.AD_UNIT.BANNER.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface a {
        void a(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        static volatile H f10680a = new H((byte) 0);
    }

    private H() {
        this.f10670a = getClass().getName();
        this.P = "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b7.2.1.1";
        this.Q = "Activity=";
        this.T = new Object();
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.V = false;
        this.p = null;
        this.r = null;
        this.Z = true;
        this.aa = IronSourceConstants.KEY_SESSION_DEPTH;
        this.y = null;
        this.f10675f = IronSourceLoggerManager.getLogger(0);
        com.ironsource.mediationsdk.logger.b bVar = new com.ironsource.mediationsdk.logger.b(null, 1);
        this.f10677h = bVar;
        this.f10675f.addLogger(bVar);
        this.f10676g = new com.ironsource.mediationsdk.sdk.i();
        ab abVar = new ab();
        this.f10671b = abVar;
        abVar.m = this.f10676g;
        E e2 = new E();
        this.f10672c = e2;
        com.ironsource.mediationsdk.sdk.i iVar = this.f10676g;
        e2.m = iVar;
        e2.n.f11317a = iVar;
        O o = new O();
        this.f10673d = o;
        o.f10782b = this.f10676g;
        this.S = new AtomicBoolean();
        this.X = new HashSet();
        this.Y = new HashSet();
        this.v = false;
        this.u = false;
        this.ab = false;
        this.U = new AtomicBoolean(true);
        this.ah = new AtomicBoolean(false);
        this.t = 0;
        this.w = false;
        this.x = false;
        this.ac = false;
        this.p = UUID.randomUUID().toString();
        this.ad = Boolean.FALSE;
        this.J = false;
        this.af = null;
        this.z = null;
        this.A = null;
        this.ag = null;
        this.B = null;
        this.E = false;
        this.F = false;
        this.H = false;
        this.K = false;
        this.aj = new CopyOnWriteArraySet<>();
        this.ak = new CopyOnWriteArraySet<>();
        this.al = new CopyOnWriteArraySet<>();
        this.M = null;
        this.am = null;
        this.N = null;
        this.f10674e = null;
        this.L = 1;
        this.O = new com.ironsource.mediationsdk.impressionData.a();
        this.an = new com.ironsource.d.b();
        this.ao = new ai();
    }

    /* synthetic */ H(byte b2) {
        this();
    }

    private void A() {
        this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.i.f11447a.f11294e.size(); i++) {
            String str = this.i.f11447a.f11294e.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.i.f11448b.a(str));
            }
        }
        if (arrayList.size() > 0) {
            synchronized (this.al) {
                this.N = new C1360q(arrayList, this.i.f11449c.f11257d, this.j, this.k);
            }
            this.al.clear();
            return;
        }
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, false, 1);
        a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
        b(IronSourceConstants.TROUBLESHOOTING_BN_INIT_FAILED, mediationAdditionalData);
        a(IronSource.AD_UNIT.BANNER, false);
    }

    private void B() {
        if (this.ad.booleanValue()) {
            this.ad = Boolean.FALSE;
            a(this.ae, this.af);
            this.ae = null;
            this.af = null;
        }
    }

    private boolean C() {
        com.ironsource.mediationsdk.utils.l lVar = this.i;
        return (lVar == null || lVar.f11449c == null || this.i.f11449c.f11257d == null) ? false : true;
    }

    private static boolean D() {
        return ContextProvider.getInstance().getCurrentActiveActivity() != null;
    }

    private void E() {
        if (this.ag == null || !this.ah.compareAndSet(false, true)) {
            return;
        }
        IronLog.CALLBACK.verbose("onInitializationCompleted()");
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(IronSourceConstants.TROUBLESHOOTING_INIT_COMPLETED, IronSourceUtils.getMediationAdditionalData(false)));
        this.ag.onInitializationComplete();
    }

    private int a(com.ironsource.mediationsdk.model.o oVar) {
        return (this.ai || this.F || !oVar.l.n) ? 1 : 2;
    }

    public static H a() {
        return b.f10680a;
    }

    private com.ironsource.mediationsdk.utils.l a(Context context, String str) {
        if (IronSourceUtils.isInitResponseCached(context)) {
            String cachedValueByKeyOfCachedInitResponse = IronSourceUtils.getCachedValueByKeyOfCachedInitResponse(context, Constants.APP_KEY);
            String cachedValueByKeyOfCachedInitResponse2 = IronSourceUtils.getCachedValueByKeyOfCachedInitResponse(context, DataKeys.USER_ID);
            String cachedValueByKeyOfCachedInitResponse3 = IronSourceUtils.getCachedValueByKeyOfCachedInitResponse(context, "response");
            String str2 = this.j;
            if (str2 != null && cachedValueByKeyOfCachedInitResponse.equals(str2) && cachedValueByKeyOfCachedInitResponse2.equals(str)) {
                com.ironsource.mediationsdk.utils.l lVar = new com.ironsource.mediationsdk.utils.l(context, cachedValueByKeyOfCachedInitResponse, cachedValueByKeyOfCachedInitResponse2, cachedValueByKeyOfCachedInitResponse3);
                lVar.f11451e = l.a.f11456b;
                return lVar;
            }
        }
        return null;
    }

    public static String a(Context context) {
        String[] C = com.ironsource.environment.h.C(context);
        return (C == null || C.length != 2) ? "" : C[0];
    }

    private static String a(String str, int i) {
        if (i == 0) {
            return null;
        }
        int i2 = AnonymousClass1.f10679b[i - 1];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            return "placement " + str + " is capped";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, JSONObject jSONObject) {
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, jSONObject));
    }

    private void a(IronSource.AD_UNIT ad_unit) {
        String str = ad_unit + " ad unit has already been initialized";
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, str, 3);
        IronSourceUtils.sendAutomationLog(str);
    }

    private void a(IronSource.AD_UNIT ad_unit, boolean z) {
        int i = AnonymousClass1.f10678a[ad_unit.ordinal()];
        if (i == 1) {
            if (this.u) {
                Iterator<String> it = this.ak.iterator();
                while (it.hasNext()) {
                    Z.a().a(it.next(), ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
                this.ak.clear();
            } else if (this.F) {
                if (this.G) {
                    this.G = false;
                    C1359p.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
            } else if (z || d() || this.Y.contains(ad_unit)) {
                this.f10676g.onRewardedVideoAvailabilityChanged(false);
            }
        } else if (i == 2) {
            if (!this.v) {
                if (this.J) {
                    this.J = false;
                    C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                    return;
                }
                return;
            }
            Iterator<String> it2 = this.aj.iterator();
            while (it2.hasNext()) {
                A.a().a(it2.next(), ErrorBuilder.buildInitFailedError("initISDemandOnly() had failed", "Interstitial"));
            }
            this.aj.clear();
        } else if (i == 3) {
            if (z || i() || this.Y.contains(ad_unit)) {
                this.f10676g.onOfferwallAvailable(false);
            }
        } else if (i != 4) {
        } else {
            synchronized (this.ad) {
                if (this.ad.booleanValue()) {
                    this.ad = Boolean.FALSE;
                    C1353j.a().a(this.ae, new IronSourceError(602, "Init had failed"));
                    this.ae = null;
                    this.af = null;
                }
            }
        }
    }

    public static void a(ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        A.a().f10637a = iSDemandOnlyInterstitialListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        Z.a().f10878a = iSDemandOnlyRewardedVideoListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, com.ironsource.d.a aVar) {
        if (str != null) {
            try {
                if (str.length() > 64) {
                    aVar.a(ErrorBuilder.buildInvalidKeyValueError("segment", IronSourceConstants.SUPERSONIC_CONFIG_NAME, "segment value should not exceed 64 characters."));
                }
            } catch (Exception unused) {
                aVar.a(ErrorBuilder.buildInvalidKeyValueError("segment", IronSourceConstants.SUPERSONIC_CONFIG_NAME, "segment value should not exceed 64 characters."));
            }
        }
    }

    public static void a(String str, JSONObject jSONObject) {
        String str2 = "networkKey = " + str;
        if (jSONObject != null) {
            str2 = str2 + " networkData = " + jSONObject;
        }
        IronLog.API.verbose(str2);
        C1347d.a().a(str, jSONObject);
    }

    private void a(ArrayList<NetworkSettings> arrayList) {
        this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner started in programmatic mode", 0);
        this.B = new P(arrayList, new com.ironsource.mediationsdk.c.b(this.j, IronSourceUtils.getUserIdForNetworks(), this.i.f11449c.f11257d), com.ironsource.mediationsdk.utils.k.a().b(), this.s);
        B();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(JSONObject jSONObject, Object[][] objArr) {
        for (int i = 0; i <= 0; i++) {
            try {
                Object[] objArr2 = objArr[0];
                jSONObject.put(objArr2[0].toString(), objArr2[1]);
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IronSourceObject addToDictionary: " + Log.getStackTraceString(e2), 3);
                return;
            }
        }
    }

    public static void a(boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "setAdaptersDebug : " + z, 1);
        C1347d.a().b(z);
    }

    private synchronized void a(boolean z, IronSource.AD_UNIT... ad_unitArr) {
        String str;
        String str2;
        int i = 0;
        for (IronSource.AD_UNIT ad_unit : ad_unitArr) {
            if (ad_unit.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.x = true;
            } else if (ad_unit.equals(IronSource.AD_UNIT.BANNER)) {
                this.ac = true;
            } else if (ad_unit.equals(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.w = true;
            }
        }
        if (M.a().b() == M.a.INIT_FAILED) {
            try {
                if (this.f10676g != null) {
                    int length = ad_unitArr.length;
                    while (i < length) {
                        IronSource.AD_UNIT ad_unit2 = ad_unitArr[i];
                        if (!this.X.contains(ad_unit2)) {
                            a(ad_unit2, true);
                        }
                        i++;
                    }
                }
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        } else if (!this.V) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(z);
            int length2 = ad_unitArr.length;
            boolean z2 = false;
            while (i < length2) {
                IronSource.AD_UNIT ad_unit3 = ad_unitArr[i];
                if (this.X.contains(ad_unit3)) {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, ad_unit3 + " ad unit has started initializing.", 3);
                } else {
                    this.X.add(ad_unit3);
                    this.Y.add(ad_unit3);
                    try {
                        mediationAdditionalData.put(ad_unit3.toString(), true);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    z2 = true;
                }
                i++;
            }
            if (z2) {
                try {
                    StringBuilder sb = new StringBuilder();
                    String str3 = ",androidx=" + IronSourceUtils.isAndroidXAvailable();
                    String str4 = ",Activity=" + D();
                    if (a.AnonymousClass1.d()) {
                        sb.append(IronSourceConstants.IS_APP_LANGUAGE_KOTLIN);
                        str2 = a.AnonymousClass1.c();
                    } else {
                        str2 = IronSourceConstants.IS_APP_LANGUAGE_JAVA;
                    }
                    sb.append(str2);
                    sb.append(str3);
                    if (m()) {
                        sb.append(str4);
                    }
                    mediationAdditionalData.put(IronSourceConstants.EVENTS_EXT1, sb.toString());
                    int i2 = this.t + 1;
                    this.t = i2;
                    mediationAdditionalData.put(IronSourceConstants.KEY_SESSION_DEPTH, i2);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(14, mediationAdditionalData));
            }
            return;
        } else {
            M.a().b(z);
            if (this.W == null) {
                return;
            }
            JSONObject mediationAdditionalData2 = IronSourceUtils.getMediationAdditionalData(z);
            boolean z3 = false;
            for (IronSource.AD_UNIT ad_unit4 : ad_unitArr) {
                if (this.X.contains(ad_unit4)) {
                    a(ad_unit4);
                } else {
                    this.X.add(ad_unit4);
                    this.Y.add(ad_unit4);
                    try {
                        mediationAdditionalData2.put(ad_unit4.toString(), true);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    List<IronSource.AD_UNIT> list = this.W;
                    if (list == null || !list.contains(ad_unit4)) {
                        a(ad_unit4, false);
                    } else {
                        b(ad_unit4);
                    }
                    z3 = true;
                }
            }
            if (z3) {
                try {
                    StringBuilder sb2 = new StringBuilder();
                    String str5 = ",androidx=" + IronSourceUtils.isAndroidXAvailable();
                    String str6 = ",Activity=" + D();
                    if (a.AnonymousClass1.d()) {
                        sb2.append(IronSourceConstants.IS_APP_LANGUAGE_KOTLIN);
                        str = a.AnonymousClass1.c();
                    } else {
                        str = IronSourceConstants.IS_APP_LANGUAGE_JAVA;
                    }
                    sb2.append(str);
                    sb2.append(str5);
                    if (m()) {
                        sb2.append(str6);
                    }
                    mediationAdditionalData2.put(IronSourceConstants.EVENTS_EXT1, sb2.toString());
                    int i3 = this.t + 1;
                    this.t = i3;
                    mediationAdditionalData2.put(IronSourceConstants.KEY_SESSION_DEPTH, i3);
                } catch (Exception e6) {
                    e6.printStackTrace();
                }
                com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(14, mediationAdditionalData2));
            }
            return;
        }
    }

    private static boolean a(AbstractC1345b abstractC1345b) {
        return abstractC1345b.k > 0 && abstractC1345b.l > 0;
    }

    private static boolean a(String str, int i, int i2) {
        return str != null && str.length() >= i && str.length() <= i2;
    }

    private com.ironsource.mediationsdk.utils.l b(Context context, String str, a aVar) {
        com.ironsource.mediationsdk.utils.l lVar = null;
        if (!IronSourceUtils.isNetworkConnected(context)) {
            return null;
        }
        try {
            String a2 = a(context);
            if (TextUtils.isEmpty(a2)) {
                a2 = com.ironsource.environment.h.x(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            String str2 = a2;
            IronSourceSegment ironSourceSegment = this.s;
            String stringFromURL = HttpFunctions.getStringFromURL(ServerURL.getCPVProvidersURL(context, this.j, str, str2, this.o, this.F, ironSourceSegment != null ? ironSourceSegment.a() : null), aVar);
            if (stringFromURL == null) {
                IronLog.INTERNAL.warning("serverResponseString is null");
                return null;
            }
            if (IronSourceUtils.getSerr() == 1) {
                IronLog.INTERNAL.verbose("encrypt");
                String optString = new JSONObject(stringFromURL).optString("response", null);
                if (TextUtils.isEmpty(optString)) {
                    IronLog.INTERNAL.warning("encryptedResponse is empty - return null");
                    return null;
                }
                stringFromURL = IronSourceAES.decode(com.ironsource.mediationsdk.utils.g.a().b(), optString);
                if (TextUtils.isEmpty(stringFromURL)) {
                    IronLog.INTERNAL.warning("encoded response invalid - return null");
                    if (!ap) {
                        ap = true;
                        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
                        try {
                            mediationAdditionalData.put("status", "false");
                            mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, 1);
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(114, mediationAdditionalData));
                    }
                    return null;
                }
            }
            com.ironsource.mediationsdk.utils.l lVar2 = new com.ironsource.mediationsdk.utils.l(context, this.j, str, stringFromURL);
            try {
                lVar2.f11451e = l.a.f11457c;
                if (lVar2.b()) {
                    return lVar2;
                }
                IronLog.INTERNAL.warning("response invalid - return null");
                return null;
            } catch (Exception e3) {
                e = e3;
                lVar = lVar2;
                IronLog.INTERNAL.warning("exception = " + e);
                e.printStackTrace();
                return lVar;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    private static void b(int i, JSONObject jSONObject) {
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, jSONObject));
    }

    private void b(IronSource.AD_UNIT ad_unit) {
        int i = AnonymousClass1.f10678a[ad_unit.ordinal()];
        if (i == 1) {
            q();
        } else if (i == 2) {
            y();
        } else if (i == 3) {
            this.f10673d.a(this.j, this.k);
        } else if (i != 4) {
        } else {
            z();
        }
    }

    private void n() {
        this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "Rewarded Video started in programmatic mode", 0);
        List<NetworkSettings> s = s();
        if (s.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, this.L);
            a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            a((int) IronSourceConstants.TROUBLESHOOTING_RV_INIT_FAILED, mediationAdditionalData);
            a(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        this.z = this.i.f11449c.f11254a.l.n ? new I(s, this.i.f11449c.f11254a, this.j, IronSourceUtils.getUserIdForNetworks(), com.ironsource.mediationsdk.utils.k.a().b(), this.s) : new V(s, this.i.f11449c.f11254a, this.j, IronSourceUtils.getUserIdForNetworks(), com.ironsource.mediationsdk.utils.k.a().b(), this.s);
        Boolean bool = this.r;
        if (bool != null) {
            this.z.a(this.q, bool.booleanValue());
            if (this.r.booleanValue()) {
                this.f10671b.a(this.q, false);
            }
        }
    }

    private void o() {
        this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "Rewarded Video started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.i.f11447a.f11290a.size(); i++) {
            String str = this.i.f11447a.f11290a.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.i.f11448b.a(str));
            }
        }
        if (arrayList.size() <= 0) {
            a(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        synchronized (this.ak) {
            this.am = new C1364u(arrayList, this.i.f11449c.f11254a, this.j, this.k);
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            a(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        Iterator<String> it = this.ak.iterator();
        while (it.hasNext()) {
            this.am.a(it.next(), (String) null, false);
        }
        this.ak.clear();
    }

    private Placement p(String str) {
        com.ironsource.mediationsdk.model.o oVar = this.i.f11449c.f11254a;
        if (oVar != null) {
            Iterator<Placement> it = oVar.f11299a.iterator();
            while (it.hasNext()) {
                Placement next = it.next();
                if (next.getPlacementName().equals(str)) {
                    return next;
                }
            }
        }
        return null;
    }

    private void p() {
        NetworkSettings a2;
        NetworkSettings a3;
        NetworkSettings a4;
        com.ironsource.mediationsdk.model.o oVar = this.i.f11449c.f11254a;
        int i = oVar.f11303e;
        for (int i2 = 0; i2 < this.i.f11447a.f11290a.size(); i2++) {
            String str = this.i.f11447a.f11290a.get(i2);
            if (!TextUtils.isEmpty(str) && (a4 = this.i.f11448b.a(str)) != null) {
                ac acVar = new ac(a4, i);
                if (a(acVar)) {
                    acVar.s = this.f10671b;
                    acVar.n = i2 + 1;
                    this.f10671b.a((AbstractC1345b) acVar);
                }
            }
        }
        if (this.f10671b.f10897c.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, false, this.L);
            a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            a((int) IronSourceConstants.TROUBLESHOOTING_RV_INIT_FAILED, mediationAdditionalData);
            a(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        this.f10671b.n = oVar.f11300b.a();
        this.f10671b.f10896b = oVar.f11301c;
        this.f10671b.o = oVar.f11306h;
        String c2 = this.i.c();
        if (!TextUtils.isEmpty(c2) && (a3 = this.i.f11448b.a(c2)) != null) {
            ac acVar2 = new ac(a3, i);
            if (a(acVar2)) {
                acVar2.s = this.f10671b;
                ab abVar = this.f10671b;
                abVar.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar2.f11077d + " is set as backfill", 0);
                abVar.f10898d = acVar2;
            }
        }
        String d2 = this.i.d();
        if (!TextUtils.isEmpty(d2) && (a2 = this.i.f11448b.a(d2)) != null) {
            ac acVar3 = new ac(a2, i);
            if (a(acVar3)) {
                acVar3.s = this.f10671b;
                ab abVar2 = this.f10671b;
                abVar2.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar3.f11077d + " is set as premium", 0);
                abVar2.f10899e = acVar3;
            }
        }
        ab abVar3 = this.f10671b;
        abVar3.p = new C1367x(oVar.i, abVar3);
        this.f10671b.a(this.j, IronSourceUtils.getUserIdForNetworks());
    }

    private void q() {
        if (this.u) {
            o();
            return;
        }
        com.ironsource.mediationsdk.model.o oVar = this.i.f11449c.f11254a;
        this.E = oVar.l.f11404a || this.F;
        this.ai = oVar.l.f11405b;
        int a2 = a(oVar);
        this.L = a2;
        a((int) IronSourceConstants.TROUBLESHOOTING_RV_FORK, IronSourceUtils.getMediationAdditionalData(false, this.E, a2));
        if (this.F || this.ai) {
            r();
        } else if (this.E) {
            n();
        } else {
            p();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void q(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 3
            com.ironsource.mediationsdk.model.Placement r6 = r5.p(r6)     // Catch: java.lang.Exception -> L26
            if (r6 != 0) goto Le
            com.ironsource.mediationsdk.model.Placement r6 = r5.b()     // Catch: java.lang.Exception -> Lc
            goto Le
        Lc:
            r1 = move-exception
            goto L28
        Le:
            if (r6 != 0) goto L31
            java.lang.String r1 = "showProgrammaticRewardedVideo error: empty default placement in response"
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r2 = r5.f10675f     // Catch: java.lang.Exception -> Lc
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r3 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL     // Catch: java.lang.Exception -> Lc
            r2.log(r3, r1, r0)     // Catch: java.lang.Exception -> Lc
            com.ironsource.mediationsdk.logger.IronSourceError r2 = new com.ironsource.mediationsdk.logger.IronSourceError     // Catch: java.lang.Exception -> Lc
            r3 = 1021(0x3fd, float:1.431E-42)
            r2.<init>(r3, r1)     // Catch: java.lang.Exception -> Lc
            com.ironsource.mediationsdk.sdk.i r1 = r5.f10676g     // Catch: java.lang.Exception -> Lc
            r1.onRewardedVideoAdShowFailed(r2)     // Catch: java.lang.Exception -> Lc
            return
        L26:
            r1 = move-exception
            r6 = 0
        L28:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r2 = r5.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r3 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            java.lang.String r4 = "showProgrammaticRewardedVideo()"
            r2.logException(r3, r4, r1)
        L31:
            com.ironsource.mediationsdk.adunit.c.h r1 = r5.D
            if (r1 == 0) goto L41
            boolean r2 = r5.F
            if (r2 != 0) goto L3d
            boolean r2 = r5.ai
            if (r2 == 0) goto L41
        L3d:
            r1.a(r6)
            return
        L41:
            com.ironsource.mediationsdk.z r1 = r5.z
            if (r1 == 0) goto L49
            r1.a(r6)
            return
        L49:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r6 = r5.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r1 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            java.lang.String r2 = "showProgrammaticRewardedVideo - show called before init completed, managers not initiated yet"
            r6.log(r1, r2, r0)
            com.ironsource.mediationsdk.logger.IronSourceError r6 = new com.ironsource.mediationsdk.logger.IronSourceError
            r0 = 1023(0x3ff, float:1.434E-42)
            r6.<init>(r0, r2)
            com.ironsource.mediationsdk.sdk.i r0 = r5.f10676g
            r0.onRewardedVideoAdShowFailed(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.q(java.lang.String):void");
    }

    private Placement r(String str) {
        Placement p = p(str);
        if (p == null) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
            p = b();
            if (p == null) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found, please make sure you are using the right placements.", 3);
                return null;
            }
        }
        String a2 = a(p.getPlacementName(), com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getApplicationContext(), p));
        if (TextUtils.isEmpty(a2)) {
            return p;
        }
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, a2, 1);
        this.f10676g.onRewardedVideoAdShowFailed(ErrorBuilder.buildCappedPerPlacementError(a2));
        return null;
    }

    private void r() {
        IronLog.INTERNAL.verbose("");
        List<NetworkSettings> s = s();
        if (s.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, this.L);
            a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            a((int) IronSourceConstants.TROUBLESHOOTING_RV_INIT_FAILED, mediationAdditionalData);
            a(IronSource.AD_UNIT.REWARDED_VIDEO, false);
            return;
        }
        com.ironsource.mediationsdk.adunit.c.h hVar = new com.ironsource.mediationsdk.adunit.c.h(s, this.i.f11449c.f11254a, IronSourceUtils.getUserIdForNetworks(), this.F, com.ironsource.mediationsdk.utils.k.a().b(), this.s);
        this.D = hVar;
        Boolean bool = this.r;
        if (bool != null) {
            hVar.b(bool.booleanValue());
        }
        if (this.G && this.F) {
            this.G = false;
            this.D.e();
        }
    }

    private InterstitialPlacement s(String str) {
        com.ironsource.mediationsdk.model.h hVar = this.i.f11449c.f11255b;
        if (hVar != null) {
            Iterator<InterstitialPlacement> it = hVar.f11259a.iterator();
            while (it.hasNext()) {
                InterstitialPlacement next = it.next();
                if (next.getPlacementName().equals(str)) {
                    return next;
                }
            }
        }
        return null;
    }

    private List<NetworkSettings> s() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.i.f11447a.f11290a.size(); i++) {
            String str = this.i.f11447a.f11290a.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.i.f11448b.a(str));
            }
        }
        return arrayList;
    }

    private List<NetworkSettings> t() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.i.f11447a.f11293d.size(); i++) {
            String str = this.i.f11447a.f11293d.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.i.f11448b.a(str));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void t(java.lang.String r5) {
        /*
            r4 = this;
            com.ironsource.mediationsdk.model.InterstitialPlacement r5 = r4.s(r5)     // Catch: java.lang.Exception -> L26
            if (r5 != 0) goto Ld
            com.ironsource.mediationsdk.model.InterstitialPlacement r5 = r4.e()     // Catch: java.lang.Exception -> Lb
            goto Ld
        Lb:
            r0 = move-exception
            goto L28
        Ld:
            if (r5 != 0) goto L31
            java.lang.String r0 = "showProgrammaticInterstitial error: empty default placement in response"
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r1 = r4.f10675f     // Catch: java.lang.Exception -> Lb
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r2 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL     // Catch: java.lang.Exception -> Lb
            r3 = 3
            r1.log(r2, r0, r3)     // Catch: java.lang.Exception -> Lb
            com.ironsource.mediationsdk.logger.IronSourceError r1 = new com.ironsource.mediationsdk.logger.IronSourceError     // Catch: java.lang.Exception -> Lb
            r2 = 1020(0x3fc, float:1.43E-42)
            r1.<init>(r2, r0)     // Catch: java.lang.Exception -> Lb
            com.ironsource.mediationsdk.sdk.i r0 = r4.f10676g     // Catch: java.lang.Exception -> Lb
            r0.onInterstitialAdShowFailed(r1)     // Catch: java.lang.Exception -> Lb
            return
        L26:
            r0 = move-exception
            r5 = 0
        L28:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r1 = r4.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r2 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            java.lang.String r3 = "showProgrammaticInterstitial()"
            r1.logException(r2, r3, r0)
        L31:
            boolean r0 = r4.I
            if (r0 == 0) goto L40
            com.ironsource.mediationsdk.adunit.c.g r0 = r4.C
            com.ironsource.mediationsdk.model.Placement r1 = new com.ironsource.mediationsdk.model.Placement
            r1.<init>(r5)
            r0.a(r1)
            return
        L40:
            com.ironsource.mediationsdk.S r0 = r4.A
            java.lang.String r5 = r5.getPlacementName()
            r0.a(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.t(java.lang.String):void");
    }

    private InterstitialPlacement u(String str) {
        InterstitialPlacement s = s(str);
        if (s == null) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
            s = e();
            if (s == null) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found, please make sure you are using the right placements.", 3);
                return null;
            }
        }
        String a2 = a(s.getPlacementName(), w(s.getPlacementName()));
        if (TextUtils.isEmpty(a2)) {
            return s;
        }
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, a2, 1);
        this.f10676g.f11340e = s;
        this.f10676g.onInterstitialAdShowFailed(ErrorBuilder.buildCappedPerPlacementError(a2));
        return null;
    }

    private void u() {
        IronLog.INTERNAL.verbose("");
        List<NetworkSettings> t = t();
        if (t.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
            a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            b(IronSourceConstants.TROUBLESHOOTING_IS_INIT_FAILED, mediationAdditionalData);
            a(IronSource.AD_UNIT.INTERSTITIAL, false);
            return;
        }
        com.ironsource.mediationsdk.adunit.c.g gVar = new com.ironsource.mediationsdk.adunit.c.g(t, this.i.f11449c.f11255b, IronSourceUtils.getUserIdForNetworks(), com.ironsource.mediationsdk.utils.k.a().b(), this.s);
        this.C = gVar;
        Boolean bool = this.r;
        if (bool != null) {
            gVar.b(bool.booleanValue());
        }
        if (this.J) {
            this.J = false;
            this.C.e();
        }
    }

    private void v() {
        this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "Adunit: Interstitial is now initiated - programmatic mode", 0);
        List<NetworkSettings> t = t();
        if (t.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
            a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            b(IronSourceConstants.TROUBLESHOOTING_IS_INIT_FAILED, mediationAdditionalData);
            a(IronSource.AD_UNIT.INTERSTITIAL, false);
            return;
        }
        S s = new S(t, this.i.f11449c.f11255b, this.j, IronSourceUtils.getUserIdForNetworks(), this.i.f11449c.f11255b.f11264f, com.ironsource.mediationsdk.utils.k.a().b(), this.s);
        this.A = s;
        Boolean bool = this.r;
        if (bool != null) {
            s.a(bool.booleanValue());
            if (this.r.booleanValue()) {
                this.f10672c.a(this.q, false);
            }
        }
        if (this.J) {
            this.J = false;
            this.A.d();
        }
    }

    private static boolean v(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("^[a-zA-Z0-9]*$");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int w(java.lang.String r5) {
        /*
            r4 = this;
            com.ironsource.mediationsdk.utils.l r0 = r4.i
            if (r0 == 0) goto L41
            com.ironsource.mediationsdk.model.g r0 = r0.f11449c
            if (r0 == 0) goto L41
            com.ironsource.mediationsdk.utils.l r0 = r4.i
            com.ironsource.mediationsdk.model.g r0 = r0.f11449c
            com.ironsource.mediationsdk.model.h r0 = r0.f11255b
            if (r0 != 0) goto L11
            goto L41
        L11:
            com.ironsource.mediationsdk.model.InterstitialPlacement r5 = r4.s(r5)     // Catch: java.lang.Exception -> L2a
            if (r5 != 0) goto L2f
            com.ironsource.mediationsdk.model.InterstitialPlacement r5 = r4.e()     // Catch: java.lang.Exception -> L28
            if (r5 != 0) goto L2f
            java.lang.String r0 = "Default placement was not found"
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r1 = r4.f10675f     // Catch: java.lang.Exception -> L28
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r2 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Exception -> L28
            r3 = 3
            r1.log(r2, r0, r3)     // Catch: java.lang.Exception -> L28
            goto L2f
        L28:
            r0 = move-exception
            goto L2c
        L2a:
            r0 = move-exception
            r5 = 0
        L2c:
            r0.printStackTrace()
        L2f:
            if (r5 != 0) goto L34
            int r5 = com.ironsource.mediationsdk.utils.k.a.f11445d
            return r5
        L34:
            com.ironsource.environment.ContextProvider r0 = com.ironsource.environment.ContextProvider.getInstance()
            android.content.Context r0 = r0.getApplicationContext()
            int r5 = com.ironsource.mediationsdk.utils.k.b(r0, r5)
            return r5
        L41:
            int r5 = com.ironsource.mediationsdk.utils.k.a.f11445d
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.w(java.lang.String):int");
    }

    private void w() {
        NetworkSettings a2;
        com.ironsource.mediationsdk.model.h hVar = this.i.f11449c.f11255b;
        int i = hVar.f11263e;
        this.f10672c.n.a(IronSource.AD_UNIT.INTERSTITIAL, hVar.f11264f);
        for (int i2 = 0; i2 < this.i.f11447a.f11293d.size(); i2++) {
            String str = this.i.f11447a.f11293d.get(i2);
            if (!TextUtils.isEmpty(str) && (a2 = this.i.f11448b.a(str)) != null) {
                F f2 = new F(a2, i);
                if (a(f2)) {
                    f2.s = this.f10672c;
                    f2.n = i2 + 1;
                    this.f10672c.a((AbstractC1345b) f2);
                }
            }
        }
        if (this.f10672c.f10897c.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, false, 1);
            a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            b(IronSourceConstants.TROUBLESHOOTING_IS_INIT_FAILED, mediationAdditionalData);
            a(IronSource.AD_UNIT.INTERSTITIAL, false);
            return;
        }
        this.f10672c.f10896b = hVar.f11261c;
        this.f10672c.a(this.j, IronSourceUtils.getUserIdForNetworks());
        if (this.J) {
            this.J = false;
            this.f10672c.c();
        }
    }

    private com.ironsource.mediationsdk.model.f x(String str) {
        com.ironsource.mediationsdk.model.f a2;
        com.ironsource.mediationsdk.model.e eVar = this.i.f11449c.f11257d;
        if (eVar == null) {
            return null;
        }
        return (TextUtils.isEmpty(str) || (a2 = eVar.a(str)) == null) ? eVar.a() : a2;
    }

    private void x() {
        this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "Interstitial started in demand only mode", 0);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.i.f11447a.f11293d.size(); i++) {
            String str = this.i.f11447a.f11293d.get(i);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(this.i.f11448b.a(str));
            }
        }
        if (arrayList.size() <= 0) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, false, 1);
            a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
            b(IronSourceConstants.TROUBLESHOOTING_IS_INIT_FAILED, mediationAdditionalData);
            a(IronSource.AD_UNIT.INTERSTITIAL, false);
            return;
        }
        synchronized (this.aj) {
            this.M = new C1362s(arrayList, this.i.f11449c.f11255b, this.j, this.k);
        }
        Iterator<String> it = this.aj.iterator();
        while (it.hasNext()) {
            this.M.a(it.next(), (String) null, false);
        }
        this.aj.clear();
    }

    private void y() {
        if (this.v) {
            x();
            return;
        }
        com.ironsource.mediationsdk.model.h hVar = this.i.f11449c.f11255b;
        this.H = hVar.i.f11404a;
        this.I = hVar.i.f11405b;
        b(IronSourceConstants.TROUBLESHOOTING_IS_FORK, IronSourceUtils.getMediationAdditionalData(false, this.H, 1));
        if (!this.H) {
            w();
        } else if (this.I) {
            u();
        } else {
            v();
        }
    }

    private void z() {
        NetworkSettings a2;
        if (this.ab) {
            A();
            return;
        }
        synchronized (this.ad) {
            this.K = this.i.f11449c.f11257d.f11252g.f11404a;
            IronLog.INTERNAL.verbose("mIsBnProgrammatic = " + this.K);
            IronLog.INTERNAL.verbose("mIsBnLoadBeforeInitCompleted = " + this.ad);
            b(IronSourceConstants.TROUBLESHOOTING_BN_FORK, IronSourceUtils.getMediationAdditionalData(false, this.K, 1));
            ArrayList<NetworkSettings> arrayList = new ArrayList<>();
            for (int i = 0; i < this.i.f11447a.f11294e.size(); i++) {
                String str = this.i.f11447a.f11294e.get(i);
                if (!TextUtils.isEmpty(str) && (a2 = this.i.f11448b.a(str)) != null) {
                    arrayList.add(a2);
                }
            }
            if (arrayList.size() <= 0) {
                JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, this.K, 1);
                a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}});
                b(IronSourceConstants.TROUBLESHOOTING_BN_INIT_FAILED, mediationAdditionalData);
                a(IronSource.AD_UNIT.BANNER, false);
            } else if (this.K) {
                a(arrayList);
            } else {
                this.f10674e = new C1354k(arrayList, this.j, IronSourceUtils.getUserIdForNetworks(), this.i.f11449c.f11257d.f11247b, this.i.f11449c.f11257d.f11250e, this.i.f11449c.f11257d.f11251f);
                B();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01fe A[Catch: all -> 0x033f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000e, B:9:0x0010, B:11:0x0018, B:17:0x006f, B:19:0x00a0, B:21:0x00ac, B:23:0x00b2, B:25:0x00be, B:27:0x00c4, B:29:0x00d0, B:31:0x00d6, B:33:0x00e2, B:35:0x00ee, B:36:0x016e, B:41:0x01fe, B:42:0x027e, B:46:0x030c, B:48:0x0312, B:49:0x032d, B:44:0x0284, B:45:0x0306, B:38:0x0174, B:39:0x01f6, B:50:0x033d, B:13:0x001e, B:15:0x002f), top: B:55:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0312 A[Catch: all -> 0x033f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000e, B:9:0x0010, B:11:0x0018, B:17:0x006f, B:19:0x00a0, B:21:0x00ac, B:23:0x00b2, B:25:0x00be, B:27:0x00c4, B:29:0x00d0, B:31:0x00d6, B:33:0x00e2, B:35:0x00ee, B:36:0x016e, B:41:0x01fe, B:42:0x027e, B:46:0x030c, B:48:0x0312, B:49:0x032d, B:44:0x0284, B:45:0x0306, B:38:0x0174, B:39:0x01f6, B:50:0x033d, B:13:0x001e, B:15:0x002f), top: B:55:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.ironsource.mediationsdk.utils.l a(android.content.Context r11, java.lang.String r12, com.ironsource.mediationsdk.H.a r13) {
        /*
            Method dump skipped, instructions count: 834
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.a(android.content.Context, java.lang.String, com.ironsource.mediationsdk.H$a):com.ironsource.mediationsdk.utils.l");
    }

    public final synchronized void a(Activity activity, IronSourceBannerLayout ironSourceBannerLayout, String str, String str2) {
        IronSourceError buildLoadFailedError;
        IronSourceBannerLayout ironSourceBannerLayout2;
        if (str2 == null) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "adm cannot be null", 3);
        } else if (!this.ac) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "initISDemandOnly() must be called before loadISDemandOnlyBannerWithAdm()", 3);
            ironSourceBannerLayout.a(new IronSourceError(510, "initISDemandOnly() must be called before loadISDemandOnlyBannerWithAdm()"));
        } else if (!this.ab) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Banner was initialized in mediation mode. Use loadBanner instead", 3);
            ironSourceBannerLayout.a(new IronSourceError(510, "Banner was initialized in mediation mode. Use loadBanner instead"));
        } else {
            if (activity != null) {
                ContextProvider.getInstance().updateActivity(activity);
            } else if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
                b(IronSourceConstants.TROUBLESHOOTING_DO_CALLED_BN_LOAD_WITH_NO_ACTIVITY, IronSourceUtils.getMediationAdditionalData(true, str2 != null, 1));
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Banner was initialized and loaded without Activity", 3);
                ironSourceBannerLayout.a(new IronSourceError(IronSourceError.ERROR_DO_BN_LOAD_MISSING_ACTIVITY, "Banner was initialized and loaded without Activity"));
                return;
            }
            M.a b2 = M.a().b();
            if (b2 == M.a.INIT_FAILED) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                ironSourceBannerLayout.a(ErrorBuilder.buildInitFailedError("init() had failed", "Banner"));
            } else if (b2 == M.a.INIT_IN_PROGRESS) {
                if (M.a().c()) {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    ironSourceBannerLayout.a(ErrorBuilder.buildInitFailedError("init() had failed", "Banner"));
                    return;
                }
                synchronized (this.ad) {
                    this.al.add(str);
                }
                if (str2 != null) {
                    b(IronSourceConstants.TROUBLESHOOTING_DO_IAB_BN_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, true, 1));
                }
            } else {
                synchronized (this.al) {
                    if (this.N == null) {
                        this.al.add(str);
                        if (str2 != null) {
                            b(IronSourceConstants.TROUBLESHOOTING_DO_IAB_BN_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, true, 1));
                        }
                    } else if (!C()) {
                        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "No Banner configurations found", 3);
                        ironSourceBannerLayout.a(ErrorBuilder.buildInitFailedError("the server response does not contain Banner data", "Banner"));
                    } else {
                        if (str2 != null) {
                            C1360q c1360q = this.N;
                            c1360q.f11328b = ironSourceBannerLayout;
                            if (c1360q.f11329c.containsKey(str)) {
                                if (ironSourceBannerLayout != null && !ironSourceBannerLayout.isDestroyed()) {
                                    C1361r c1361r = c1360q.f11329c.get(str);
                                    c1360q.f11327a = c1361r;
                                    if (c1361r == null) {
                                        buildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadISDemandOnlyBannerWithAdm smash is no exist");
                                        IronLog.INTERNAL.error(buildLoadFailedError.getErrorMessage());
                                        if (c1360q.f11328b != null) {
                                            ironSourceBannerLayout2 = c1360q.f11328b;
                                            ironSourceBannerLayout2.a(buildLoadFailedError);
                                        }
                                    } else if (c1361r.i()) {
                                        C1349f.a();
                                        JSONObject a2 = C1349f.a(str2);
                                        C1349f.a aVar = new C1349f.a();
                                        try {
                                            C1349f.a();
                                            aVar = C1349f.a(a2);
                                        } catch (Exception e2) {
                                            IronSourceError buildLoadFailedError2 = ErrorBuilder.buildLoadFailedError("loadISDemandOnlyBannerWithAdm: unable to get auction data from response. Exception=" + e2.getLocalizedMessage());
                                            IronLog.INTERNAL.error(buildLoadFailedError2.getErrorMessage());
                                            if (c1360q.f11328b != null) {
                                                c1360q.f11328b.a(buildLoadFailedError2);
                                            }
                                        }
                                        C1349f.a();
                                        com.ironsource.mediationsdk.server.b a3 = C1349f.a(c1361r.d(), aVar.f11112b);
                                        if (a3 == null) {
                                            IronSourceError buildLoadFailedError3 = ErrorBuilder.buildLoadFailedError("loadISDemandOnlyBannerWithAdm invalid enriched adm");
                                            IronLog.INTERNAL.error(buildLoadFailedError3.getErrorMessage());
                                            c1360q.a(IronSourceConstants.BN_INSTANCE_LOAD_ERROR, c1361r);
                                            if (c1360q.f11328b != null) {
                                                c1360q.f11328b.a(buildLoadFailedError3);
                                            }
                                            return;
                                        }
                                        c1361r.a(a3.b());
                                        c1361r.b(aVar.f11111a);
                                        c1361r.a(aVar.f11114d);
                                        c1360q.a(3002, c1361r);
                                        c1361r.a(ironSourceBannerLayout, a3.b(), aVar.f11111a, aVar.f11114d, a3.d());
                                    } else {
                                        buildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadISDemandOnlyBannerWithAdm in IAB flow must be called by bidder instances");
                                        IronLog.INTERNAL.error(buildLoadFailedError.getErrorMessage());
                                        C1360q.a((int) IronSourceConstants.BN_INSTANCE_LOAD_ERROR, c1361r, (Object[][]) null);
                                        if (c1360q.f11328b != null) {
                                            ironSourceBannerLayout2 = c1360q.f11328b;
                                            ironSourceBannerLayout2.a(buildLoadFailedError);
                                        }
                                    }
                                }
                                C1360q.a((int) IronSourceConstants.BN_BANNER_LAYOUT_IS_NULL_OR_DESTROYED, str);
                                buildLoadFailedError = ErrorBuilder.buildGenericError("validateBannerLayout fail");
                                if (c1360q.f11328b != null) {
                                    ironSourceBannerLayout2 = c1360q.f11328b;
                                    ironSourceBannerLayout2.a(buildLoadFailedError);
                                }
                            } else {
                                C1360q.a((int) IronSourceConstants.BN_INSTANCE_NOT_FOUND, str);
                                buildLoadFailedError = ErrorBuilder.buildNonExistentInstanceError("Banner");
                                if (c1360q.f11328b != null) {
                                    ironSourceBannerLayout2 = c1360q.f11328b;
                                    ironSourceBannerLayout2.a(buildLoadFailedError);
                                }
                            }
                        } else {
                            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Banner support bidding mode only", 3);
                            ironSourceBannerLayout.a(ErrorBuilder.buildInitFailedError("Banner support bidding mode only", "Banner"));
                        }
                    }
                }
            }
        }
    }

    public final synchronized void a(Activity activity, String str, String str2) {
        if (str2 != null) {
            b(activity, str, str2);
            return;
        }
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "adm cannot be null", 3);
        Z.a().a(str, new IronSourceError(510, "adm cannot be null"));
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00c1 A[Catch: all -> 0x00f7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x000e, B:10:0x0012, B:12:0x001c, B:37:0x0089, B:13:0x0038, B:15:0x0040, B:17:0x0044, B:18:0x0048, B:20:0x0050, B:21:0x0053, B:23:0x005b, B:25:0x005f, B:26:0x0063, B:28:0x006b, B:29:0x006e, B:31:0x0076, B:33:0x007a, B:34:0x007e, B:36:0x0086, B:51:0x00c1, B:53:0x00c5, B:54:0x00cf, B:55:0x00da, B:57:0x00e0, B:38:0x008c, B:40:0x0090, B:42:0x009d, B:44:0x00a1, B:46:0x00ae, B:48:0x00b2, B:49:0x00b8, B:45:0x00a7, B:41:0x0096), top: B:63:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e0 A[Catch: all -> 0x00f7, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0009, B:8:0x000e, B:10:0x0012, B:12:0x001c, B:37:0x0089, B:13:0x0038, B:15:0x0040, B:17:0x0044, B:18:0x0048, B:20:0x0050, B:21:0x0053, B:23:0x005b, B:25:0x005f, B:26:0x0063, B:28:0x006b, B:29:0x006e, B:31:0x0076, B:33:0x007a, B:34:0x007e, B:36:0x0086, B:51:0x00c1, B:53:0x00c5, B:54:0x00cf, B:55:0x00da, B:57:0x00e0, B:38:0x008c, B:40:0x0090, B:42:0x009d, B:44:0x00a1, B:46:0x00ae, B:48:0x00b2, B:49:0x00b8, B:45:0x00a7, B:41:0x0096), top: B:63:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(android.content.Context r8, java.lang.String r9, com.ironsource.mediationsdk.sdk.InitializationListener r10, com.ironsource.mediationsdk.IronSource.AD_UNIT... r11) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.a(android.content.Context, java.lang.String, com.ironsource.mediationsdk.sdk.InitializationListener, com.ironsource.mediationsdk.IronSource$AD_UNIT[]):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0085 A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bf A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e3 A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f3 A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0138 A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0157 A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0179 A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a8 A[Catch: all -> 0x02e7, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01e6 A[Catch: all -> 0x02e7, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000c, B:8:0x0010, B:11:0x001a, B:14:0x001e, B:16:0x0022, B:18:0x0036, B:19:0x0038, B:21:0x0040, B:22:0x0042, B:24:0x004a, B:25:0x004c, B:30:0x0067, B:32:0x0085, B:33:0x008f, B:35:0x00bf, B:37:0x00c8, B:39:0x00ce, B:40:0x00d6, B:43:0x00ed, B:45:0x00f3, B:46:0x00f5, B:50:0x010d, B:51:0x0128, B:53:0x0138, B:54:0x0147, B:56:0x0157, B:58:0x016b, B:59:0x0175, B:61:0x0179, B:63:0x017f, B:64:0x01a4, B:66:0x01a8, B:68:0x01bb, B:69:0x01c0, B:71:0x01ca, B:72:0x01d3, B:75:0x01e6, B:77:0x020a, B:78:0x0213, B:80:0x023f, B:81:0x0248, B:83:0x024f, B:85:0x0258, B:86:0x025b, B:88:0x0266, B:90:0x026a, B:91:0x0276, B:95:0x0285, B:94:0x0282, B:96:0x0295, B:98:0x029f, B:99:0x02a8, B:41:0x00da, B:42:0x00e3, B:26:0x004f, B:28:0x0057, B:29:0x0061, B:103:0x02c5, B:106:0x02d6, B:109:0x02db), top: B:115:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(android.content.Context r9, java.lang.String r10, boolean r11, com.ironsource.mediationsdk.sdk.InitializationListener r12, com.ironsource.mediationsdk.IronSource.AD_UNIT... r13) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.a(android.content.Context, java.lang.String, boolean, com.ironsource.mediationsdk.sdk.InitializationListener, com.ironsource.mediationsdk.IronSource$AD_UNIT[]):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(AbstractAdapter abstractAdapter) {
        this.R = abstractAdapter;
    }

    public final void a(IronSourceBannerLayout ironSourceBannerLayout, String str) {
        IronLog.INTERNAL.verbose("placementName = " + str);
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            String concat = "loadBanner can't be called - ".concat(ironSourceBannerLayout == null ? "banner layout is null " : "banner layout is destroyed");
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, concat, 3);
            C1353j.a().a(ironSourceBannerLayout, ErrorBuilder.buildLoadFailedError(concat));
        } else if (!this.ac) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadBanner()", 3);
            C1353j.a().a(ironSourceBannerLayout, ErrorBuilder.buildLoadFailedError("init() must be called before loadBanner()"));
        } else if (ironSourceBannerLayout.getSize().getDescription().equals("CUSTOM") && (ironSourceBannerLayout.getSize().getWidth() <= 0 || ironSourceBannerLayout.getSize().getHeight() <= 0)) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "loadBanner: Unsupported banner size. Height and width must be bigger than 0", 3);
            C1353j.a().a(ironSourceBannerLayout, ErrorBuilder.unsupportedBannerSize(""));
        } else {
            M.a b2 = M.a().b();
            if (b2 == M.a.INIT_FAILED) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                C1353j.a().a(ironSourceBannerLayout, new IronSourceError(600, "Init() had failed"));
            } else if (b2 == M.a.INIT_IN_PROGRESS) {
                if (M.a().c()) {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    C1353j.a().a(ironSourceBannerLayout, new IronSourceError(601, "Init had failed"));
                    return;
                }
                this.ae = ironSourceBannerLayout;
                this.ad = Boolean.TRUE;
                this.af = str;
            } else {
                synchronized (this.ad) {
                    if (this.f10674e == null && this.B == null) {
                        this.ae = ironSourceBannerLayout;
                        this.ad = Boolean.TRUE;
                        this.af = str;
                    } else if (!C()) {
                        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "No banner configurations found", 3);
                        C1353j.a().a(ironSourceBannerLayout, new IronSourceError(615, "No banner configurations found"));
                    } else if (this.K) {
                        this.B.a(ironSourceBannerLayout, x(str));
                    } else {
                        this.f10674e.a(ironSourceBannerLayout, x(str));
                    }
                }
            }
        }
    }

    public final void a(RewardedVideoListener rewardedVideoListener) {
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, rewardedVideoListener == null ? "setRewardedVideoListener(RVListener:null)" : "setRewardedVideoListener(RVListener)", 1);
        this.f10676g.f11336a = rewardedVideoListener;
        aa.a().f10948a = rewardedVideoListener;
    }

    public final synchronized void a(RewardedVideoManualListener rewardedVideoManualListener) {
        if (this.w) {
            IronLog.API.error("setManualLoadRewardedVideo - this method needs to be called before init");
        } else if (rewardedVideoManualListener == null) {
            IronLog.API.error("setManualLoadRewardedVideo - listener can not be null");
            this.F = false;
        } else {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "setting RewardedVideo to manual mode", 1);
            this.F = true;
            C1359p.a().f11318b = rewardedVideoManualListener;
            a((RewardedVideoListener) rewardedVideoManualListener);
        }
    }

    @Override // com.ironsource.mediationsdk.utils.i
    public final void a(String str) {
        try {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "onInitFailed(reason:" + str + ")", 1);
            IronSourceUtils.sendAutomationLog("Mediation init failed");
            if (this.f10676g != null) {
                for (IronSource.AD_UNIT ad_unit : this.X) {
                    a(ad_unit, true);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(String str, List<String> list) {
        IronLog.API.verbose("key = " + str + ", values = " + list.toString());
        String checkMetaDataKeyValidity = MetaDataUtils.checkMetaDataKeyValidity(str);
        String checkMetaDataValueValidity = MetaDataUtils.checkMetaDataValueValidity(list);
        if (checkMetaDataKeyValidity.length() > 0) {
            IronLog.API.verbose(checkMetaDataKeyValidity);
        } else if (checkMetaDataValueValidity.length() > 0) {
            IronLog.API.verbose(checkMetaDataValueValidity);
        } else {
            MetaData formatMetaData = MetaDataUtils.formatMetaData(str, list);
            String metaDataKey = formatMetaData.getMetaDataKey();
            List<String> metaDataValue = formatMetaData.getMetaDataValue();
            if (!MetaDataUtils.isMediationOnlyKey(metaDataKey)) {
                C1347d.a().a(metaDataKey, metaDataValue);
            } else if (M.a().b() == M.a.INITIATED && MetaDataUtils.isMediationKeysBeforeInit(metaDataKey)) {
                IronLog.API.error("setMetaData with key = " + metaDataKey + " must to be called before init");
            } else {
                com.ironsource.mediationsdk.utils.k.a().a(metaDataKey, metaDataValue);
            }
            try {
                ConcurrentHashMap<String, List<String>> concurrentHashMap = C1347d.a().f11101c;
                concurrentHashMap.putAll(com.ironsource.mediationsdk.utils.k.a().d());
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, List<String>> entry : concurrentHashMap.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                this.an.a(jSONObject);
            } catch (JSONException e2) {
                IronLog.INTERNAL.error("got the following error " + e2.getMessage());
                e2.printStackTrace();
            }
            com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(M.a().b() == M.a.INITIATED ? 51 : 50, IronSourceUtils.getJsonForMetaData(str, list, metaDataValue)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, boolean z) {
        IronLog.API.verbose("userId = " + str + ", isFromPublisher = " + z);
        this.k = str;
        if (z) {
            com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(52, IronSourceUtils.getJsonForUserId(false)));
        }
    }

    @Override // com.ironsource.mediationsdk.utils.i
    public final void a(List<IronSource.AD_UNIT> list, boolean z, com.ironsource.mediationsdk.model.g gVar) {
        IronSource.AD_UNIT[] values;
        IronLog.INTERNAL.verbose("");
        try {
            this.W = list;
            this.V = true;
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "onInitSuccess()", 1);
            IronSourceUtils.sendAutomationLog("init success");
            if (z) {
                JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
                try {
                    mediationAdditionalData.put("revived", true);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(114, mediationAdditionalData));
            }
            Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
            if (currentActiveActivity != null) {
                String screenSizeParams = AdapterUtils.getScreenSizeParams(currentActiveActivity);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(IronSourceConstants.EVENTS_EXT1, screenSizeParams);
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
                com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(IronSourceConstants.TROUBLESHOOTING_SCREEN_SIZE, jSONObject));
            }
            com.ironsource.mediationsdk.a.d.e().d();
            com.ironsource.mediationsdk.a.h.e().d();
            C1347d a2 = C1347d.a();
            String str = this.j;
            String str2 = this.k;
            a2.f11099a = str;
            a2.f11100b = str2;
            for (IronSource.AD_UNIT ad_unit : IronSource.AD_UNIT.values()) {
                if (this.X.contains(ad_unit)) {
                    if (list.contains(ad_unit)) {
                        b(ad_unit);
                    } else {
                        a(ad_unit, false);
                    }
                }
            }
            E();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized AbstractAdapter b(String str) {
        try {
            AbstractAdapter abstractAdapter = this.R;
            if (abstractAdapter != null && abstractAdapter.getProviderName().equals(str)) {
                return this.R;
            }
        } catch (Exception e2) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "getOfferwallAdapter exception: " + e2, 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Placement b() {
        com.ironsource.mediationsdk.model.o oVar = this.i.f11449c.f11254a;
        if (oVar != null) {
            return oVar.a();
        }
        return null;
    }

    public final String b(Context context) {
        String str;
        com.ironsource.mediationsdk.utils.p tokenSettings;
        JSONObject jSONObject;
        a((int) IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_CALLED, (JSONObject) null);
        if (context == null) {
            IronLog.API.error("bidding data cannot be retrieved, context required");
            return null;
        }
        M.a b2 = M.a().b();
        if (b2 == M.a.NOT_INIT) {
            IronLog.API.error("bidding data cannot be retrieved, SDK not initialized");
            a((int) IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_RETURNED_NULL, (JSONObject) null);
            return null;
        } else if (b2 == M.a.INIT_FAILED) {
            IronLog.API.error("bidding data cannot be retrieved, SDK failed to initialize");
            a((int) IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_RETURNED_NULL, (JSONObject) null);
            return null;
        } else {
            try {
                com.ironsource.mediationsdk.utils.l lVar = this.i;
                if (lVar == null) {
                    lVar = D.a(context);
                }
                if (b2 == M.a.NOT_INIT) {
                    this.an.a(context);
                    this.an.b(IronSourceUtils.getSDKVersion());
                    this.an.c(this.p);
                    this.an.d(ConfigFile.getConfigFile().getPluginType());
                    this.an.a(com.ironsource.c.a.a());
                    this.an.b(IronSourceUtils.isGooglePlayInstalled(context));
                }
                if (b2 != M.a.INITIATED) {
                    M.a().a(lVar);
                    if (lVar != null) {
                        M.a().a(context, lVar);
                    }
                }
                if (lVar == null || !lVar.b()) {
                    tokenSettings = new com.ironsource.mediationsdk.utils.p();
                } else {
                    tokenSettings = lVar.f11449c.f11258e.c();
                    if (!tokenSettings.f11473d) {
                        tokenSettings.f11471b = lVar.f11448b.a(IronSourceConstants.IRONSOURCE_CONFIG_NAME);
                    }
                }
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(tokenSettings, "tokenSettings");
                if (tokenSettings.f11473d) {
                    com.ironsource.environment.f.b bVar = new com.ironsource.environment.f.b();
                    Intrinsics.checkNotNullParameter(context, "context");
                    JSONObject a2 = C1356m.a(context, bVar.f10589a);
                    Intrinsics.checkNotNullExpressionValue(a2, "mGlobalDataReader.getDat…s(context, mTokenKeyList)");
                    jSONObject = com.ironsource.environment.f.b.a(a2);
                } else {
                    NetworkSettings it = tokenSettings.f11471b;
                    if (it != null) {
                        C1347d a3 = C1347d.a();
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        AbstractAdapter a4 = a3.a(it, it.getApplicationSettings(), true, false);
                        if (a4 != null) {
                            jSONObject = C1349f.a().a(a4.getPlayerBiddingData(), tokenSettings.f11472c, tokenSettings.f11470a);
                        }
                    }
                    jSONObject = null;
                }
                C1349f.a().a(jSONObject, true);
                str = tokenSettings.f11474e ? IronSourceAES.compressAndEncrypt(jSONObject.toString()) : IronSourceAES.encrypt(jSONObject.toString());
            } catch (Throwable th) {
                a((int) IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_ENRICH_TOKEN_ERROR, (JSONObject) null);
                IronLog.API.error("got error during token creation: " + th.getMessage());
                str = null;
            }
            if (str == null) {
                a((int) IronSourceConstants.TROUBLESHOOTING_DO_GET_BIDDING_DATA_RETURNED_NULL, (JSONObject) null);
            }
            return str;
        }
    }

    public final synchronized void b(Activity activity, String str, String str2) {
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "loadISDemandOnlyRewardedVideo() instanceId=" + str, 1);
        if (!this.w) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "initISDemandOnly() must be called before loadISDemandOnlyRewardedVideo()", 3);
            Z.a().a(str, new IronSourceError(508, "initISDemandOnly() must be called before loadISDemandOnlyRewardedVideo()"));
        } else if (!this.u) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Rewarded video was initialized in mediation mode", 3);
            Z.a().a(str, new IronSourceError(508, "Rewarded video was initialized in mediation mode"));
        } else {
            boolean z = false;
            if (activity != null) {
                ContextProvider.getInstance().updateActivity(activity);
            } else if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
                if (str2 != null) {
                    z = true;
                }
                a((int) IronSourceConstants.TROUBLESHOOTING_DO_CALLED_RV_LOAD_WITH_NO_ACTIVITY, IronSourceUtils.getMediationAdditionalData(true, z, 1));
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Rewarded video was initialized and loaded without Activity", 3);
                Z.a().a(str, new IronSourceError(IronSourceError.ERROR_DO_RV_LOAD_MISSING_ACTIVITY, "Rewarded video was initialized and loaded without Activity"));
                return;
            }
            M.a b2 = M.a().b();
            if (b2 == M.a.INIT_FAILED) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                Z.a().a(str, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else if (b2 == M.a.INIT_IN_PROGRESS) {
                if (M.a().c()) {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    Z.a().a(str, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                    return;
                }
                synchronized (this.ak) {
                    this.ak.add(str);
                }
                if (str2 != null) {
                    a((int) IronSourceConstants.TROUBLESHOOTING_DO_IAB_RV_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, true, this.L));
                }
            } else {
                synchronized (this.ak) {
                    if (this.am == null) {
                        this.ak.add(str);
                        if (str2 != null) {
                            a((int) IronSourceConstants.TROUBLESHOOTING_DO_IAB_RV_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, true, this.L));
                        }
                    } else if (!d()) {
                        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "No rewarded video configurations found", 3);
                        Z.a().a(str, ErrorBuilder.buildInitFailedError("the server response does not contain rewarded video data", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                    } else if (str2 == null) {
                        this.am.a(str, (String) null, false);
                    } else {
                        this.am.a(str, str2, true);
                    }
                }
            }
        }
    }

    public final void b(boolean z) {
        this.y = Boolean.valueOf(z);
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "setConsent : " + z, 1);
        C1347d.a().a(z);
        if (this.R != null) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.ADAPTER_API, "Offerwall | setConsent(consent:" + z + ")", 1);
            this.R.setConsent(z);
        }
        int i = !z ? 41 : 40;
        this.an.a(z);
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, IronSourceUtils.getMediationAdditionalData(false)));
    }

    public final synchronized void c(Activity activity, String str, String str2) {
        if (str2 != null) {
            d(activity, str, str2);
            return;
        }
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "adm cannot be null", 3);
        A.a().a(str, new IronSourceError(510, "adm cannot be null"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0028, code lost:
        if (r3.a_() != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002a, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003d, code lost:
        if (r3.b() != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0048 A[Catch: all -> 0x0084, TryCatch #0 {all -> 0x0084, blocks: (B:26:0x0040, B:28:0x0048, B:29:0x005b, B:33:0x0064), top: B:41:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c() {
        /*
            r9 = this;
            java.lang.String r0 = "isRewardedVideoAvailable():"
            r1 = 1
            r2 = 0
            boolean r3 = r9.u     // Catch: java.lang.Throwable -> L89
            if (r3 == 0) goto L13
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r3 = r9.f10675f     // Catch: java.lang.Throwable -> L89
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r4 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Throwable -> L89
            java.lang.String r5 = "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead"
            r6 = 3
            r3.log(r4, r5, r6)     // Catch: java.lang.Throwable -> L89
            return r2
        L13:
            boolean r3 = r9.F     // Catch: java.lang.Throwable -> L89
            if (r3 != 0) goto L35
            boolean r3 = r9.ai     // Catch: java.lang.Throwable -> L89
            if (r3 == 0) goto L1c
            goto L35
        L1c:
            boolean r3 = r9.E     // Catch: java.lang.Throwable -> L89
            if (r3 == 0) goto L2e
            com.ironsource.mediationsdk.z r3 = r9.z     // Catch: java.lang.Throwable -> L89
            if (r3 == 0) goto L2c
            boolean r3 = r3.a_()     // Catch: java.lang.Throwable -> L89
            if (r3 == 0) goto L2c
        L2a:
            r3 = r1
            goto L40
        L2c:
            r3 = r2
            goto L40
        L2e:
            com.ironsource.mediationsdk.ab r3 = r9.f10671b     // Catch: java.lang.Throwable -> L89
            boolean r3 = r3.c()     // Catch: java.lang.Throwable -> L89
            goto L40
        L35:
            com.ironsource.mediationsdk.adunit.c.h r3 = r9.D     // Catch: java.lang.Throwable -> L89
            if (r3 == 0) goto L2c
            boolean r3 = r3.b()     // Catch: java.lang.Throwable -> L89
            if (r3 == 0) goto L2c
            goto L2a
        L40:
            org.json.JSONObject r4 = com.ironsource.mediationsdk.utils.IronSourceUtils.getMediationAdditionalData(r2)     // Catch: java.lang.Throwable -> L84
            boolean r5 = r9.E     // Catch: java.lang.Throwable -> L84
            if (r5 == 0) goto L5b
            java.lang.String r5 = "programmatic"
            int r6 = r9.L     // Catch: java.lang.Throwable -> L84
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L84
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r6}     // Catch: java.lang.Throwable -> L84
            java.lang.Object[][] r6 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L84
            r6[r2] = r5     // Catch: java.lang.Throwable -> L84
            a(r4, r6)     // Catch: java.lang.Throwable -> L84
        L5b:
            com.ironsource.mediationsdk.a.c r5 = new com.ironsource.mediationsdk.a.c     // Catch: java.lang.Throwable -> L84
            if (r3 == 0) goto L62
            r6 = 1101(0x44d, float:1.543E-42)
            goto L64
        L62:
            r6 = 1102(0x44e, float:1.544E-42)
        L64:
            r5.<init>(r6, r4)     // Catch: java.lang.Throwable -> L84
            com.ironsource.mediationsdk.a.h r4 = com.ironsource.mediationsdk.a.h.e()     // Catch: java.lang.Throwable -> L84
            r4.b(r5)     // Catch: java.lang.Throwable -> L84
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r4 = r9.f10675f     // Catch: java.lang.Throwable -> L84
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r5 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Throwable -> L84
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L84
            java.lang.StringBuilder r6 = r6.append(r3)     // Catch: java.lang.Throwable -> L84
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L84
            r4.log(r5, r6, r1)     // Catch: java.lang.Throwable -> L84
            r2 = r3
            goto La8
        L84:
            r4 = move-exception
            r8 = r4
            r4 = r3
            r3 = r8
            goto L8b
        L89:
            r3 = move-exception
            r4 = r2
        L8b:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r9.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r0)
            java.lang.StringBuilder r0 = r7.append(r4)
            java.lang.String r0 = r0.toString()
            r5.log(r6, r0, r1)
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r0 = r9.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r1 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            java.lang.String r4 = "isRewardedVideoAvailable()"
            r0.logException(r1, r4, r3)
        La8:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.c():boolean");
    }

    public final boolean c(String str) {
        try {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, this.f10670a + ":setDynamicUserId(dynamicUserId:" + str + ")", 1);
            com.ironsource.d.a aVar = new com.ironsource.d.a();
            if (!a(str, 1, 128)) {
                aVar.a(ErrorBuilder.buildInvalidKeyValueError(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, IronSourceConstants.SUPERSONIC_CONFIG_NAME, "dynamicUserId is invalid, should be between 1-128 chars in length."));
            }
            if (!aVar.a()) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, aVar.b().toString(), 2);
                return false;
            }
            this.m = str;
            com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(52, IronSourceUtils.getJsonForUserId(true)));
            return true;
        } catch (Exception e2) {
            this.f10675f.logException(IronSourceLogger.IronSourceTag.API, this.f10670a + ":setDynamicUserId(dynamicUserId:" + str + ")", e2);
            return false;
        }
    }

    public final synchronized void d(Activity activity, String str, String str2) {
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "loadISDemandOnlyInterstitial() instanceId=" + str, 1);
        if (!this.x) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()", 3);
            A.a().a(str, new IronSourceError(510, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"));
        } else if (!this.v) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in mediation mode. Use loadInterstitial instead", 3);
            A.a().a(str, new IronSourceError(510, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"));
        } else {
            boolean z = false;
            if (activity != null) {
                ContextProvider.getInstance().updateActivity(activity);
            } else if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
                if (str2 != null) {
                    z = true;
                }
                b(IronSourceConstants.TROUBLESHOOTING_DO_CALLED_IS_LOAD_WITH_NO_ACTIVITY, IronSourceUtils.getMediationAdditionalData(true, z, 1));
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized and loaded without Activity", 3);
                A.a().a(str, new IronSourceError(IronSourceError.ERROR_DO_IS_LOAD_MISSING_ACTIVITY, "Interstitial was initialized and loaded without Activity"));
                return;
            }
            M.a b2 = M.a().b();
            if (b2 == M.a.INIT_FAILED) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                A.a().a(str, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            } else if (b2 == M.a.INIT_IN_PROGRESS) {
                if (M.a().c()) {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    A.a().a(str, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                    return;
                }
                synchronized (this.aj) {
                    this.aj.add(str);
                }
                if (str2 != null) {
                    b(IronSourceConstants.TROUBLESHOOTING_DO_IAB_IS_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, true, 1));
                }
            } else {
                synchronized (this.aj) {
                    if (this.M == null) {
                        this.aj.add(str);
                        if (str2 != null) {
                            b(IronSourceConstants.TROUBLESHOOTING_DO_IAB_IS_LOAD_FAILED_INIT_IN_PROGRESS, IronSourceUtils.getMediationAdditionalData(true, true, 1));
                        }
                    } else if (!h()) {
                        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "No interstitial configurations found", 3);
                        A.a().a(str, ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
                    } else if (str2 == null) {
                        this.M.a(str, (String) null, false);
                    } else {
                        this.M.a(str, str2, true);
                    }
                }
            }
        }
    }

    public final void d(String str) {
        try {
            this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, this.f10670a + ":setMediationType(mediationType:" + str + ")", 1);
            if (a(str, 1, 64) && v(str)) {
                this.o = str;
            } else {
                this.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length", 1);
            }
        } catch (Exception e2) {
            this.f10675f.logException(IronSourceLogger.IronSourceTag.API, this.f10670a + ":setMediationType(mediationType:" + str + ")", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        com.ironsource.mediationsdk.utils.l lVar = this.i;
        return (lVar == null || lVar.f11449c == null || this.i.f11449c.f11254a == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InterstitialPlacement e() {
        com.ironsource.mediationsdk.model.h hVar = this.i.f11449c.f11255b;
        if (hVar != null) {
            return hVar.a();
        }
        return null;
    }

    public final void e(String str) {
        String str2 = "showRewardedVideo(" + str + ")";
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, str2, 1);
        try {
            if (this.u) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead", 3);
                this.f10676g.onRewardedVideoAdShowFailed(ErrorBuilder.buildInitFailedError("Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else if (!d()) {
                this.f10676g.onRewardedVideoAdShowFailed(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else if (this.E) {
                q(str);
            } else {
                Placement r = r(str);
                if (r != null) {
                    this.f10671b.a(r);
                    this.f10671b.a(r.getPlacementName());
                }
            }
        } catch (Exception e2) {
            this.f10675f.logException(IronSourceLogger.IronSourceTag.API, str2, e2);
            this.f10676g.onRewardedVideoAdShowFailed(new IronSourceError(510, e2.getMessage()));
        }
    }

    @Override // com.ironsource.mediationsdk.utils.i
    public final void f() {
        synchronized (this.ad) {
            if (this.ad.booleanValue()) {
                this.ad = Boolean.FALSE;
                C1353j.a().a(this.ae, new IronSourceError(603, "init had failed"));
                this.ae = null;
                this.af = null;
            }
        }
        if (this.J) {
            this.J = false;
            C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
        }
        if (this.G) {
            this.G = false;
            C1359p.a().a(IronSource.AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
        synchronized (this.aj) {
            Iterator<String> it = this.aj.iterator();
            while (it.hasNext()) {
                A.a().a(it.next(), ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            }
            this.aj.clear();
        }
        synchronized (this.ak) {
            Iterator<String> it2 = this.ak.iterator();
            while (it2.hasNext()) {
                Z.a().a(it2.next(), ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            }
            this.ak.clear();
        }
    }

    public final synchronized void f(String str) {
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, "showISDemandOnlyRewardedVideo() instanceId=" + str, 1);
        try {
        } catch (Exception e2) {
            this.f10675f.logException(IronSourceLogger.IronSourceTag.API, "showISDemandOnlyRewardedVideo", e2);
            Z.a().b(str, new IronSourceError(510, e2.getMessage()));
        }
        if (!this.u) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead", 3);
            Z.a().b(str, new IronSourceError(508, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"));
            return;
        }
        C1364u c1364u = this.am;
        if (c1364u == null) {
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Rewarded video was not initiated", 3);
            Z.a().b(str, new IronSourceError(508, "Rewarded video was not initiated"));
        } else if (c1364u.f11395a.containsKey(str)) {
            C1365v c1365v = c1364u.f11395a.get(str);
            c1364u.a(IronSourceConstants.RV_INSTANCE_SHOW, c1365v);
            c1365v.a();
        } else {
            C1364u.a(1500, str);
            Z.a().b(str, ErrorBuilder.buildNonExistentInstanceError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0023, code lost:
        if (r3.b() != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003c, code lost:
        if (r3.e() != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g() {
        /*
            r9 = this;
            java.lang.String r0 = "isInterstitialReady():"
            r1 = 1
            r2 = 0
            boolean r3 = r9.v     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L13
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r3 = r9.f10675f     // Catch: java.lang.Throwable -> L73
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r4 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Throwable -> L73
            java.lang.String r5 = "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead"
            r6 = 3
            r3.log(r4, r5, r6)     // Catch: java.lang.Throwable -> L73
            return r2
        L13:
            boolean r3 = r9.H     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L34
            boolean r3 = r9.I     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L29
            com.ironsource.mediationsdk.adunit.c.g r3 = r9.C     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L27
            boolean r3 = r3.b()     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L27
        L25:
            r3 = r1
            goto L3f
        L27:
            r3 = r2
            goto L3f
        L29:
            com.ironsource.mediationsdk.S r3 = r9.A     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L27
            boolean r3 = r3.e()     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L27
            goto L25
        L34:
            com.ironsource.mediationsdk.E r3 = r9.f10672c     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L27
            boolean r3 = r3.e()     // Catch: java.lang.Throwable -> L73
            if (r3 == 0) goto L27
            goto L25
        L3f:
            boolean r4 = r9.H     // Catch: java.lang.Throwable -> L6e
            org.json.JSONObject r4 = com.ironsource.mediationsdk.utils.IronSourceUtils.getMediationAdditionalData(r2, r4, r1)     // Catch: java.lang.Throwable -> L6e
            com.ironsource.mediationsdk.a.c r5 = new com.ironsource.mediationsdk.a.c     // Catch: java.lang.Throwable -> L6e
            if (r3 == 0) goto L4c
            r6 = 2101(0x835, float:2.944E-42)
            goto L4e
        L4c:
            r6 = 2102(0x836, float:2.946E-42)
        L4e:
            r5.<init>(r6, r4)     // Catch: java.lang.Throwable -> L6e
            com.ironsource.mediationsdk.a.d r4 = com.ironsource.mediationsdk.a.d.e()     // Catch: java.lang.Throwable -> L6e
            r4.b(r5)     // Catch: java.lang.Throwable -> L6e
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r4 = r9.f10675f     // Catch: java.lang.Throwable -> L6e
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r5 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Throwable -> L6e
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L6e
            java.lang.StringBuilder r6 = r6.append(r3)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L6e
            r4.log(r5, r6, r1)     // Catch: java.lang.Throwable -> L6e
            r2 = r3
            goto L92
        L6e:
            r4 = move-exception
            r8 = r4
            r4 = r3
            r3 = r8
            goto L75
        L73:
            r3 = move-exception
            r4 = r2
        L75:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r9.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r0)
            java.lang.StringBuilder r0 = r7.append(r4)
            java.lang.String r0 = r0.toString()
            r5.log(r6, r0, r1)
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r0 = r9.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r1 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            java.lang.String r4 = "isInterstitialReady()"
            r0.logException(r1, r4, r3)
        L92:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.g():boolean");
    }

    public final synchronized boolean g(String str) {
        C1364u c1364u = this.am;
        if (c1364u != null) {
            if (c1364u.f11395a.containsKey(str)) {
                C1365v c1365v = c1364u.f11395a.get(str);
                if (c1365v.b()) {
                    C1364u.a((int) IronSourceConstants.RV_INSTANCE_READY_TRUE, c1365v, (Object[][]) null);
                    return true;
                }
                C1364u.a((int) IronSourceConstants.RV_INSTANCE_READY_FALSE, c1365v, (Object[][]) null);
            } else {
                C1364u.a(1500, str);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        if (android.text.TextUtils.isEmpty(r7) == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "showInterstitial("
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r7)
            java.lang.String r1 = ")"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r1 = r6.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r2 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            r3 = 1
            r1.log(r2, r0, r3)
            r1 = 510(0x1fe, float:7.15E-43)
            boolean r2 = r6.v     // Catch: java.lang.Exception -> L92
            if (r2 == 0) goto L38
            java.lang.String r7 = "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r2 = r6.f10675f     // Catch: java.lang.Exception -> L92
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r3 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Exception -> L92
            r4 = 3
            r2.log(r3, r7, r4)     // Catch: java.lang.Exception -> L92
            com.ironsource.mediationsdk.sdk.i r2 = r6.f10676g     // Catch: java.lang.Exception -> L92
            com.ironsource.mediationsdk.logger.IronSourceError r3 = new com.ironsource.mediationsdk.logger.IronSourceError     // Catch: java.lang.Exception -> L92
            r3.<init>(r1, r7)     // Catch: java.lang.Exception -> L92
            r2.onInterstitialAdShowFailed(r3)     // Catch: java.lang.Exception -> L92
            return
        L38:
            boolean r2 = r6.h()     // Catch: java.lang.Exception -> L92
            if (r2 != 0) goto L4c
            com.ironsource.mediationsdk.sdk.i r7 = r6.f10676g     // Catch: java.lang.Exception -> L92
            java.lang.String r2 = "showInterstitial can't be called before the Interstitial ad unit initialization completed successfully"
            java.lang.String r3 = "Interstitial"
            com.ironsource.mediationsdk.logger.IronSourceError r2 = com.ironsource.mediationsdk.utils.ErrorBuilder.buildInitFailedError(r2, r3)     // Catch: java.lang.Exception -> L92
            r7.onInterstitialAdShowFailed(r2)     // Catch: java.lang.Exception -> L92
            return
        L4c:
            boolean r2 = r6.H     // Catch: java.lang.Exception -> L92
            if (r2 == 0) goto L54
            r6.t(r7)     // Catch: java.lang.Exception -> L92
            return
        L54:
            com.ironsource.mediationsdk.model.InterstitialPlacement r2 = r6.u(r7)     // Catch: java.lang.Exception -> L92
            r3 = 0
            org.json.JSONObject r3 = com.ironsource.mediationsdk.utils.IronSourceUtils.getMediationAdditionalData(r3)     // Catch: java.lang.Exception -> L92
            java.lang.String r4 = "placement"
            if (r2 == 0) goto L69
            java.lang.String r7 = r2.getPlacementName()     // Catch: org.json.JSONException -> L70 java.lang.Exception -> L92
        L65:
            r3.put(r4, r7)     // Catch: org.json.JSONException -> L70 java.lang.Exception -> L92
            goto L74
        L69:
            boolean r5 = android.text.TextUtils.isEmpty(r7)     // Catch: org.json.JSONException -> L70 java.lang.Exception -> L92
            if (r5 != 0) goto L74
            goto L65
        L70:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Exception -> L92
        L74:
            com.ironsource.mediationsdk.a.c r7 = new com.ironsource.mediationsdk.a.c     // Catch: java.lang.Exception -> L92
            r4 = 2100(0x834, float:2.943E-42)
            r7.<init>(r4, r3)     // Catch: java.lang.Exception -> L92
            com.ironsource.mediationsdk.a.d r3 = com.ironsource.mediationsdk.a.d.e()     // Catch: java.lang.Exception -> L92
            r3.b(r7)     // Catch: java.lang.Exception -> L92
            if (r2 == 0) goto L91
            com.ironsource.mediationsdk.E r7 = r6.f10672c     // Catch: java.lang.Exception -> L92
            r7.a(r2)     // Catch: java.lang.Exception -> L92
            com.ironsource.mediationsdk.E r7 = r6.f10672c     // Catch: java.lang.Exception -> L92
            r2.getPlacementName()     // Catch: java.lang.Exception -> L92
            r7.d()     // Catch: java.lang.Exception -> L92
        L91:
            return
        L92:
            r7 = move-exception
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r2 = r6.f10675f
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r3 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            r2.logException(r3, r0, r7)
            com.ironsource.mediationsdk.sdk.i r0 = r6.f10676g
            com.ironsource.mediationsdk.logger.IronSourceError r2 = new com.ironsource.mediationsdk.logger.IronSourceError
            java.lang.String r7 = r7.getMessage()
            r2.<init>(r1, r7)
            r0.onInterstitialAdShowFailed(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.h(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        com.ironsource.mediationsdk.utils.l lVar = this.i;
        return (lVar == null || lVar.f11449c == null || this.i.f11449c.f11255b == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        com.ironsource.mediationsdk.utils.l lVar = this.i;
        return (lVar == null || lVar.f11449c == null || this.i.f11449c.f11256c == null) ? false : true;
    }

    public final synchronized boolean i(String str) {
        C1362s c1362s = this.M;
        if (c1362s != null) {
            if (c1362s.f11332a.containsKey(str)) {
                C1363t c1363t = c1362s.f11332a.get(str);
                if (c1363t.b()) {
                    C1362s.a((int) IronSourceConstants.IS_INSTANCE_READY_TRUE, c1363t, (Object[][]) null);
                    return true;
                }
                C1362s.a((int) IronSourceConstants.IS_INSTANCE_READY_FALSE, c1363t, (Object[][]) null);
            } else {
                C1362s.a(2500, str);
            }
        }
        return false;
    }

    public final void j(String str) {
        String str2 = "showOfferwall(" + str + ")";
        this.f10675f.log(IronSourceLogger.IronSourceTag.API, str2, 1);
        try {
            if (!i()) {
                this.f10676g.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
                return;
            }
            com.ironsource.mediationsdk.model.j a2 = this.i.f11449c.f11256c.a(str);
            if (a2 == null) {
                this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
                a2 = this.i.f11449c.f11256c.a();
                if (a2 == null) {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found, please make sure you are using the right placements.", 3);
                    return;
                }
            }
            this.f10673d.a(a2.f11272b);
        } catch (Exception e2) {
            this.f10675f.logException(IronSourceLogger.IronSourceTag.API, str2, e2);
            this.f10676g.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
        }
    }

    public final boolean j() {
        try {
            O o = this.f10673d;
            if (o != null) {
                return o.a();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final InterstitialPlacement k(String str) {
        try {
            InterstitialPlacement s = s(str);
            if (s == null) {
                try {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 2);
                    s = e();
                } catch (Exception unused) {
                    return s;
                }
            }
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "getPlacementInfo(placement: " + str + "):" + s, 1);
            return s;
        } catch (Exception unused2) {
            return null;
        }
    }

    public final String k() {
        return this.j;
    }

    public final Placement l(String str) {
        try {
            Placement p = p(str);
            if (p == null) {
                try {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 2);
                    p = b();
                } catch (Exception unused) {
                    return p;
                }
            }
            this.f10675f.log(IronSourceLogger.IronSourceTag.API, "getPlacementInfo(placement: " + str + "):" + p, 1);
            return p;
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String l() {
        /*
            r8 = this;
            r0 = 83005(0x1443d, float:1.16315E-40)
            r1 = 0
            a(r0, r1)
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.API
            java.lang.String r2 = ""
            r0.info(r2)
            com.ironsource.mediationsdk.utils.l r0 = r8.i
            if (r0 != 0) goto L1b
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.API
            java.lang.String r2 = "bidding data cannot be retrieved, SDK not initialized"
            r0.error(r2)
            goto Lf2
        L1b:
            com.ironsource.mediationsdk.model.n r0 = r0.f11448b
            java.lang.String r2 = "IronSource"
            com.ironsource.mediationsdk.model.NetworkSettings r0 = r0.a(r2)
            if (r0 == 0) goto Lf2
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>()
            com.ironsource.mediationsdk.d r3 = com.ironsource.mediationsdk.C1347d.a()
            org.json.JSONObject r4 = r0.getApplicationSettings()
            r5 = 0
            r6 = 1
            com.ironsource.mediationsdk.AbstractAdapter r0 = r3.a(r0, r4, r6, r5)
            if (r0 == 0) goto L3e
            org.json.JSONObject r2 = r0.getPlayerBiddingData()     // Catch: java.lang.Exception -> Ld0
        L3e:
            com.ironsource.mediationsdk.utils.l r0 = r8.i     // Catch: java.lang.Exception -> Ld0
            com.ironsource.mediationsdk.model.g r0 = r0.f11449c     // Catch: java.lang.Exception -> Ld0
            com.ironsource.sdk.f.a r0 = r0.f11258e     // Catch: java.lang.Exception -> Ld0
            com.ironsource.mediationsdk.utils.p r0 = r0.c()     // Catch: java.lang.Exception -> Ld0
            boolean r3 = r0.f11473d     // Catch: java.lang.Exception -> Ld0
            if (r3 == 0) goto L5d
            com.ironsource.environment.f.b r2 = new com.ironsource.environment.f.b     // Catch: java.lang.Exception -> Ld0
            r2.<init>()     // Catch: java.lang.Exception -> Ld0
            org.json.JSONObject r2 = r2.a()     // Catch: java.lang.Exception -> Ld0
            com.ironsource.mediationsdk.f r3 = com.ironsource.mediationsdk.C1349f.a()     // Catch: java.lang.Exception -> Ld0
            r3.a(r2, r6)     // Catch: java.lang.Exception -> Ld0
            goto L69
        L5d:
            com.ironsource.mediationsdk.f r3 = com.ironsource.mediationsdk.C1349f.a()     // Catch: java.lang.Exception -> Ld0
            org.json.JSONObject r4 = r0.f11472c     // Catch: java.lang.Exception -> Ld0
            java.util.ArrayList<java.lang.String> r5 = r0.f11470a     // Catch: java.lang.Exception -> Ld0
            org.json.JSONObject r2 = r3.a(r2, r4, r5)     // Catch: java.lang.Exception -> Ld0
        L69:
            com.ironsource.mediationsdk.logger.IronLog r3 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL     // Catch: java.lang.Exception -> Ld0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Ld0
            java.lang.String r5 = "bidding data: "
            r4.<init>(r5)     // Catch: java.lang.Exception -> Ld0
            java.lang.StringBuilder r4 = r4.append(r2)     // Catch: java.lang.Exception -> Ld0
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> Ld0
            r3.verbose(r4)     // Catch: java.lang.Exception -> Ld0
            if (r2 == 0) goto Lf2
            com.ironsource.mediationsdk.logger.IronLog r3 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL     // Catch: java.lang.Exception -> Ld0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Ld0
            java.lang.String r5 = "raw biddingData length: "
            r4.<init>(r5)     // Catch: java.lang.Exception -> Ld0
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Exception -> Ld0
            int r5 = r5.length()     // Catch: java.lang.Exception -> Ld0
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Exception -> Ld0
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> Ld0
            r3.verbose(r4)     // Catch: java.lang.Exception -> Ld0
            boolean r0 = r0.f11474e     // Catch: java.lang.Exception -> Ld0
            if (r0 == 0) goto La8
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Exception -> Ld0
            java.lang.String r0 = com.ironsource.mediationsdk.utils.IronSourceAES.compressAndEncrypt(r0)     // Catch: java.lang.Exception -> Ld0
            goto Lb0
        La8:
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Exception -> Ld0
            java.lang.String r0 = com.ironsource.mediationsdk.utils.IronSourceAES.encrypt(r0)     // Catch: java.lang.Exception -> Ld0
        Lb0:
            if (r0 == 0) goto Lf3
            com.ironsource.mediationsdk.logger.IronLog r2 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL     // Catch: java.lang.Exception -> Lcb
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lcb
            java.lang.String r4 = "biddingData length: "
            r3.<init>(r4)     // Catch: java.lang.Exception -> Lcb
            int r4 = r0.length()     // Catch: java.lang.Exception -> Lcb
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Exception -> Lcb
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> Lcb
            r2.verbose(r3)     // Catch: java.lang.Exception -> Lcb
            goto Lf3
        Lcb:
            r2 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
            goto Ld2
        Ld0:
            r0 = move-exception
            r2 = r1
        Ld2:
            r3 = 83007(0x1443f, float:1.16318E-40)
            a(r3, r1)
            com.ironsource.mediationsdk.logger.IronLog r3 = com.ironsource.mediationsdk.logger.IronLog.API
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "got error during creating the token: "
            r4.<init>(r5)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r4.append(r0)
            java.lang.String r0 = r0.toString()
            r3.error(r0)
            r0 = r2
            goto Lf3
        Lf2:
            r0 = r1
        Lf3:
            if (r0 != 0) goto Lfb
            r2 = 83006(0x1443e, float:1.16316E-40)
            a(r2, r1)
        Lfb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.l():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m() {
        return this.u || this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m(String str) {
        if (this.v) {
            return false;
        }
        boolean z = w(str) != k.a.f11445d;
        if (z) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(this.v, this.H, 1);
            try {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, str);
                if (this.H) {
                    mediationAdditionalData.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
                }
            } catch (Exception unused) {
            }
            com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(IronSourceConstants.IS_CHECK_CAPPED_TRUE, mediationAdditionalData));
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n(String str) {
        if (C()) {
            com.ironsource.mediationsdk.model.f fVar = null;
            try {
                fVar = this.i.f11449c.f11257d.a(str);
                if (fVar == null && (fVar = this.i.f11449c.f11257d.a()) == null) {
                    this.f10675f.log(IronSourceLogger.IronSourceTag.API, "Banner default placement was not found", 3);
                    return false;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (fVar == null) {
                return false;
            }
            return com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getApplicationContext(), fVar.getPlacementName());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int o(java.lang.String r5) {
        /*
            r4 = this;
            com.ironsource.mediationsdk.utils.l r0 = r4.i
            if (r0 == 0) goto L41
            com.ironsource.mediationsdk.model.g r0 = r0.f11449c
            if (r0 == 0) goto L41
            com.ironsource.mediationsdk.utils.l r0 = r4.i
            com.ironsource.mediationsdk.model.g r0 = r0.f11449c
            com.ironsource.mediationsdk.model.o r0 = r0.f11254a
            if (r0 != 0) goto L11
            goto L41
        L11:
            com.ironsource.mediationsdk.model.Placement r5 = r4.p(r5)     // Catch: java.lang.Exception -> L2a
            if (r5 != 0) goto L2f
            com.ironsource.mediationsdk.model.Placement r5 = r4.b()     // Catch: java.lang.Exception -> L28
            if (r5 != 0) goto L2f
            java.lang.String r0 = "Default placement was not found"
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r1 = r4.f10675f     // Catch: java.lang.Exception -> L28
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r2 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Exception -> L28
            r3 = 3
            r1.log(r2, r0, r3)     // Catch: java.lang.Exception -> L28
            goto L2f
        L28:
            r0 = move-exception
            goto L2c
        L2a:
            r0 = move-exception
            r5 = 0
        L2c:
            r0.printStackTrace()
        L2f:
            if (r5 != 0) goto L34
            int r5 = com.ironsource.mediationsdk.utils.k.a.f11445d
            return r5
        L34:
            com.ironsource.environment.ContextProvider r0 = com.ironsource.environment.ContextProvider.getInstance()
            android.content.Context r0 = r0.getApplicationContext()
            int r5 = com.ironsource.mediationsdk.utils.k.b(r0, r5)
            return r5
        L41:
            int r5 = com.ironsource.mediationsdk.utils.k.a.f11445d
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.H.o(java.lang.String):int");
    }
}
