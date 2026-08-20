package com.ironsource.mediationsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.firebase.messaging.Constants;
import com.ironsource.mediationsdk.C;
import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.model.k;
import com.ironsource.sdk.controller.u;
import com.onesignal.OSNotificationFormatHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class l {
    private final String A;
    private final String B;
    private final String C;
    private final String D;
    private final String E;
    private final String F;
    private final String G;
    private final String H;
    private final String I;
    private final String J;
    private final String K;
    private final String L;
    private final String M;
    private final String N;
    private final String O;
    private final String P;
    private final String Q;
    private final String R;
    private final String S;
    private final String T;
    private final String U;
    private final String V;
    private final String W;
    private final String X;
    private final String Y;
    private final String Z;

    /* renamed from: a  reason: collision with root package name */
    public com.ironsource.mediationsdk.model.m f11447a;
    private final String aA;
    private final String aB;
    private final String aC;
    private final String aD;
    private final String aE;
    private final String aF;
    private final String aG;
    private final String aH;
    private final String aI;
    private final String aJ;
    private final String aK;
    private final String aL;
    private final String aM;
    private final String aN;
    private final String aO;
    private final String aP;
    private final String aQ;
    private final String aR;
    private final String aS;
    private final String aT;
    private final String aU;
    private final String aV;
    private final String aW;
    private final String aX;
    private final String aY;
    private final String aZ;
    private final String aa;
    private final String ab;
    private final String ac;
    private final String ad;
    private final String ae;
    private final String af;
    private final String ag;
    private final String ah;
    private final String ai;
    private final String aj;
    private final String ak;
    private final String al;
    private final String am;
    private final String an;
    private final String ao;
    private final String ap;
    private final String aq;
    private final String ar;
    private final String as;
    private final String at;
    private final String au;
    private final String av;
    private final String aw;
    private final String ax;
    private final String ay;
    private final String az;

    /* renamed from: b  reason: collision with root package name */
    public com.ironsource.mediationsdk.model.n f11448b;
    private final String ba;
    private final String bb;
    private final String bc;
    private final String bd;
    private final String be;
    private final String bf;
    private final String bg;
    private final String bh;
    private final String bi;
    private final String bj;
    private final String bk;
    private final String bl;
    private final String bm;
    private final String bn;
    private final String bo;
    private final String bp;
    private final String bq;
    private final String br;
    private final String bs;
    private final String bt;
    private String bu;
    private String bv;
    private Context bw;

    /* renamed from: c  reason: collision with root package name */
    public com.ironsource.mediationsdk.model.g f11449c;

    /* renamed from: d  reason: collision with root package name */
    public JSONObject f11450d;

    /* renamed from: e  reason: collision with root package name */
    public int f11451e;

    /* renamed from: f  reason: collision with root package name */
    private final String f11452f;

    /* renamed from: g  reason: collision with root package name */
    private final int f11453g;

    /* renamed from: h  reason: collision with root package name */
    private final int f11454h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final long r;
    private final int s;
    private final boolean t;
    private final int u;
    private final int v;
    private final int w;
    private final int x;
    private final String y;
    private final String z;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f11455a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f11456b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f11457c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f11458d = {1, 2, 3};
    }

    public l(Context context, String str, String str2, String str3) {
        this.f11452f = Constants.IPC_BUNDLE_KEY_SEND_ERROR;
        this.f11453g = 3;
        this.f11454h = 2;
        this.i = 60;
        this.j = 10000;
        this.k = 5000;
        this.l = VastError.ERROR_CODE_GENERAL_WRAPPER;
        this.m = 3;
        this.n = 3;
        this.o = 3;
        this.p = 2;
        this.q = 15;
        this.r = 10000L;
        this.s = 0;
        this.t = false;
        this.u = 30000;
        this.v = -1;
        this.w = 5000;
        this.x = 1;
        this.y = "providerOrder";
        this.z = "providerSettings";
        this.A = "configurations";
        this.B = IronSourceConstants.EVENTS_GENERIC_PARAMS;
        this.C = "adUnits";
        this.D = "providerLoadName";
        this.E = MimeTypes.BASE_TYPE_APPLICATION;
        this.F = "rewardedVideo";
        this.G = "interstitial";
        this.H = "offerwall";
        this.I = "banner";
        this.J = "integration";
        this.K = "loggers";
        this.L = "segment";
        this.M = "events";
        this.N = "crashReporter";
        this.O = "token";
        this.P = "external";
        this.Q = "mediationTypes";
        this.R = "providerDefaultInstance";
        this.S = com.appnext.core.a.b.hW;
        this.T = "maxNumOfAdaptersToLoadOnStart";
        this.U = "advancedLoading";
        this.V = "adapterTimeOutInSeconds";
        this.W = "atim";
        this.X = "bannerInterval";
        this.Y = "loadRVInterval";
        this.Z = "expiredDurationInMinutes";
        this.aa = "server";
        this.ab = "publisher";
        this.ac = "console";
        this.ad = "sendUltraEvents";
        this.ae = "sendEventsToggle";
        this.af = "eventsCompression";
        this.ag = "serverEventsURL";
        this.ah = "serverEventsType";
        this.ai = "backupThreshold";
        this.aj = "maxNumberOfEvents";
        this.ak = "maxEventsPerBatch";
        this.al = "optOut";
        this.am = "optIn";
        this.an = "triggerEvents";
        this.ao = "nonConnectivityEvents";
        this.ap = "pixel";
        this.aq = "pixelEventsUrl";
        this.ar = "pixelEventsEnabled";
        this.as = "placements";
        this.at = "placementId";
        this.au = "placementName";
        this.av = "delivery";
        this.aw = "isDefault";
        this.ax = "capping";
        this.ay = "pacing";
        this.az = "enabled";
        this.aA = "maxImpressions";
        this.aB = "numOfSeconds";
        this.aC = "unit";
        this.aD = "virtualItemName";
        this.aE = "virtualItemCount";
        this.aF = "backFill";
        this.aG = "premium";
        this.aH = "uuidEnabled";
        this.aI = "abt";
        this.aJ = "delayLoadFailure";
        this.aK = "keysToInclude";
        this.aL = "reporterURL";
        this.aM = "reporterKeyword";
        this.aN = "includeANR";
        this.aO = "timeout";
        this.aP = "setIgnoreDebugger";
        this.aQ = "adSourceName";
        this.aR = "spId";
        this.aS = "mpis";
        this.aT = "auction";
        this.aU = "auctionData";
        this.aV = "auctioneerURL";
        this.aW = IronSourceConstants.EVENTS_PROGRAMMATIC;
        this.aX = "objectPerWaterfall";
        this.aY = "minTimeBeforeFirstAuction";
        this.aZ = "timeToWaitBeforeAuction";
        this.ba = "timeToWaitBeforeLoad";
        this.bb = "auctionRetryInterval";
        this.bc = "isAuctionOnShowStart";
        this.bd = "isLoadWhileShow";
        this.be = IronSourceConstants.AUCTION_TRIALS;
        this.bf = "auctionTimeout";
        this.bg = "auctionSavedHistory";
        this.bh = "disableLoadWhileShowSupportFor";
        this.bi = "timeToDeleteOldWaterfallAfterAuction";
        this.bj = "compressAuctionRequest";
        this.bk = "compressAuctionResponse";
        this.bl = "encryptionVersion";
        this.bm = "shouldSendBannerBURLFromImpression";
        this.bn = "optInKeys";
        this.bo = "tokenGenericParams";
        this.bp = "oneToken";
        this.bq = "compressToken";
        this.br = "isExternalArmEventsEnabled";
        this.bs = "externalArmEventsUrl";
        this.bt = "compressExternalToken";
        this.f11451e = a.f11455a;
        this.bw = context;
        try {
            this.f11450d = TextUtils.isEmpty(str3) ? new JSONObject() : new JSONObject(str3);
            h();
            i();
            g();
            this.bu = TextUtils.isEmpty(str) ? "" : str;
            this.bv = TextUtils.isEmpty(str2) ? "" : str2;
        } catch (JSONException e2) {
            e2.printStackTrace();
            e();
        }
    }

    public l(l lVar) {
        this.f11452f = Constants.IPC_BUNDLE_KEY_SEND_ERROR;
        this.f11453g = 3;
        this.f11454h = 2;
        this.i = 60;
        this.j = 10000;
        this.k = 5000;
        this.l = VastError.ERROR_CODE_GENERAL_WRAPPER;
        this.m = 3;
        this.n = 3;
        this.o = 3;
        this.p = 2;
        this.q = 15;
        this.r = 10000L;
        this.s = 0;
        this.t = false;
        this.u = 30000;
        this.v = -1;
        this.w = 5000;
        this.x = 1;
        this.y = "providerOrder";
        this.z = "providerSettings";
        this.A = "configurations";
        this.B = IronSourceConstants.EVENTS_GENERIC_PARAMS;
        this.C = "adUnits";
        this.D = "providerLoadName";
        this.E = MimeTypes.BASE_TYPE_APPLICATION;
        this.F = "rewardedVideo";
        this.G = "interstitial";
        this.H = "offerwall";
        this.I = "banner";
        this.J = "integration";
        this.K = "loggers";
        this.L = "segment";
        this.M = "events";
        this.N = "crashReporter";
        this.O = "token";
        this.P = "external";
        this.Q = "mediationTypes";
        this.R = "providerDefaultInstance";
        this.S = com.appnext.core.a.b.hW;
        this.T = "maxNumOfAdaptersToLoadOnStart";
        this.U = "advancedLoading";
        this.V = "adapterTimeOutInSeconds";
        this.W = "atim";
        this.X = "bannerInterval";
        this.Y = "loadRVInterval";
        this.Z = "expiredDurationInMinutes";
        this.aa = "server";
        this.ab = "publisher";
        this.ac = "console";
        this.ad = "sendUltraEvents";
        this.ae = "sendEventsToggle";
        this.af = "eventsCompression";
        this.ag = "serverEventsURL";
        this.ah = "serverEventsType";
        this.ai = "backupThreshold";
        this.aj = "maxNumberOfEvents";
        this.ak = "maxEventsPerBatch";
        this.al = "optOut";
        this.am = "optIn";
        this.an = "triggerEvents";
        this.ao = "nonConnectivityEvents";
        this.ap = "pixel";
        this.aq = "pixelEventsUrl";
        this.ar = "pixelEventsEnabled";
        this.as = "placements";
        this.at = "placementId";
        this.au = "placementName";
        this.av = "delivery";
        this.aw = "isDefault";
        this.ax = "capping";
        this.ay = "pacing";
        this.az = "enabled";
        this.aA = "maxImpressions";
        this.aB = "numOfSeconds";
        this.aC = "unit";
        this.aD = "virtualItemName";
        this.aE = "virtualItemCount";
        this.aF = "backFill";
        this.aG = "premium";
        this.aH = "uuidEnabled";
        this.aI = "abt";
        this.aJ = "delayLoadFailure";
        this.aK = "keysToInclude";
        this.aL = "reporterURL";
        this.aM = "reporterKeyword";
        this.aN = "includeANR";
        this.aO = "timeout";
        this.aP = "setIgnoreDebugger";
        this.aQ = "adSourceName";
        this.aR = "spId";
        this.aS = "mpis";
        this.aT = "auction";
        this.aU = "auctionData";
        this.aV = "auctioneerURL";
        this.aW = IronSourceConstants.EVENTS_PROGRAMMATIC;
        this.aX = "objectPerWaterfall";
        this.aY = "minTimeBeforeFirstAuction";
        this.aZ = "timeToWaitBeforeAuction";
        this.ba = "timeToWaitBeforeLoad";
        this.bb = "auctionRetryInterval";
        this.bc = "isAuctionOnShowStart";
        this.bd = "isLoadWhileShow";
        this.be = IronSourceConstants.AUCTION_TRIALS;
        this.bf = "auctionTimeout";
        this.bg = "auctionSavedHistory";
        this.bh = "disableLoadWhileShowSupportFor";
        this.bi = "timeToDeleteOldWaterfallAfterAuction";
        this.bj = "compressAuctionRequest";
        this.bk = "compressAuctionResponse";
        this.bl = "encryptionVersion";
        this.bm = "shouldSendBannerBURLFromImpression";
        this.bn = "optInKeys";
        this.bo = "tokenGenericParams";
        this.bp = "oneToken";
        this.bq = "compressToken";
        this.br = "isExternalArmEventsEnabled";
        this.bs = "externalArmEventsUrl";
        this.bt = "compressExternalToken";
        this.f11451e = a.f11455a;
        try {
            this.bw = lVar.bw;
            this.f11450d = new JSONObject(lVar.f11450d.toString());
            this.bu = lVar.bu;
            this.bv = lVar.bv;
            this.f11447a = lVar.f11447a;
            this.f11448b = lVar.f11448b;
            this.f11449c = lVar.f11449c;
            this.f11451e = lVar.f11451e;
        } catch (Exception unused) {
            e();
        }
    }

    private static int a(JSONObject jSONObject, JSONObject jSONObject2, String str, int i) {
        int i2 = 0;
        if (jSONObject.has(str)) {
            i2 = jSONObject.optInt(str, 0);
        } else if (jSONObject2.has(str)) {
            i2 = jSONObject2.optInt(str, 0);
        }
        return i2 == 0 ? i : i2;
    }

    private static com.ironsource.mediationsdk.model.k a(JSONObject jSONObject) {
        com.ironsource.mediationsdk.model.l lVar = null;
        if (jSONObject == null) {
            return null;
        }
        k.a aVar = new k.a();
        boolean z = true;
        aVar.f11280a = jSONObject.optBoolean("delivery", true);
        JSONObject optJSONObject = jSONObject.optJSONObject("capping");
        if (optJSONObject != null) {
            String optString = optJSONObject.optString("unit");
            if (!TextUtils.isEmpty(optString)) {
                if (com.ironsource.mediationsdk.model.l.PER_DAY.toString().equals(optString)) {
                    lVar = com.ironsource.mediationsdk.model.l.PER_DAY;
                } else if (com.ironsource.mediationsdk.model.l.PER_HOUR.toString().equals(optString)) {
                    lVar = com.ironsource.mediationsdk.model.l.PER_HOUR;
                }
            }
            int optInt = optJSONObject.optInt("maxImpressions", 0);
            aVar.a(optJSONObject.optBoolean("enabled", false) && optInt > 0, lVar, optInt);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("pacing");
        if (optJSONObject2 != null) {
            int optInt2 = optJSONObject2.optInt("numOfSeconds", 0);
            if (!optJSONObject2.optBoolean("enabled", false) || optInt2 <= 0) {
                z = false;
            }
            aVar.a(z, optInt2);
        }
        return aVar.a();
    }

    private static int[] a(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray != null) {
            int[] iArr = new int[optJSONArray.length()];
            for (int i = 0; i < optJSONArray.length(); i++) {
                iArr[i] = optJSONArray.optInt(i);
            }
            return iArr;
        }
        return null;
    }

    private static JSONObject b(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    private void e() {
        this.f11450d = new JSONObject();
        this.bu = "";
        this.bv = "";
        this.f11447a = new com.ironsource.mediationsdk.model.m();
        this.f11448b = com.ironsource.mediationsdk.model.n.a();
        this.f11449c = new com.ironsource.mediationsdk.model.g();
    }

    private boolean f() {
        JSONArray names = b(this.f11450d, "providerOrder").names();
        if (names == null) {
            return true;
        }
        JSONObject b2 = b(b(this.f11450d, "configurations"), "adUnits");
        for (int i = 0; i < names.length(); i++) {
            JSONArray optJSONArray = b(b2, names.optString(i)).optJSONArray("placements");
            if (optJSONArray == null || optJSONArray.length() == 0) {
                return false;
            }
        }
        return true;
    }

    private void g() {
        com.ironsource.mediationsdk.model.g gVar;
        com.ironsource.mediationsdk.model.g gVar2;
        try {
            JSONObject b2 = b(this.f11450d, "providerOrder");
            JSONArray optJSONArray = b2.optJSONArray("rewardedVideo");
            JSONArray optJSONArray2 = b2.optJSONArray("interstitial");
            JSONArray optJSONArray3 = b2.optJSONArray("banner");
            this.f11447a = new com.ironsource.mediationsdk.model.m();
            if (optJSONArray != null && (gVar2 = this.f11449c) != null && gVar2.f11254a != null) {
                String str = this.f11449c.f11254a.f11304f;
                String str2 = this.f11449c.f11254a.f11305g;
                for (int i = 0; i < optJSONArray.length(); i++) {
                    String optString = optJSONArray.optString(i);
                    if (optString.equals(str)) {
                        this.f11447a.f11291b = str;
                    } else {
                        if (optString.equals(str2)) {
                            this.f11447a.f11292c = str2;
                        }
                        com.ironsource.mediationsdk.model.m mVar = this.f11447a;
                        if (!TextUtils.isEmpty(optString)) {
                            mVar.f11290a.add(optString);
                        }
                        NetworkSettings a2 = com.ironsource.mediationsdk.model.n.a().a(optString);
                        if (a2 != null) {
                            a2.setRewardedVideoPriority(i);
                        }
                    }
                }
            }
            if (optJSONArray2 != null && (gVar = this.f11449c) != null && gVar.f11255b != null) {
                String str3 = this.f11449c.f11255b.f11265g;
                String str4 = this.f11449c.f11255b.f11266h;
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    String optString2 = optJSONArray2.optString(i2);
                    if (optString2.equals(str3)) {
                        this.f11447a.f11295f = str3;
                    } else {
                        if (optString2.equals(str4)) {
                            this.f11447a.f11296g = str4;
                        }
                        com.ironsource.mediationsdk.model.m mVar2 = this.f11447a;
                        if (!TextUtils.isEmpty(optString2)) {
                            mVar2.f11293d.add(optString2);
                        }
                        NetworkSettings a3 = com.ironsource.mediationsdk.model.n.a().a(optString2);
                        if (a3 != null) {
                            a3.setInterstitialPriority(i2);
                        }
                    }
                }
            }
            if (optJSONArray3 != null) {
                for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                    String optString3 = optJSONArray3.optString(i3);
                    com.ironsource.mediationsdk.model.m mVar3 = this.f11447a;
                    if (!TextUtils.isEmpty(optString3)) {
                        mVar3.f11294e.add(optString3);
                    }
                    NetworkSettings a4 = com.ironsource.mediationsdk.model.n.a().a(optString3);
                    if (a4 != null) {
                        a4.setBannerPriority(i3);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void h() {
        String str;
        JSONObject jSONObject;
        String str2 = "Mediation";
        try {
            this.f11448b = com.ironsource.mediationsdk.model.n.a();
            JSONObject b2 = b(this.f11450d, "providerSettings");
            Iterator<String> keys = b2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject optJSONObject = b2.optJSONObject(next);
                if (optJSONObject != null) {
                    boolean optBoolean = optJSONObject.optBoolean("mpis", false);
                    String optString = optJSONObject.optString("spId", "0");
                    String optString2 = optJSONObject.optString("adSourceName", null);
                    String optString3 = optJSONObject.optString("providerLoadName", next);
                    String optString4 = optJSONObject.optString("providerDefaultInstance", optString3);
                    JSONObject b3 = b(optJSONObject, "adUnits");
                    JSONObject b4 = b(optJSONObject, MimeTypes.BASE_TYPE_APPLICATION);
                    JSONObject b5 = b(b3, "rewardedVideo");
                    JSONObject b6 = b(b3, "interstitial");
                    JSONObject b7 = b(b3, "banner");
                    JSONObject mergeJsons = IronSourceUtils.mergeJsons(b5, b4);
                    JSONObject mergeJsons2 = IronSourceUtils.mergeJsons(b6, b4);
                    JSONObject mergeJsons3 = IronSourceUtils.mergeJsons(b7, b4);
                    if (this.f11448b.b(next)) {
                        NetworkSettings a2 = this.f11448b.a(next);
                        JSONObject rewardedVideoSettings = a2.getRewardedVideoSettings();
                        JSONObject interstitialSettings = a2.getInterstitialSettings();
                        JSONObject bannerSettings = a2.getBannerSettings();
                        a2.setRewardedVideoSettings(IronSourceUtils.mergeJsons(rewardedVideoSettings, mergeJsons));
                        a2.setInterstitialSettings(IronSourceUtils.mergeJsons(interstitialSettings, mergeJsons2));
                        a2.setBannerSettings(IronSourceUtils.mergeJsons(bannerSettings, mergeJsons3));
                        a2.setIsMultipleInstances(optBoolean);
                        a2.setSubProviderId(optString);
                        a2.setAdSourceNameForEvents(optString2);
                    } else {
                        String lowerCase = optString3.toLowerCase(Locale.ENGLISH);
                        if (this.f11448b.b(str2)) {
                            jSONObject = b2;
                            if (!IronSourceConstants.SUPERSONIC_CONFIG_NAME.toLowerCase(Locale.ENGLISH).equals(lowerCase) && !IronSourceConstants.IRONSOURCE_CONFIG_NAME.toLowerCase(Locale.ENGLISH).equals(lowerCase)) {
                                str = str2;
                            }
                            NetworkSettings a3 = this.f11448b.a(str2);
                            JSONObject rewardedVideoSettings2 = a3.getRewardedVideoSettings();
                            JSONObject interstitialSettings2 = a3.getInterstitialSettings();
                            JSONObject bannerSettings2 = a3.getBannerSettings();
                            str = str2;
                            NetworkSettings networkSettings = new NetworkSettings(next, optString3, optString4, b4, IronSourceUtils.mergeJsons(new JSONObject(rewardedVideoSettings2.toString()), mergeJsons), IronSourceUtils.mergeJsons(new JSONObject(interstitialSettings2.toString()), mergeJsons2), IronSourceUtils.mergeJsons(new JSONObject(bannerSettings2.toString()), mergeJsons3));
                            networkSettings.setIsMultipleInstances(optBoolean);
                            networkSettings.setSubProviderId(optString);
                            networkSettings.setAdSourceNameForEvents(optString2);
                            this.f11448b.a(networkSettings);
                        } else {
                            str = str2;
                            jSONObject = b2;
                        }
                        NetworkSettings networkSettings2 = new NetworkSettings(next, optString3, optString4, b4, mergeJsons, mergeJsons2, mergeJsons3);
                        networkSettings2.setIsMultipleInstances(optBoolean);
                        networkSettings2.setSubProviderId(optString);
                        networkSettings2.setAdSourceNameForEvents(optString2);
                        this.f11448b.a(networkSettings2);
                    }
                } else {
                    str = str2;
                    jSONObject = b2;
                }
                b2 = jSONObject;
                str2 = str;
            }
            this.f11448b.b();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void i() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        String str;
        String str2;
        int i;
        boolean z;
        String str3;
        String str4;
        int[] iArr;
        String str5;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        String str6;
        String str7;
        String str8;
        String str9;
        c cVar;
        l lVar;
        com.ironsource.mediationsdk.model.o oVar;
        Placement placement;
        String str10;
        String str11;
        String str12;
        String str13;
        JSONObject jSONObject3;
        com.ironsource.mediationsdk.model.h hVar;
        String str14;
        String str15;
        JSONObject jSONObject4;
        String str16;
        String str17;
        JSONObject jSONObject5;
        com.ironsource.mediationsdk.model.e eVar;
        String str18;
        String str19;
        com.ironsource.mediationsdk.model.i iVar;
        boolean z2;
        com.ironsource.mediationsdk.model.p pVar;
        JSONObject b2;
        int[] iArr5;
        String str20;
        int[] iArr6;
        int[] iArr7;
        int[] iArr8;
        com.ironsource.mediationsdk.model.j jVar;
        int[] iArr9;
        String str21;
        int[] iArr10;
        int[] iArr11;
        int[] iArr12;
        JSONObject jSONObject6;
        c cVar2;
        JSONObject jSONObject7;
        JSONArray jSONArray;
        String str22;
        com.ironsource.mediationsdk.model.f fVar;
        int i2;
        boolean z3;
        int[] iArr13;
        String str23;
        int[] iArr14;
        int[] iArr15;
        int[] iArr16;
        JSONObject jSONObject8;
        c cVar3;
        JSONArray jSONArray2;
        JSONObject jSONObject9;
        String str24;
        InterstitialPlacement interstitialPlacement;
        try {
            JSONObject b3 = b(this.f11450d, "configurations");
            JSONObject b4 = b(b3, "adUnits");
            JSONObject b5 = b(b3, MimeTypes.BASE_TYPE_APPLICATION);
            JSONObject b6 = b(b4, "rewardedVideo");
            JSONObject b7 = b(b4, "interstitial");
            JSONObject b8 = b(b4, "offerwall");
            JSONObject b9 = b(b4, "banner");
            JSONObject b10 = b(b5, "events");
            JSONObject b11 = b(b5, "loggers");
            JSONObject b12 = b(b5, "token");
            JSONObject b13 = b(b5, "segment");
            JSONObject b14 = b(b5, "auction");
            JSONObject b15 = b(b5, "crashReporter");
            JSONObject b16 = b(b5, com.appnext.core.a.b.hW);
            JSONObject b17 = b(b5, "external");
            JSONObject b18 = b(b10, "pixel");
            if (b5 != null) {
                jSONObject = b13;
                jSONObject2 = b15;
                IronSourceUtils.saveBooleanToSharedPrefs(this.bw, "uuidEnabled", b5.optBoolean("uuidEnabled", true));
            } else {
                jSONObject = b13;
                jSONObject2 = b15;
            }
            if (b10 != null) {
                String optString = b10.optString("abt");
                if (!TextUtils.isEmpty(optString)) {
                    com.ironsource.mediationsdk.a.d.e().p = optString;
                    com.ironsource.mediationsdk.a.h.e().p = optString;
                }
            }
            JSONObject jSONObject10 = b14;
            String str25 = "triggerEvents";
            String str26 = "";
            String str27 = "optIn";
            if (b6 != null) {
                try {
                    JSONArray optJSONArray = b6.optJSONArray("placements");
                    str = "placements";
                    JSONObject b19 = b(b6, "events");
                    str2 = "events";
                    JSONArray jSONArray3 = optJSONArray;
                    int a2 = a(b6, b5, "maxNumOfAdaptersToLoadOnStart", 2);
                    int a3 = a(b6, b5, "advancedLoading", 0);
                    if (a3 > 0) {
                        i = a3;
                        z = true;
                    } else {
                        i = a2;
                        z = false;
                    }
                    int a4 = a(b6, b5, "adapterTimeOutInSeconds", 60);
                    int a5 = a(b6, b5, "loadRVInterval", VastError.ERROR_CODE_GENERAL_WRAPPER);
                    int a6 = a(b6, b5, "expiredDurationInMinutes", -1);
                    int a7 = a(b6, b5, "delayLoadFailure", 3);
                    JSONObject mergeJsons = IronSourceUtils.mergeJsons(b19, b10);
                    boolean optBoolean = mergeJsons.optBoolean("sendUltraEvents", false);
                    boolean optBoolean2 = mergeJsons.optBoolean("sendEventsToggle", false);
                    boolean optBoolean3 = mergeJsons.optBoolean("eventsCompression", false);
                    String optString2 = mergeJsons.optString("serverEventsURL", "");
                    String optString3 = mergeJsons.optString("serverEventsType", "");
                    int optInt = mergeJsons.optInt("backupThreshold", -1);
                    int optInt2 = mergeJsons.optInt("maxNumberOfEvents", -1);
                    int optInt3 = mergeJsons.optInt("maxEventsPerBatch", 5000);
                    JSONArray optJSONArray2 = mergeJsons.optJSONArray("optOut");
                    if (optJSONArray2 != null) {
                        int[] iArr17 = new int[optJSONArray2.length()];
                        str3 = "optOut";
                        str4 = "maxEventsPerBatch";
                        for (int i3 = 0; i3 < optJSONArray2.length(); i3++) {
                            iArr17[i3] = optJSONArray2.optInt(i3);
                        }
                        iArr = iArr17;
                    } else {
                        str3 = "optOut";
                        str4 = "maxEventsPerBatch";
                        iArr = null;
                    }
                    JSONArray optJSONArray3 = mergeJsons.optJSONArray(str27);
                    if (optJSONArray3 != null) {
                        int[] iArr18 = new int[optJSONArray3.length()];
                        str27 = str27;
                        for (int i4 = 0; i4 < optJSONArray3.length(); i4++) {
                            iArr18[i4] = optJSONArray3.optInt(i4);
                        }
                        iArr2 = iArr18;
                        str5 = str25;
                    } else {
                        str27 = str27;
                        str5 = str25;
                        iArr2 = null;
                    }
                    JSONArray optJSONArray4 = mergeJsons.optJSONArray(str5);
                    if (optJSONArray4 != null) {
                        int[] iArr19 = new int[optJSONArray4.length()];
                        str25 = str5;
                        for (int i5 = 0; i5 < optJSONArray4.length(); i5++) {
                            iArr19[i5] = optJSONArray4.optInt(i5);
                        }
                        iArr3 = iArr19;
                    } else {
                        str25 = str5;
                        iArr3 = null;
                    }
                    JSONArray optJSONArray5 = mergeJsons.optJSONArray("nonConnectivityEvents");
                    if (optJSONArray5 != null) {
                        int[] iArr20 = new int[optJSONArray5.length()];
                        for (int i6 = 0; i6 < optJSONArray5.length(); i6++) {
                            iArr20[i6] = optJSONArray5.optInt(i6);
                        }
                        iArr4 = iArr20;
                    } else {
                        iArr4 = null;
                    }
                    com.ironsource.sdk.g.d dVar = new com.ironsource.sdk.g.d(optBoolean, optBoolean2, optBoolean3, optString2, optString3, optInt, optInt2, optInt3, iArr, iArr2, iArr3, iArr4);
                    if (jSONObject10 != null) {
                        JSONObject b20 = b(jSONObject10, "rewardedVideo");
                        String optString4 = jSONObject10.optString("auctionData", "");
                        String optString5 = jSONObject10.optString("auctioneerURL", "");
                        int optInt4 = jSONObject10.optInt(IronSourceConstants.AUCTION_TRIALS, 2);
                        long optLong = jSONObject10.optLong("auctionTimeout", 10000L);
                        int optInt5 = jSONObject10.optInt("auctionSavedHistory", 15);
                        boolean optBoolean4 = jSONObject10.optBoolean("compressAuctionRequest", false);
                        boolean optBoolean5 = jSONObject10.optBoolean("compressAuctionResponse", false);
                        int optInt6 = jSONObject10.optInt("encryptionVersion", 1);
                        jSONObject10 = jSONObject10;
                        str9 = "maxNumberOfEvents";
                        str8 = "backupThreshold";
                        str6 = "serverEventsType";
                        str7 = "serverEventsURL";
                        c cVar4 = new c(optString4, optString5, optInt4, optInt5, optLong, b20.optBoolean(IronSourceConstants.EVENTS_PROGRAMMATIC, false), b20.optInt("minTimeBeforeFirstAuction", 2000), b20.optInt("auctionRetryInterval", 30000), b20.optInt("timeToWaitBeforeAuction", 5000), b20.optInt("timeToWaitBeforeLoad", 50), b20.optBoolean("isAuctionOnShowStart", false), b20.optBoolean("isLoadWhileShow", false), b20.optInt("timeToDeleteOldWaterfallAfterAuction", 30000), optBoolean4, optBoolean5, b20.optBoolean("objectPerWaterfall", false), optInt6, false);
                        JSONArray optJSONArray6 = b20.optJSONArray("disableLoadWhileShowSupportFor");
                        if (optJSONArray6 != null) {
                            for (int i7 = 0; i7 < optJSONArray6.length(); i7++) {
                                String optString6 = optJSONArray6.optString(i7);
                                if (!TextUtils.isEmpty(optString6)) {
                                    cVar4.o.add(optString6);
                                }
                            }
                        }
                        cVar = cVar4;
                    } else {
                        str6 = "serverEventsType";
                        str7 = "serverEventsURL";
                        str8 = "backupThreshold";
                        str9 = "maxNumberOfEvents";
                        cVar = new c();
                    }
                    com.ironsource.mediationsdk.model.o oVar2 = new com.ironsource.mediationsdk.model.o(i, z, a4, a5, a6, dVar, cVar, a7);
                    if (jSONArray3 != null) {
                        int i8 = 0;
                        while (i8 < jSONArray3.length()) {
                            JSONArray jSONArray4 = jSONArray3;
                            JSONObject optJSONObject = jSONArray4.optJSONObject(i8);
                            if (optJSONObject != null) {
                                int optInt7 = optJSONObject.optInt("placementId", -1);
                                String optString7 = optJSONObject.optString("placementName", "");
                                boolean optBoolean6 = optJSONObject.optBoolean("isDefault", false);
                                String optString8 = optJSONObject.optString("virtualItemName", "");
                                int optInt8 = optJSONObject.optInt("virtualItemCount", -1);
                                com.ironsource.mediationsdk.model.k a8 = a(optJSONObject);
                                if (optInt7 >= 0 && !TextUtils.isEmpty(optString7) && !TextUtils.isEmpty(optString8) && optInt8 > 0) {
                                    placement = new Placement(optInt7, optString7, optBoolean6, optString8, optInt8, a8);
                                    if (a8 != null) {
                                        try {
                                            k.a(this.bw, placement);
                                        } catch (Exception e2) {
                                            e = e2;
                                            e.printStackTrace();
                                            return;
                                        }
                                    }
                                    if (placement != null && placement != null) {
                                        oVar2.f11299a.add(placement);
                                        if (oVar2.k != null && placement.getPlacementId() != 0) {
                                        }
                                        oVar2.k = placement;
                                    }
                                    i8++;
                                    jSONArray3 = jSONArray4;
                                }
                            }
                            placement = null;
                            if (placement != null) {
                                oVar2.f11299a.add(placement);
                                if (oVar2.k != null) {
                                }
                                oVar2.k = placement;
                            }
                            i8++;
                            jSONArray3 = jSONArray4;
                        }
                    }
                    lVar = this;
                    String optString9 = b6.optString("backFill");
                    if (!TextUtils.isEmpty(optString9)) {
                        oVar2.f11304f = optString9;
                    }
                    String optString10 = b6.optString("premium");
                    if (!TextUtils.isEmpty(optString10)) {
                        oVar2.f11305g = optString10;
                    }
                    oVar = oVar2;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    return;
                }
            } else {
                str3 = "optOut";
                str2 = "events";
                str7 = "serverEventsURL";
                str8 = "backupThreshold";
                str = "placements";
                str4 = "maxEventsPerBatch";
                str9 = "maxNumberOfEvents";
                str6 = "serverEventsType";
                lVar = this;
                oVar = null;
            }
            if (b7 != null) {
                str11 = str;
                JSONArray optJSONArray7 = b7.optJSONArray(str11);
                str12 = str2;
                JSONObject b21 = b(b7, str12);
                int a9 = a(b7, b5, "maxNumOfAdaptersToLoadOnStart", 2);
                int a10 = a(b7, b5, "advancedLoading", 0);
                if (a10 > 0) {
                    i2 = a10;
                    z3 = true;
                } else {
                    i2 = a9;
                    z3 = false;
                }
                int a11 = a(b7, b5, "adapterTimeOutInSeconds", 60);
                int a12 = a(b7, b5, "delayLoadFailure", 3);
                JSONObject mergeJsons2 = IronSourceUtils.mergeJsons(b21, b10);
                boolean optBoolean7 = mergeJsons2.optBoolean("sendEventsToggle", false);
                boolean optBoolean8 = mergeJsons2.optBoolean("eventsCompression", false);
                String str28 = str7;
                String optString11 = mergeJsons2.optString(str28, "");
                String optString12 = mergeJsons2.optString(str6, "");
                String str29 = str8;
                int optInt9 = mergeJsons2.optInt(str29, -1);
                str8 = str29;
                String str30 = str9;
                int optInt10 = mergeJsons2.optInt(str30, -1);
                str9 = str30;
                String str31 = str4;
                int optInt11 = mergeJsons2.optInt(str31, 5000);
                str4 = str31;
                String str32 = str3;
                JSONArray optJSONArray8 = mergeJsons2.optJSONArray(str32);
                if (optJSONArray8 != null) {
                    str3 = str32;
                    int[] iArr21 = new int[optJSONArray8.length()];
                    str7 = str28;
                    str10 = str6;
                    for (int i9 = 0; i9 < optJSONArray8.length(); i9++) {
                        iArr21[i9] = optJSONArray8.optInt(i9);
                    }
                    iArr13 = iArr21;
                } else {
                    str7 = str28;
                    str10 = str6;
                    str3 = str32;
                    iArr13 = null;
                }
                String str33 = str27;
                JSONArray optJSONArray9 = mergeJsons2.optJSONArray(str33);
                if (optJSONArray9 != null) {
                    int[] iArr22 = new int[optJSONArray9.length()];
                    str27 = str33;
                    for (int i10 = 0; i10 < optJSONArray9.length(); i10++) {
                        iArr22[i10] = optJSONArray9.optInt(i10);
                    }
                    iArr14 = iArr22;
                    str23 = str25;
                } else {
                    str27 = str33;
                    str23 = str25;
                    iArr14 = null;
                }
                JSONArray optJSONArray10 = mergeJsons2.optJSONArray(str23);
                if (optJSONArray10 != null) {
                    int[] iArr23 = new int[optJSONArray10.length()];
                    str25 = str23;
                    for (int i11 = 0; i11 < optJSONArray10.length(); i11++) {
                        iArr23[i11] = optJSONArray10.optInt(i11);
                    }
                    iArr15 = iArr23;
                } else {
                    str25 = str23;
                    iArr15 = null;
                }
                JSONArray optJSONArray11 = mergeJsons2.optJSONArray("nonConnectivityEvents");
                if (optJSONArray11 != null) {
                    int[] iArr24 = new int[optJSONArray11.length()];
                    for (int i12 = 0; i12 < optJSONArray11.length(); i12++) {
                        iArr24[i12] = optJSONArray11.optInt(i12);
                    }
                    iArr16 = iArr24;
                } else {
                    iArr16 = null;
                }
                com.ironsource.sdk.g.d dVar2 = new com.ironsource.sdk.g.d(false, optBoolean7, optBoolean8, optString11, optString12, optInt9, optInt10, optInt11, iArr13, iArr14, iArr15, iArr16);
                if (jSONObject10 != null) {
                    jSONObject8 = jSONObject10;
                    JSONObject b22 = b(jSONObject8, "interstitial");
                    cVar3 = new c(jSONObject8.optString("auctionData", ""), jSONObject8.optString("auctioneerURL", ""), jSONObject8.optInt(IronSourceConstants.AUCTION_TRIALS, 2), jSONObject8.optInt("auctionSavedHistory", 15), jSONObject8.optLong("auctionTimeout", 10000L), b22.optBoolean(IronSourceConstants.EVENTS_PROGRAMMATIC, false), b22.optInt("minTimeBeforeFirstAuction", 2000), 0L, 0L, 0L, true, true, 0, jSONObject8.optBoolean("compressAuctionRequest", false), jSONObject8.optBoolean("compressAuctionResponse", false), b22.optBoolean("objectPerWaterfall", false), jSONObject8.optInt("encryptionVersion", 1), false);
                } else {
                    jSONObject8 = jSONObject10;
                    cVar3 = new c();
                }
                com.ironsource.mediationsdk.model.h hVar2 = new com.ironsource.mediationsdk.model.h(i2, z3, a11, dVar2, cVar3, a12);
                if (optJSONArray7 != null) {
                    int i13 = 0;
                    while (i13 < optJSONArray7.length()) {
                        JSONObject optJSONObject2 = optJSONArray7.optJSONObject(i13);
                        if (optJSONObject2 != null) {
                            jSONArray2 = optJSONArray7;
                            int optInt12 = optJSONObject2.optInt("placementId", -1);
                            String optString13 = optJSONObject2.optString("placementName", str26);
                            jSONObject9 = jSONObject8;
                            str24 = str26;
                            boolean optBoolean9 = optJSONObject2.optBoolean("isDefault", false);
                            com.ironsource.mediationsdk.model.k a13 = a(optJSONObject2);
                            if (optInt12 >= 0 && !TextUtils.isEmpty(optString13)) {
                                interstitialPlacement = new InterstitialPlacement(optInt12, optString13, optBoolean9, a13);
                                if (a13 != null) {
                                    k.a(lVar.bw, interstitialPlacement);
                                }
                                if (interstitialPlacement != null && interstitialPlacement != null) {
                                    hVar2.f11259a.add(interstitialPlacement);
                                    if (hVar2.j != null && interstitialPlacement.getPlacementId() != 0) {
                                    }
                                    hVar2.j = interstitialPlacement;
                                }
                                i13++;
                                optJSONArray7 = jSONArray2;
                                jSONObject8 = jSONObject9;
                                str26 = str24;
                            }
                        } else {
                            jSONArray2 = optJSONArray7;
                            jSONObject9 = jSONObject8;
                            str24 = str26;
                        }
                        interstitialPlacement = null;
                        if (interstitialPlacement != null) {
                            hVar2.f11259a.add(interstitialPlacement);
                            if (hVar2.j != null) {
                            }
                            hVar2.j = interstitialPlacement;
                        }
                        i13++;
                        optJSONArray7 = jSONArray2;
                        jSONObject8 = jSONObject9;
                        str26 = str24;
                    }
                }
                jSONObject3 = jSONObject8;
                str13 = str26;
                String optString14 = b7.optString("backFill");
                if (!TextUtils.isEmpty(optString14)) {
                    hVar2.f11265g = optString14;
                }
                String optString15 = b7.optString("premium");
                if (!TextUtils.isEmpty(optString15)) {
                    hVar2.f11266h = optString15;
                }
                hVar = hVar2;
            } else {
                str10 = str6;
                str11 = str;
                str12 = str2;
                str13 = "";
                jSONObject3 = jSONObject10;
                hVar = null;
            }
            if (b9 != null) {
                JSONArray optJSONArray12 = b9.optJSONArray(str11);
                JSONObject b23 = b(b9, str12);
                int a14 = a(b9, b5, "maxNumOfAdaptersToLoadOnStart", 1);
                long optLong2 = b9.has("atim") ? b9.optLong("atim", 0L) : b5.has("atim") ? b5.optLong("atim", 0L) : 0L;
                long j = optLong2 == 0 ? 10000L : optLong2;
                int a15 = a(b9, b5, "delayLoadFailure", 3);
                int a16 = a(b9, b5, "bannerInterval", 60);
                JSONObject mergeJsons3 = IronSourceUtils.mergeJsons(b23, b10);
                boolean optBoolean10 = mergeJsons3.optBoolean("sendEventsToggle", false);
                boolean optBoolean11 = mergeJsons3.optBoolean("eventsCompression", false);
                str16 = str13;
                str17 = str7;
                String optString16 = mergeJsons3.optString(str17, str16);
                str15 = str10;
                String optString17 = mergeJsons3.optString(str15, str16);
                String str34 = str8;
                int optInt13 = mergeJsons3.optInt(str34, -1);
                String str35 = str9;
                int optInt14 = mergeJsons3.optInt(str35, -1);
                jSONObject5 = b5;
                String str36 = str4;
                int optInt15 = mergeJsons3.optInt(str36, 5000);
                str14 = str11;
                String str37 = str3;
                JSONArray optJSONArray13 = mergeJsons3.optJSONArray(str37);
                if (optJSONArray13 != null) {
                    str3 = str37;
                    int[] iArr25 = new int[optJSONArray13.length()];
                    str4 = str36;
                    str9 = str35;
                    for (int i14 = 0; i14 < optJSONArray13.length(); i14++) {
                        iArr25[i14] = optJSONArray13.optInt(i14);
                    }
                    iArr9 = iArr25;
                } else {
                    str3 = str37;
                    str4 = str36;
                    str9 = str35;
                    iArr9 = null;
                }
                String str38 = str27;
                JSONArray optJSONArray14 = mergeJsons3.optJSONArray(str38);
                if (optJSONArray14 != null) {
                    int[] iArr26 = new int[optJSONArray14.length()];
                    str27 = str38;
                    for (int i15 = 0; i15 < optJSONArray14.length(); i15++) {
                        iArr26[i15] = optJSONArray14.optInt(i15);
                    }
                    iArr10 = iArr26;
                    str21 = str25;
                } else {
                    str27 = str38;
                    str21 = str25;
                    iArr10 = null;
                }
                JSONArray optJSONArray15 = mergeJsons3.optJSONArray(str21);
                if (optJSONArray15 != null) {
                    int[] iArr27 = new int[optJSONArray15.length()];
                    str25 = str21;
                    for (int i16 = 0; i16 < optJSONArray15.length(); i16++) {
                        iArr27[i16] = optJSONArray15.optInt(i16);
                    }
                    iArr11 = iArr27;
                } else {
                    str25 = str21;
                    iArr11 = null;
                }
                JSONArray optJSONArray16 = mergeJsons3.optJSONArray("nonConnectivityEvents");
                if (optJSONArray16 != null) {
                    int[] iArr28 = new int[optJSONArray16.length()];
                    for (int i17 = 0; i17 < optJSONArray16.length(); i17++) {
                        iArr28[i17] = optJSONArray16.optInt(i17);
                    }
                    iArr12 = iArr28;
                } else {
                    iArr12 = null;
                }
                com.ironsource.sdk.g.d dVar3 = new com.ironsource.sdk.g.d(false, optBoolean10, optBoolean11, optString16, optString17, optInt13, optInt14, optInt15, iArr9, iArr10, iArr11, iArr12);
                if (jSONObject3 != null) {
                    jSONObject6 = jSONObject3;
                    JSONObject b24 = b(jSONObject6, "banner");
                    cVar2 = b24 != null ? new c(jSONObject6.optString("auctionData", str16), jSONObject6.optString("auctioneerURL", str16), jSONObject6.optInt(IronSourceConstants.AUCTION_TRIALS, 2), jSONObject6.optInt("auctionSavedHistory", 15), jSONObject6.optLong("auctionTimeout", 10000L), b24.optBoolean(IronSourceConstants.EVENTS_PROGRAMMATIC, false), b24.optInt("minTimeBeforeFirstAuction", 2000), 0L, 0L, 0L, true, true, 0, jSONObject6.optBoolean("compressAuctionRequest", false), jSONObject6.optBoolean("compressAuctionResponse", false), false, jSONObject6.optInt("encryptionVersion", 1), b24.optBoolean("shouldSendBannerBURLFromImpression", true)) : new c();
                } else {
                    jSONObject6 = jSONObject3;
                    cVar2 = new c();
                }
                com.ironsource.mediationsdk.model.e eVar2 = new com.ironsource.mediationsdk.model.e(a14, j, dVar3, a16, cVar2, a15);
                if (optJSONArray12 != null) {
                    int i18 = 0;
                    while (i18 < optJSONArray12.length()) {
                        JSONObject optJSONObject3 = optJSONArray12.optJSONObject(i18);
                        if (optJSONObject3 != null) {
                            jSONArray = optJSONArray12;
                            int optInt16 = optJSONObject3.optInt("placementId", -1);
                            String optString18 = optJSONObject3.optString("placementName", str16);
                            jSONObject7 = jSONObject6;
                            str22 = str34;
                            boolean optBoolean12 = optJSONObject3.optBoolean("isDefault", false);
                            com.ironsource.mediationsdk.model.k a17 = a(optJSONObject3);
                            if (optInt16 >= 0 && !TextUtils.isEmpty(optString18)) {
                                fVar = new com.ironsource.mediationsdk.model.f(optInt16, optString18, optBoolean12, a17);
                                if (a17 != null) {
                                    k.a(lVar.bw, fVar);
                                }
                                if (fVar != null && fVar != null) {
                                    eVar2.f11248c.add(fVar);
                                    if (eVar2.f11249d != null && fVar.getPlacementId() != 0) {
                                    }
                                    eVar2.f11249d = fVar;
                                }
                                i18++;
                                optJSONArray12 = jSONArray;
                                jSONObject6 = jSONObject7;
                                str34 = str22;
                            }
                        } else {
                            jSONObject7 = jSONObject6;
                            jSONArray = optJSONArray12;
                            str22 = str34;
                        }
                        fVar = null;
                        if (fVar != null) {
                            eVar2.f11248c.add(fVar);
                            if (eVar2.f11249d != null) {
                            }
                            eVar2.f11249d = fVar;
                        }
                        i18++;
                        optJSONArray12 = jSONArray;
                        jSONObject6 = jSONObject7;
                        str34 = str22;
                    }
                }
                jSONObject4 = jSONObject6;
                str8 = str34;
                eVar = eVar2;
            } else {
                str14 = str11;
                str15 = str10;
                jSONObject4 = jSONObject3;
                str16 = str13;
                str17 = str7;
                jSONObject5 = b5;
                eVar = null;
            }
            if (b8 != null) {
                JSONObject mergeJsons4 = IronSourceUtils.mergeJsons(b(b8, str12), b10);
                boolean optBoolean13 = mergeJsons4.optBoolean("sendEventsToggle", false);
                boolean optBoolean14 = mergeJsons4.optBoolean("eventsCompression", false);
                String optString19 = mergeJsons4.optString(str17, str16);
                String optString20 = mergeJsons4.optString(str15, str16);
                int optInt17 = mergeJsons4.optInt(str8, -1);
                int optInt18 = mergeJsons4.optInt(str9, -1);
                int optInt19 = mergeJsons4.optInt(str4, 5000);
                str19 = str3;
                JSONArray optJSONArray17 = mergeJsons4.optJSONArray(str19);
                if (optJSONArray17 != null) {
                    int[] iArr29 = new int[optJSONArray17.length()];
                    for (int i19 = 0; i19 < optJSONArray17.length(); i19++) {
                        iArr29[i19] = optJSONArray17.optInt(i19);
                    }
                    iArr5 = iArr29;
                } else {
                    iArr5 = null;
                }
                str18 = str27;
                JSONArray optJSONArray18 = mergeJsons4.optJSONArray(str18);
                if (optJSONArray18 != null) {
                    int[] iArr30 = new int[optJSONArray18.length()];
                    for (int i20 = 0; i20 < optJSONArray18.length(); i20++) {
                        iArr30[i20] = optJSONArray18.optInt(i20);
                    }
                    iArr6 = iArr30;
                    str20 = str25;
                } else {
                    str20 = str25;
                    iArr6 = null;
                }
                JSONArray optJSONArray19 = mergeJsons4.optJSONArray(str20);
                if (optJSONArray19 != null) {
                    int[] iArr31 = new int[optJSONArray19.length()];
                    for (int i21 = 0; i21 < optJSONArray19.length(); i21++) {
                        iArr31[i21] = optJSONArray19.optInt(i21);
                    }
                    iArr7 = iArr31;
                } else {
                    iArr7 = null;
                }
                JSONArray optJSONArray20 = mergeJsons4.optJSONArray("nonConnectivityEvents");
                if (optJSONArray20 != null) {
                    int[] iArr32 = new int[optJSONArray20.length()];
                    for (int i22 = 0; i22 < optJSONArray20.length(); i22++) {
                        iArr32[i22] = optJSONArray20.optInt(i22);
                    }
                    iArr8 = iArr32;
                } else {
                    iArr8 = null;
                }
                com.ironsource.mediationsdk.model.i iVar2 = new com.ironsource.mediationsdk.model.i(new com.ironsource.sdk.g.d(false, optBoolean13, optBoolean14, optString19, optString20, optInt17, optInt18, optInt19, iArr5, iArr6, iArr7, iArr8));
                iVar2.f11270d = b8;
                JSONArray optJSONArray21 = b8.optJSONArray(str14);
                if (optJSONArray21 != null) {
                    for (int i23 = 0; i23 < optJSONArray21.length(); i23++) {
                        JSONObject optJSONObject4 = optJSONArray21.optJSONObject(i23);
                        if (optJSONObject4 != null) {
                            int optInt20 = optJSONObject4.optInt("placementId", -1);
                            String optString21 = optJSONObject4.optString("placementName", str16);
                            boolean optBoolean15 = optJSONObject4.optBoolean("isDefault", false);
                            if (optInt20 >= 0 && !TextUtils.isEmpty(optString21)) {
                                jVar = new com.ironsource.mediationsdk.model.j(optInt20, optString21, optBoolean15);
                                if (jVar != null && jVar != null) {
                                    iVar2.f11267a.add(jVar);
                                    if (iVar2.f11268b != null && jVar.f11271a != 0) {
                                    }
                                    iVar2.f11268b = jVar;
                                }
                            }
                        }
                        jVar = null;
                        if (jVar != null) {
                            iVar2.f11267a.add(jVar);
                            if (iVar2.f11268b != null) {
                            }
                            iVar2.f11268b = jVar;
                        }
                    }
                }
                iVar = iVar2;
            } else {
                str18 = str27;
                str19 = str3;
                iVar = null;
            }
            p pVar2 = new p();
            if (b12 != null) {
                JSONArray optJSONArray22 = b12.optJSONArray("optInKeys");
                if (optJSONArray22 != null) {
                    for (int i24 = 0; i24 < optJSONArray22.length(); i24++) {
                        String optString22 = optJSONArray22.optString(i24);
                        if (!TextUtils.isEmpty(optString22)) {
                            pVar2.f11470a.add(optString22);
                        }
                    }
                }
                JSONObject optJSONObject5 = b12.optJSONObject("tokenGenericParams");
                if (optJSONObject5 != null) {
                    pVar2.f11472c = optJSONObject5;
                }
                pVar2.f11473d = b12.optBoolean("oneToken", false);
                pVar2.f11474e = b12.optBoolean("compressToken", true);
            }
            j jVar2 = new j();
            if (b18 != null) {
                String optString23 = b18.optString("pixelEventsUrl", "https://outcome-ssp.supersonicads.com/mediation?adUnit=3");
                z2 = b18.optBoolean("pixelEventsEnabled", true);
                Intrinsics.checkNotNullParameter(optString23, "<set-?>");
                jVar2.f11434b = optString23;
            } else {
                z2 = true;
            }
            jVar2.f11433a = z2;
            if (z2) {
                jVar2.f11436d = a(b10, str19);
                jVar2.f11437e = a(b10, str18);
                jVar2.f11435c = b10.optBoolean("eventsCompression", false);
            }
            com.ironsource.mediationsdk.model.d dVar4 = new com.ironsource.mediationsdk.model.d(b11.optInt("server", 3), b11.optInt("publisher", 3), b11.optInt("console", 3));
            u uVar = new u();
            if (jSONObject2 != null) {
                JSONObject jSONObject11 = jSONObject2;
                uVar.a(jSONObject11.optBoolean("enabled", false));
                uVar.b(jSONObject11.optString("reporterURL", str16));
                uVar.c(jSONObject11.optString("reporterKeyword", str16));
                uVar.b(jSONObject11.optBoolean("includeANR", false));
                uVar.a(jSONObject11.optInt("timeout", 5000));
                uVar.c(jSONObject11.optBoolean("setIgnoreDebugger", false));
                JSONArray optJSONArray23 = jSONObject11.optJSONArray("keysToInclude");
                if (optJSONArray23 != null) {
                    for (int i25 = 0; i25 < optJSONArray23.length(); i25++) {
                        uVar.a(optJSONArray23.optString(i25));
                    }
                }
            }
            if (jSONObject != null) {
                JSONObject jSONObject12 = jSONObject;
                pVar = new com.ironsource.mediationsdk.model.p(jSONObject12.optString("name", str16), jSONObject12.optString("id", "-1"), jSONObject12.optJSONObject(OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM));
            } else {
                pVar = null;
            }
            b bVar = b16 != null ? new b(b16.optBoolean("isExternalArmEventsEnabled", true), b16.optString("externalArmEventsUrl", "https://outcome-arm-ext-med-ext.sonic-us.supersonicads.com/aemData"), b16.optBoolean("sid", true)) : new b();
            com.ironsource.mediationsdk.model.c cVar5 = new com.ironsource.mediationsdk.model.c();
            if (b17 != null) {
                JSONObject optJSONObject6 = b17.optJSONObject("mediationTypes");
                Map hashMap = new HashMap();
                if (optJSONObject6 != null) {
                    hashMap = IronSourceUtils.parseJsonToStringMap(optJSONObject6);
                }
                b17.optBoolean("compressExternalToken", false);
                cVar5 = new com.ironsource.mediationsdk.model.c(hashMap);
            }
            lVar.f11449c = new com.ironsource.mediationsdk.model.g(oVar, hVar, iVar, eVar, new com.ironsource.sdk.f.a(dVar4, pVar, pVar2, jSONObject5.optBoolean("integration", false), uVar, bVar, cVar5, jVar2, jSONObject4 != null ? new com.ironsource.mediationsdk.model.b(jSONObject4.optString("auctionData")) : new com.ironsource.mediationsdk.model.b()));
            JSONObject b25 = b(b10, IronSourceConstants.EVENTS_GENERIC_PARAMS);
            if (b25 != null && (b2 = b(b25, str12)) != null) {
                b25.remove(str12);
                Map<String, String> parseJsonToStringMap = IronSourceUtils.parseJsonToStringMap(b2);
                com.ironsource.mediationsdk.a.h.e().b(parseJsonToStringMap);
                com.ironsource.mediationsdk.a.d.e().b(parseJsonToStringMap);
            }
            if (b25 != null) {
                Map<String, String> parseJsonToStringMap2 = IronSourceUtils.parseJsonToStringMap(b25);
                com.ironsource.mediationsdk.a.h.e().a(parseJsonToStringMap2);
                com.ironsource.mediationsdk.a.d.e().a(parseJsonToStringMap2);
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    public final C a() {
        return new C(this.bu, this.bv);
    }

    public final void a(int i) {
        this.f11451e = i;
    }

    public final boolean b() {
        JSONObject jSONObject = this.f11450d;
        return (jSONObject == null || jSONObject.has(Constants.IPC_BUNDLE_KEY_SEND_ERROR) || this.f11447a == null || this.f11448b == null || this.f11449c == null || !f()) ? false : true;
    }

    public final String c() {
        try {
            return this.f11447a.f11291b;
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getRVBackFillProvider", e2);
            return null;
        }
    }

    public final String d() {
        try {
            return this.f11447a.f11292c;
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getRVPremiumProvider", e2);
            return null;
        }
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.appodeal.ads.modules.common.internal.Constants.APP_KEY, this.bu);
            jSONObject.put(DataKeys.USER_ID, this.bv);
            jSONObject.put("response", this.f11450d);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }
}
