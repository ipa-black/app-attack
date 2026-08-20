package com.appnext.banners;

import android.content.Context;
import android.util.Pair;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.d;
import com.appnext.core.p;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b extends com.appnext.core.d {
    private static b de;
    private final int aM = 50;

    @Override // com.appnext.core.d
    protected final void a(Ad ad, String str, String str2) {
    }

    @Override // com.appnext.core.d
    protected final <T> void a(String str, Ad ad, T t) {
    }

    public static synchronized b R() {
        b bVar;
        synchronized (b.class) {
            if (de == null) {
                de = new b();
            }
            bVar = de;
        }
        return bVar;
    }

    private b() {
    }

    @Override // com.appnext.core.d
    protected final String a(Context context, Ad ad, String str, ArrayList<Pair<String, String>> arrayList) {
        return "&auid=" + (ad != null ? ad.getAUID() : "1000");
    }

    public final void a(Context context, Ad ad, String str, d.a aVar, BannerAdRequest bannerAdRequest) {
        ((BannerAd) ad).setAdRequest(new BannerAdRequest(bannerAdRequest));
        super.a(context, ad, str, aVar);
    }

    @Override // com.appnext.core.d
    protected final void a(Context context, Ad ad, com.appnext.core.a aVar) throws Exception {
        AppnextAd a2 = a(context, ad, ((BannerAdRequest) ((BannerAd) ad).getAdRequest()).getCreativeType());
        if (a2 == null) {
            throw new Exception(AppnextError.NO_ADS);
        }
        com.appnext.core.f.Y(a2.getImageURL());
        if (ad instanceof MediumRectangleAd) {
            com.appnext.core.f.Y(a2.getWideImageURL());
        }
    }

    @Override // com.appnext.core.d
    protected final int a(Context context, com.appnext.core.g gVar) {
        BannerAdData bannerAdData = new BannerAdData((AppnextAd) gVar);
        int a2 = a(context, bannerAdData);
        if (a2 != 0) {
            return a2;
        }
        if (bannerAdData.getCampaignGoal().equals(com.appnext.core.a.b.hX) && com.appnext.core.f.c(context, bannerAdData.getAdPackage())) {
            return 2;
        }
        return (!bannerAdData.getCampaignGoal().equals(com.appnext.core.a.b.hY) || com.appnext.core.f.c(context, bannerAdData.getAdPackage())) ? 0 : 1;
    }

    @Override // com.appnext.core.d
    protected final p c(Ad ad) {
        return d.S();
    }

    @Override // com.appnext.core.d
    protected final boolean a(Context context, Ad ad, ArrayList<?> arrayList) {
        return a(context, ad, arrayList, ((BannerAdRequest) ((BannerAd) ad).getAdRequest()).getCreativeType()) != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
        if (hasVideo(r0) == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appnext.core.AppnextAd a(android.content.Context r6, com.appnext.core.Ad r7, java.util.ArrayList<?> r8, java.lang.String r9, java.util.ArrayList<java.lang.String> r10) {
        /*
            r5 = this;
            r6 = 0
            if (r8 != 0) goto L4
            return r6
        L4:
            java.util.Iterator r8 = r8.iterator()
        L8:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L7c
            java.lang.Object r0 = r8.next()
            com.appnext.core.AppnextAd r0 = (com.appnext.core.AppnextAd) r0
            boolean r1 = r7 instanceof com.appnext.banners.MediumRectangleAd
            r2 = 1
            if (r1 == 0) goto L61
            r9.hashCode()
            int r1 = r9.hashCode()
            r3 = 0
            r4 = -1
            switch(r1) {
                case -892481938: goto L3c;
                case 96673: goto L31;
                case 112202875: goto L26;
                default: goto L25;
            }
        L25:
            goto L46
        L26:
            java.lang.String r1 = "video"
            boolean r1 = r9.equals(r1)
            if (r1 != 0) goto L2f
            goto L46
        L2f:
            r4 = 2
            goto L46
        L31:
            java.lang.String r1 = "all"
            boolean r1 = r9.equals(r1)
            if (r1 != 0) goto L3a
            goto L46
        L3a:
            r4 = r2
            goto L46
        L3c:
            java.lang.String r1 = "static"
            boolean r1 = r9.equals(r1)
            if (r1 != 0) goto L45
            goto L46
        L45:
            r4 = r3
        L46:
            switch(r4) {
                case 0: goto L5d;
                case 1: goto L50;
                case 2: goto L4b;
                default: goto L49;
            }
        L49:
            r2 = r3
            goto L61
        L4b:
            boolean r2 = hasVideo(r0)
            goto L61
        L50:
            boolean r1 = c(r0)
            if (r1 != 0) goto L61
            boolean r1 = hasVideo(r0)
            if (r1 == 0) goto L49
            goto L61
        L5d:
            boolean r2 = c(r0)
        L61:
            if (r2 == 0) goto L8
            java.lang.String r1 = r0.getBannerID()
            java.lang.String r2 = r7.getPlacementID()
            boolean r1 = a(r1, r2)
            if (r1 != 0) goto L8
            java.lang.String r1 = r0.getBannerID()
            boolean r1 = r10.contains(r1)
            if (r1 != 0) goto L8
            return r0
        L7c:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.banners.b.a(android.content.Context, com.appnext.core.Ad, java.util.ArrayList, java.lang.String, java.util.ArrayList):com.appnext.core.AppnextAd");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AppnextAd a(Context context, Ad ad, ArrayList<?> arrayList, String str) {
        return a(context, ad, arrayList, str, new ArrayList<>());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AppnextAd a(Context context, Ad ad, String str) {
        ArrayList<?> ads;
        if (k(ad) == null || (ads = k(ad).getAds()) == null) {
            return null;
        }
        return a(context, ad, ads, str);
    }

    private static boolean a(Ad ad, AppnextAd appnextAd, String str) {
        if (ad instanceof MediumRectangleAd) {
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -892481938:
                    if (str.equals("static")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 96673:
                    if (str.equals("all")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 112202875:
                    if (str.equals("video")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    return c(appnextAd);
                case 1:
                    return c(appnextAd) || hasVideo(appnextAd);
                case 2:
                    return hasVideo(appnextAd);
                default:
                    return false;
            }
        }
        return true;
    }

    public final ArrayList<AppnextAd> f(Ad ad) {
        return k(ad).getAds();
    }

    private static int a(Context context, BannerAdData bannerAdData) {
        if (!bannerAdData.getCptList().equals("") && !bannerAdData.getCptList().equals("[]")) {
            try {
                JSONArray jSONArray = new JSONArray(bannerAdData.getCptList());
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (com.appnext.core.f.c(context, jSONArray.getString(i))) {
                        return 0;
                    }
                }
                return 3;
            } catch (JSONException unused) {
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasVideo(AppnextAd appnextAd) {
        return (appnextAd.getVideoUrl().equals("") && appnextAd.getVideoUrlHigh().equals("") && appnextAd.getVideoUrl30Sec().equals("") && appnextAd.getVideoUrlHigh30Sec().equals("")) ? false : true;
    }

    static boolean c(AppnextAd appnextAd) {
        return !appnextAd.getWideImageURL().equals("");
    }
}
