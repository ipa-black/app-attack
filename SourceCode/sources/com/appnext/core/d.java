package com.appnext.core;

import android.accounts.AccountManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.util.Pair;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class d {
    private static final int fP = 50;
    protected final int fQ = 0;
    protected final int fR = 1;
    protected final int fS = 2;
    protected final int fT = 3;
    private final HashMap<b, com.appnext.core.a> fU = new HashMap<>();

    /* loaded from: classes.dex */
    public interface a {
        <T> void a(T t);

        void error(String str);
    }

    protected static int aV() {
        return 8000;
    }

    protected abstract int a(Context context, g gVar);

    protected abstract String a(Context context, Ad ad, String str, ArrayList<Pair<String, String>> arrayList);

    protected abstract void a(Context context, Ad ad, com.appnext.core.a aVar) throws Exception;

    protected abstract void a(Ad ad, String str, String str2);

    protected abstract <T> void a(String str, Ad ad, T t);

    protected abstract boolean a(Context context, Ad ad, ArrayList<?> arrayList);

    protected abstract p c(Ad ad);

    public final void a(Context context, Ad ad, String str, a aVar) {
        a(context, ad, str, aVar, true);
    }

    public final void a(final Context context, final Ad ad, final String str, final a aVar, final boolean z) {
        new Thread(new Runnable() { // from class: com.appnext.core.d.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (d.this.a(ad) || (d.this.h(ad) && d.this.i(ad))) {
                        d dVar = d.this;
                        Context context2 = context;
                        Ad ad2 = ad;
                        dVar.a(context2, ad2, dVar.k(ad2));
                    }
                } catch (Throwable unused) {
                }
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.d.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            if (d.this.a(ad) || (d.this.h(ad) && d.this.i(ad))) {
                                ArrayList<?> ads = d.this.k(ad).getAds();
                                if (ads.size() == 0) {
                                    aVar.error(AppnextError.NO_ADS);
                                    return;
                                } else if (d.this.a(context, ad, ads)) {
                                    if (aVar != null) {
                                        aVar.a(ads);
                                        return;
                                    }
                                    return;
                                } else {
                                    d.this.l(str);
                                }
                            }
                        } catch (Throwable unused2) {
                            if (aVar != null) {
                                aVar.error(AppnextError.NO_ADS);
                            }
                        }
                        try {
                            if (!f.bd().equals("")) {
                                d.this.b(context, ad, str, aVar, z);
                                return;
                            }
                            f.m(context);
                            d.this.b(context, ad, str, aVar, z);
                        } catch (Throwable unused3) {
                            if (aVar != null) {
                                aVar.error(AppnextError.NO_ADS);
                            }
                        }
                    }
                });
            }
        }).start();
    }

    private String b(Context context, Ad ad, String str, ArrayList<Pair<String, String>> arrayList) {
        String str2 = "";
        StringBuilder append = new StringBuilder("https://global.appnext.com/offerWallApi.aspx?ext=t&pimp=1&igroup=sdk&m=1&osid=100&s2s=1&type=json&id=").append(str).append("&cnt=50&tid=").append(ad != null ? ad.getTID() : "301").append("&vid=").append(ad != null ? ad.getVID() : "2.5.1.472").append("&cat=").append(ad != null ? ad.getCategories() : "").append("&pbk=").append(ad != null ? ad.getPostback() : "").append("&did=").append(f.b(context, Boolean.parseBoolean(c(ad).get("didPrivacy")))).append("&devn=").append(f.be()).append("&dosv=").append(Build.VERSION.SDK_INT).append("&dct=").append(f.Z(f.o(context))).append("&lang=").append(Locale.getDefault().getLanguage()).append("&dcc=");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager.getSimState() == 5) {
            String simOperator = telephonyManager.getSimOperator();
            str2 = simOperator.substring(0, 3) + "_" + simOperator.substring(3);
        }
        return append.append(str2).append("&dds=0&packageId=").append(context.getPackageName()).append("&g=").append(j(context)).append("&rnd=").append(new Random().nextInt()).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.appnext.core.d$2] */
    public void b(final Context context, final Ad ad, final String str, final a aVar, final boolean z) {
        new Thread() { // from class: com.appnext.core.d.2
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                super.run();
                try {
                    ad.setSessionId(f.r(context));
                } catch (Throwable unused) {
                }
                try {
                    synchronized (d.this.fU) {
                        if (d.this.k(ad) != null && d.this.k(ad).getState() == 1) {
                            if (aVar != null) {
                                d.this.k(ad).a(aVar);
                            }
                            return;
                        }
                        com.appnext.core.a aVar2 = new com.appnext.core.a();
                        aVar2.a(aVar);
                        aVar2.setPlacementID(str);
                        aVar2.setState(1);
                        d.this.fU.remove(new b(ad));
                        d.this.a(ad, aVar2);
                        try {
                            ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
                            String a2 = f.a(d.a(d.this, context, ad, str, arrayList) + d.this.a(context, ad, str, arrayList), arrayList, 8000);
                            if (a2.equals(JsonUtils.EMPTY_JSON) || d.P(a2)) {
                                d.this.a(AppnextError.NO_ADS, a2, ad);
                                return;
                            }
                            ArrayList<? extends g> a3 = d.this.a(context, ad, a2, 50);
                            if (a3.size() == 0) {
                                d.this.b(AppnextError.NO_ADS, ad);
                                return;
                            }
                            d.this.k(ad).d(a3);
                            if (z) {
                                if (!d.this.a(context, ad, a3)) {
                                    d.this.l(str);
                                }
                                if (0 < 3) {
                                    d dVar = d.this;
                                    Context context2 = context;
                                    Ad ad2 = ad;
                                    dVar.a(context2, ad2, dVar.k(ad2));
                                }
                            }
                            d.this.k(ad).setState(2);
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.d.2.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        d.this.k(ad).e(d.this.k(ad).getAds());
                                        d.this.a(str, ad, (Ad) d.this.k(ad).getAds());
                                    } catch (Throwable unused2) {
                                        d.this.b(AppnextError.INTERNAL_ERROR, ad);
                                    }
                                }
                            });
                        } catch (SocketTimeoutException e2) {
                            d.this.a(AppnextError.TIMEOUT, f.b(e2), ad, 0);
                        } catch (UnknownHostException e3) {
                            d.this.a(AppnextError.CONNECTION_ERROR, f.b(e3), ad, 0);
                        } catch (Throwable th) {
                            d.this.a(AppnextError.INTERNAL_ERROR, f.b(th), ad);
                        }
                    }
                } catch (Throwable th2) {
                    f.b(th2);
                    d.this.b(th2.getMessage(), ad);
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Ad ad) {
        try {
            if (h(ad)) {
                if (i(ad)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean h(Ad ad) {
        return (this.fU == null || k(ad) == null || k(ad).getState() != 2 || k(ad).getAds() == null) ? false : true;
    }

    protected final boolean i(Ad ad) {
        return j(ad) == 0 ? this.fU != null && k(ad) != null && k(ad).getAds().size() == 0 && k(ad).aU().longValue() + 60000 > System.currentTimeMillis() : (this.fU == null || k(ad) == null || k(ad).aU().longValue() + j(ad) <= System.currentTimeMillis()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long j(Ad ad) {
        long a2;
        long j = 60000;
        try {
        } catch (Throwable unused) {
            a2 = a(ad, "ads_caching_time_minutes");
        }
        if (c(ad).get("_cachingRequest") == null) {
            return a(ad, "ads_caching_time_minutes") * 60000;
        }
        a2 = a(ad, "_cachingRequest");
        j = 1000;
        return a2 * j;
    }

    private long a(Ad ad, String str) {
        return Long.valueOf(c(ad).get(str)).longValue();
    }

    public final void c(Context context, Ad ad, String str) {
        this.fU.remove(new b(ad));
        b(context, ad, str, null, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x007b, code lost:
        if (r3.getRevenueType().equals("cpc") != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final java.util.ArrayList<? extends com.appnext.core.g> a(final android.content.Context r7, com.appnext.core.Ad r8, java.lang.String r9, int r10) throws org.json.JSONException {
        /*
            r6 = this;
            com.appnext.core.a r10 = r6.k(r8)
            r10.N(r9)
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>(r9)
            java.lang.String r9 = "apps"
            org.json.JSONArray r9 = r1.getJSONArray(r9)
            r1 = 0
        L1d:
            int r2 = r9.length()
            if (r1 >= r2) goto L9c
            org.json.JSONObject r2 = r9.getJSONObject(r1)
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L99
            com.appnext.core.g r2 = parseAd(r2)     // Catch: java.lang.Throwable -> L99
            com.appnext.core.AppnextAd r2 = (com.appnext.core.AppnextAd) r2     // Catch: java.lang.Throwable -> L99
            int r3 = r10.size()     // Catch: java.lang.Throwable -> L99
            r2.setAdID(r3)     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = r8.getPlacementID()     // Catch: java.lang.Throwable -> L99
            r2.setPlacementID(r3)     // Catch: java.lang.Throwable -> L99
            int r3 = r6.a(r7, r2)     // Catch: java.lang.Throwable -> L99
            if (r3 != 0) goto L82
            com.appnext.core.AppnextAd r3 = b(r10, r2)     // Catch: java.lang.Throwable -> L99
            if (r3 == 0) goto L7e
            r10.remove(r3)     // Catch: java.lang.Throwable -> L99
            java.lang.String r4 = r3.getRevenueType()     // Catch: java.lang.Throwable -> L99
            java.lang.String r5 = r2.getRevenueType()     // Catch: java.lang.Throwable -> L99
            boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> L99
            if (r4 == 0) goto L71
            java.lang.String r4 = r3.getRevenueRate()     // Catch: java.lang.Throwable -> L99
            float r4 = java.lang.Float.parseFloat(r4)     // Catch: java.lang.Throwable -> L99
            java.lang.String r5 = r2.getRevenueRate()     // Catch: java.lang.Throwable -> L99
            float r5 = java.lang.Float.parseFloat(r5)     // Catch: java.lang.Throwable -> L99
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 < 0) goto L7e
            goto L7d
        L71:
            java.lang.String r4 = r3.getRevenueType()     // Catch: java.lang.Throwable -> L99
            java.lang.String r5 = "cpc"
            boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> L99
            if (r4 == 0) goto L7e
        L7d:
            r2 = r3
        L7e:
            r10.add(r2)     // Catch: java.lang.Throwable -> L99
            goto L90
        L82:
            java.lang.String r2 = r2.getBannerID()     // Catch: java.lang.Throwable -> L99
            java.lang.StringBuilder r2 = r0.append(r2)     // Catch: java.lang.Throwable -> L99
            java.lang.String r4 = ","
            r2.append(r4)     // Catch: java.lang.Throwable -> L99
            r2 = 1
        L90:
            int r2 = r10.size()     // Catch: java.lang.Throwable -> L99
            r3 = 50
            if (r2 != r3) goto L99
            goto L9c
        L99:
            int r1 = r1 + 1
            goto L1d
        L9c:
            java.lang.Thread r8 = new java.lang.Thread
            com.appnext.core.d$3 r9 = new com.appnext.core.d$3
            r9.<init>()
            r8.<init>(r9)
            r8.start()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.core.d.a(android.content.Context, com.appnext.core.Ad, java.lang.String, int):java.util.ArrayList");
    }

    private static AppnextAd a(AppnextAd appnextAd, AppnextAd appnextAd2) {
        return appnextAd.getRevenueType().equals(appnextAd2.getRevenueType()) ? Float.parseFloat(appnextAd.getRevenueRate()) < Float.parseFloat(appnextAd2.getRevenueRate()) ? appnextAd2 : appnextAd : appnextAd.getRevenueType().equals("cpc") ? appnextAd : appnextAd2;
    }

    private static AppnextAd b(ArrayList<AppnextAd> arrayList, AppnextAd appnextAd) {
        Iterator<AppnextAd> it = arrayList.iterator();
        while (it.hasNext()) {
            AppnextAd next = it.next();
            if (next.getAdPackage().equals(appnextAd.getAdPackage())) {
                return next;
            }
        }
        return null;
    }

    protected static boolean P(String str) {
        try {
            return new JSONObject(str).has("rnd");
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(ArrayList<AppnextAd> arrayList) {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<AppnextAd> it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(new JSONObject(it.next().getAdJSON()));
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apps", jSONArray);
            return jSONObject.toString().replace("\u2028", "\\u2028").replace("\u2029", "\\u2029");
        } catch (Throwable unused) {
            return "";
        }
    }

    protected final void b(String str, Ad ad) {
        a(str, "", ad);
    }

    protected final void a(String str, String str2, Ad ad) {
        a(str, str2, ad, 2);
    }

    protected final void a(final String str, final String str2, final Ad ad, final int i) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.d.4
            @Override // java.lang.Runnable
            public final void run() {
                com.appnext.core.a k = d.this.k(ad);
                if (k != null) {
                    if (k.getAds() == null) {
                        k.d(new ArrayList<>());
                    } else {
                        k.d(k.getAds());
                    }
                    k.setState(i);
                    k.O(str);
                    d.this.a(ad, str + " " + str2, k.getPlacementID());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.appnext.core.a k(Ad ad) {
        return this.fU.get(new b(ad));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final HashMap<b, com.appnext.core.a> aW() {
        return this.fU;
    }

    protected final void a(Ad ad, com.appnext.core.a aVar) {
        this.fU.put(new b(ad), aVar);
    }

    public static String d(AppnextAd appnextAd) {
        return appnextAd.getAdJSON();
    }

    public final String l(Ad ad) {
        return k(ad).A();
    }

    public static g parseAd(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            AppnextAd appnextAd = (AppnextAd) l.a(AppnextAd.class, jSONObject);
            if (appnextAd != null) {
                appnextAd.setAdJSON(jSONObject.toString());
                if (jSONObject.has("sid")) {
                    appnextAd.setSession(jSONObject.getString("sid"));
                }
                if (appnextAd.getStoreRating().equals("")) {
                    appnextAd.setStoreRating("0");
                }
            }
            return appnextAd;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(String str, String str2) {
        return j.bj().o(str, str2);
    }

    protected void l(String str) {
        j.bj().ab(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, Ad ad) {
        j.bj().n(str, ad.getPlacementID());
    }

    protected static int j(Context context) {
        try {
            if (f.a(context, "android.permission.READ_CONTACTS") && f.a(context, "android.permission.GET_ACCOUNTS")) {
                return AccountManager.get(context).getAccountsByType("com.google").length > 0 ? 0 : 1;
            }
        } catch (Throwable unused) {
        }
        return 2;
    }

    static /* synthetic */ String a(d dVar, Context context, Ad ad, String str, ArrayList arrayList) {
        String str2 = "";
        StringBuilder append = new StringBuilder("https://global.appnext.com/offerWallApi.aspx?ext=t&pimp=1&igroup=sdk&m=1&osid=100&s2s=1&type=json&id=").append(str).append("&cnt=50&tid=").append(ad != null ? ad.getTID() : "301").append("&vid=").append(ad != null ? ad.getVID() : "2.5.1.472").append("&cat=").append(ad != null ? ad.getCategories() : "").append("&pbk=").append(ad != null ? ad.getPostback() : "").append("&did=").append(f.b(context, Boolean.parseBoolean(dVar.c(ad).get("didPrivacy")))).append("&devn=").append(f.be()).append("&dosv=").append(Build.VERSION.SDK_INT).append("&dct=").append(f.Z(f.o(context))).append("&lang=").append(Locale.getDefault().getLanguage()).append("&dcc=");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager.getSimState() == 5) {
            String simOperator = telephonyManager.getSimOperator();
            str2 = simOperator.substring(0, 3) + "_" + simOperator.substring(3);
        }
        return append.append(str2).append("&dds=0&packageId=").append(context.getPackageName()).append("&g=").append(j(context)).append("&rnd=").append(new Random().nextInt()).toString();
    }
}
