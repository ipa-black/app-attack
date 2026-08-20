package com.appnext.ads.interstitial;

import android.content.Context;
import android.util.Pair;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.d;
import com.appnext.core.f;
import com.appnext.core.g;
import com.appnext.core.p;
import com.appnext.core.webview.AppnextWebView;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes.dex */
public final class a extends d {
    private static final int aM = 30;
    private static a cl;
    private String bT;

    @Override // com.appnext.core.d
    protected final void a(Ad ad, String str, String str2) {
    }

    @Override // com.appnext.core.d
    protected final <T> void a(String str, Ad ad, T t) {
    }

    public static synchronized a G() {
        a aVar;
        synchronized (a.class) {
            if (cl == null) {
                cl = new a();
            }
            aVar = cl;
        }
        return aVar;
    }

    private a() {
    }

    public final void a(Context context, Ad ad, String str, d.a aVar, String str2) {
        this.bT = str2;
        super.a(context, ad, str, aVar);
    }

    @Override // com.appnext.core.d
    protected final String a(Context context, Ad ad, String str, ArrayList<Pair<String, String>> arrayList) {
        return "&auid=" + (ad != null ? ad.getAUID() : "600") + "&vidmin=" + (ad == null ? "" : Integer.valueOf(ad.getMinVideoLength())) + "&vidmax=" + (ad == null ? "" : Integer.valueOf(ad.getMaxVideoLength())) + (this.bT.equals("static") ? "&creative=0" : "");
    }

    @Override // com.appnext.core.d
    protected final void a(Context context, Ad ad, com.appnext.core.a aVar) throws Exception {
        AppnextWebView.u(context).a(((Interstitial) ad).getPageUrl(), (AppnextWebView.c) null);
        if (aVar == null || aVar.getAds() == null || aVar.getAds().size() <= 0) {
            return;
        }
        f.Y(((AppnextAd) aVar.getAds().get(0)).getImageURL());
    }

    @Override // com.appnext.core.d
    protected final int a(Context context, g gVar) {
        int i;
        AppnextAd appnextAd = (AppnextAd) gVar;
        InterstitialAd interstitialAd = new InterstitialAd(appnextAd);
        if (interstitialAd.getCampaignGoal().equals(com.appnext.core.a.b.hX) && f.c(context, interstitialAd.getAdPackage())) {
            i = 1;
        } else {
            i = (!interstitialAd.getCampaignGoal().equals(com.appnext.core.a.b.hY) || f.c(context, interstitialAd.getAdPackage())) ? 0 : 2;
        }
        int b2 = b(context, appnextAd);
        if (i == 0 && b2 == 0) {
            return 0;
        }
        return i != 0 ? i : b2;
    }

    @Override // com.appnext.core.d
    protected final boolean a(Context context, Ad ad, ArrayList<?> arrayList) {
        return a(context, (ArrayList<AppnextAd>) arrayList, ((Interstitial) ad).getCreativeType(), ad) != null;
    }

    @Override // com.appnext.core.d
    protected final p c(Ad ad) {
        return c.K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d(Ad ad) {
        return h(ad) && k(ad).getAds() != null && k(ad).getAds().size() > 0 && k(ad).aU().longValue() + 300000 > System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList<AppnextAd> b(Context context, Ad ad, String str) {
        ArrayList ads;
        AppnextAd a2;
        if (k(ad) == null || (ads = k(ad).getAds()) == null || (a2 = a(context, ads, str, ad)) == null) {
            return null;
        }
        ads.remove(a2);
        ads.add(0, a2);
        return ads;
    }

    private static ArrayList<AppnextAd> a(ArrayList<AppnextAd> arrayList, AppnextAd appnextAd) {
        arrayList.remove(appnextAd);
        arrayList.add(0, appnextAd);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.d
    public final String a(ArrayList<AppnextAd> arrayList) {
        return super.a(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.d
    public final void a(String str, Ad ad) {
        super.a(str, ad);
    }

    private static boolean hasVideo(AppnextAd appnextAd) {
        return (appnextAd.getVideoUrl().equals("") && appnextAd.getVideoUrlHigh().equals("") && appnextAd.getVideoUrl30Sec().equals("") && appnextAd.getVideoUrlHigh30Sec().equals("")) ? false : true;
    }

    private static boolean c(AppnextAd appnextAd) {
        return !appnextAd.getWideImageURL().equals("");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AppnextAd a(Context context, ArrayList<AppnextAd> arrayList, String str, Ad ad) {
        Iterator<AppnextAd> it = arrayList.iterator();
        while (it.hasNext()) {
            AppnextAd next = it.next();
            if (a(next, str, ad)) {
                return next;
            }
        }
        return null;
    }

    private boolean a(AppnextAd appnextAd, String str, Ad ad) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -892481938:
                if (str.equals("static")) {
                    c2 = 0;
                    break;
                }
                break;
            case 112202875:
                if (str.equals("video")) {
                    c2 = 1;
                    break;
                }
                break;
            case 835260319:
                if (str.equals(Interstitial.TYPE_MANAGED)) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                if (c(appnextAd) && !a(appnextAd.getBannerID(), ad.getPlacementID())) {
                    return true;
                }
                break;
            case 1:
                if (hasVideo(appnextAd) && !a(appnextAd.getBannerID(), ad.getPlacementID())) {
                    return true;
                }
                break;
            case 2:
                if ((c(appnextAd) || hasVideo(appnextAd)) && !a(appnextAd.getBannerID(), ad.getPlacementID())) {
                    return true;
                }
                break;
        }
        return false;
    }

    private static int a(Context context, AppnextAd appnextAd) {
        InterstitialAd interstitialAd = new InterstitialAd(appnextAd);
        if (interstitialAd.getCampaignGoal().equals(com.appnext.core.a.b.hX) && f.c(context, interstitialAd.getAdPackage())) {
            return 1;
        }
        return (!interstitialAd.getCampaignGoal().equals(com.appnext.core.a.b.hY) || f.c(context, interstitialAd.getAdPackage())) ? 0 : 2;
    }

    private static int b(Context context, AppnextAd appnextAd) {
        InterstitialAd interstitialAd = new InterstitialAd(appnextAd);
        if (!interstitialAd.getCptList().equals("") && !interstitialAd.getCptList().equals("[]")) {
            try {
                JSONArray jSONArray = new JSONArray(interstitialAd.getCptList());
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (f.c(context, jSONArray.getString(i))) {
                        return 0;
                    }
                }
                return 3;
            } catch (JSONException unused) {
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g(Ad ad) {
        if (ad == null || j(ad) != 0) {
            return;
        }
        aW().remove(new com.appnext.core.b(ad));
    }
}
