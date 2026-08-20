package com.appodeal.ads.segments;

import com.applovin.sdk.AppLovinEventParameters;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.storage.b;
import com.appodeal.ads.utils.Log;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: h  reason: collision with root package name */
    public static final g f7503h = new g(-1, RewardedVideo.VIDEO_MODE_DEFAULT, new JSONObject());
    public static long i;

    /* renamed from: a  reason: collision with root package name */
    public final int f7504a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7505b;

    /* renamed from: c  reason: collision with root package name */
    public final JSONObject f7506c;

    /* renamed from: d  reason: collision with root package name */
    public final i[] f7507d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7508e;

    /* renamed from: f  reason: collision with root package name */
    public long f7509f = 0;

    /* renamed from: g  reason: collision with root package name */
    public final com.appodeal.ads.storage.o f7510g = com.appodeal.ads.storage.o.f7663b;

    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f7511a;

        static {
            int[] iArr = new int[AdType.values().length];
            f7511a = iArr;
            try {
                iArr[AdType.Interstitial.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7511a[AdType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public g(int i2, String str, JSONObject jSONObject) {
        this.f7504a = i2;
        this.f7505b = str;
        JSONObject optJSONObject = jSONObject.optJSONObject(com.appnext.core.a.b.hW);
        this.f7506c = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.f7507d = j.a(jSONObject);
        this.f7508e = com.appodeal.ads.segments.a.a(jSONObject.optString("match_rule", ""));
    }

    public static g a(JSONObject jSONObject) {
        try {
            return new g(jSONObject.getInt("id"), jSONObject.getString("name"), jSONObject);
        } catch (Throwable th) {
            Log.log(th);
            return null;
        }
    }

    public static boolean a(AdType adType) {
        return adType == AdType.Interstitial || adType == AdType.Video || adType == AdType.Rewarded;
    }

    public final long a() {
        return this.f7509f;
    }

    public final void a(long j) {
        this.f7509f = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.content.Context r14, com.appodeal.ads.modules.common.internal.adtype.AdType r15, double r16) {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.segments.g.a(android.content.Context, com.appodeal.ads.modules.common.internal.adtype.AdType, double):boolean");
    }

    public final String b() {
        return this.f7505b;
    }

    public final double c() {
        JSONObject optJSONObject = this.f7506c.optJSONObject("reward");
        if (optJSONObject != null) {
            return optJSONObject.optDouble(AppLovinEventParameters.REVENUE_AMOUNT, 0.0d);
        }
        return 0.0d;
    }

    public final String d() {
        JSONObject optJSONObject = this.f7506c.optJSONObject("reward");
        if (optJSONObject != null) {
            return optJSONObject.optString("currency", "");
        }
        return null;
    }

    public final JSONArray e() {
        String string = this.f7510g.f7664a.a(b.a.Placement).getString(String.valueOf(this.f7504a), "");
        return (string == null || string.isEmpty()) ? new JSONArray() : new JSONArray(string);
    }

    public final String toString() {
        return this.f7506c.toString();
    }

    public static String a(g gVar) {
        return gVar == null ? "-1" : String.valueOf(gVar.f7504a);
    }
}
