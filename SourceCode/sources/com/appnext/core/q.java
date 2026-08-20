package com.appnext.core;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.appnext.core.e;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class q {
    private static final String y = "error_no_market";
    private e click;
    private Context context;
    private h hH;
    private a hI;
    private String gj = "";
    private String guid = "";
    private String banner = "";
    private e.a hJ = new e.a() { // from class: com.appnext.core.q.3
        @Override // com.appnext.core.e.a
        public final void onMarket(String str) {
            AppnextAd f2 = q.this.hI.f();
            Ad e2 = q.this.hI.e();
            if (e2 == null || f2 == null || q.this.context == null) {
                return;
            }
            if (!f.c(q.this.context, f2.getAdPackage())) {
                try {
                    if (!str.startsWith("market://details?id=" + f2.getAdPackage()) && !str.startsWith("http")) {
                        q.this.b(f.m("admin.appnext.com", "applink"), f2.getBannerID(), e2.getPlacementID(), e2.getTID(), str, "SetROpenV1");
                    }
                } catch (Throwable unused) {
                }
                if (q.this.hH == null) {
                    q.this.hH = new h();
                }
                h hVar = q.this.hH;
                String adPackage = f2.getAdPackage();
                String m = f.m("admin.appnext.com", "applink");
                String bannerID = f2.getBannerID();
                String placementID = e2.getPlacementID();
                String tid = e2.getTID();
                String vid = e2.getVID();
                String auid = e2.getAUID();
                hVar.am = adPackage;
                hVar.an = str;
                hVar.guid = m;
                hVar.ao = bannerID;
                hVar.ap = placementID;
                hVar.at = null;
                hVar.aq = tid;
                hVar.ar = vid;
                hVar.as = auid;
                q.this.hH.t(q.this.context.getApplicationContext());
            } else if (str.startsWith("market://")) {
                try {
                    Intent launchIntentForPackage = q.this.context.getPackageManager().getLaunchIntentForPackage(f2.getAdPackage());
                    launchIntentForPackage.addFlags(268435456);
                    q.this.context.startActivity(launchIntentForPackage);
                } catch (Throwable unused2) {
                    q.this.hI.report("error_no_market");
                }
            } else {
                try {
                    q.d(q.this, str);
                } catch (Throwable unused3) {
                    q.this.hI.report("error_no_market");
                }
            }
        }

        @Override // com.appnext.core.e.a
        public final void error(String str) {
            try {
                q.this.b(f.m("admin.appnext.com", "applink"), q.this.hI.f().getBannerID(), q.this.hI.e().getPlacementID(), q.this.hI.e().getTID(), str, "SetDOpenV1");
            } catch (Throwable unused) {
            }
            try {
                if (Boolean.parseBoolean(q.this.hI.g().get("urlApp_protection"))) {
                    q.d(q.this, "market://details?id=" + q.this.hI.f().getAdPackage());
                } else if (str == null) {
                } else {
                    q.d(q.this, str);
                }
            } catch (Throwable unused2) {
            }
        }
    };

    /* loaded from: classes.dex */
    public interface a {
        Ad e();

        AppnextAd f();

        p g();

        void report(String str);
    }

    public q(Context context, a aVar) {
        this.context = context;
        this.click = e.k(context);
        this.hI = aVar;
    }

    public final void b(String str, String str2, String str3, String str4, String str5, String str6) {
        e eVar = this.click;
        if (eVar == null) {
            return;
        }
        new Thread(new e.AnonymousClass7(str, str2, str3, str4, str5, str6)).start();
    }

    public final void a(AppnextAd appnextAd, String str, e.a aVar) {
        e eVar = this.click;
        if (eVar == null) {
            return;
        }
        new Thread(new e.AnonymousClass6(appnextAd)).start();
    }

    public final void b(final AppnextAd appnextAd, final String str, final e.a aVar) {
        if (this.click == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.q.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    q.this.click.a(appnextAd.getAppURL(), appnextAd.getMarketUrl(), str + "&device=" + f.be() + "&ox=0", appnextAd.getBannerID(), new e.a() { // from class: com.appnext.core.q.1.1
                        @Override // com.appnext.core.e.a
                        public final void onMarket(String str2) {
                            appnextAd.getAdTitle();
                            appnextAd.getBannerID();
                            q.this.gj = str2;
                            q.this.guid = f.m("admin.appnext.com", "applink");
                            q.this.banner = appnextAd.getBannerID();
                            if (aVar != null) {
                                aVar.onMarket(str2);
                            }
                        }

                        @Override // com.appnext.core.e.a
                        public final void error(String str2) {
                            appnextAd.getAdTitle();
                            appnextAd.getBannerID();
                            q.this.gj = "";
                            q.this.guid = "";
                            q.this.banner = "";
                            if (aVar != null) {
                                aVar.error(str2);
                            }
                        }
                    });
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* renamed from: com.appnext.core.q$2  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements Runnable {
        final /* synthetic */ AppnextAd aY;
        final /* synthetic */ String hO;
        final /* synthetic */ e.a hP;
        final /* synthetic */ String hQ;

        AnonymousClass2(String str, e.a aVar, AppnextAd appnextAd, String str2) {
            this.hO = str;
            this.hP = aVar;
            this.aY = appnextAd;
            this.hQ = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!q.this.bo()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.q.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.this.hJ.error(AnonymousClass2.this.hO + "&device=" + f.be());
                        if (AnonymousClass2.this.hP != null) {
                            AnonymousClass2.this.hP.error(AnonymousClass2.this.hO + "&device=" + f.be());
                        }
                    }
                });
            } else if (this.aY == null) {
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.core.q.2.2
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    @Override // java.lang.Runnable
                    public final void run() {
                        char c2;
                        if (!q.this.gj.equals("") && q.this.gj.contains(AnonymousClass2.this.aY.getAdPackage())) {
                            new Thread(new Runnable() { // from class: com.appnext.core.q.2.2.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        f.a("https://admin.appnext.com/AdminService.asmx/SetRL?guid=" + q.this.guid + "&bid=" + q.this.banner + "&pid=" + AnonymousClass2.this.hQ, (HashMap<String, String>) null);
                                    } catch (Throwable unused) {
                                    }
                                }
                            }).start();
                            q.this.hJ.onMarket(q.this.gj);
                            if (AnonymousClass2.this.hP != null) {
                                AnonymousClass2.this.hP.onMarket(q.this.gj);
                            }
                            q.this.gj = "";
                            return;
                        }
                        String str = AnonymousClass2.this.hO;
                        String str2 = AnonymousClass2.this.hO + "&device=" + f.be();
                        String webview = AnonymousClass2.this.aY.getWebview();
                        switch (webview.hashCode()) {
                            case 48:
                                if (webview.equals("0")) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 49:
                                if (webview.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 50:
                                if (webview.equals("2")) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        if (c2 == 0) {
                            try {
                                q.this.hJ.onMarket(str2);
                                if (AnonymousClass2.this.hP != null) {
                                    AnonymousClass2.this.hP.onMarket(str2);
                                }
                            } catch (Throwable unused) {
                            }
                        } else if (c2 != 1) {
                            if (q.this.click == null) {
                                return;
                            }
                            q.this.click.a(AnonymousClass2.this.aY.getAppURL(), AnonymousClass2.this.aY.getMarketUrl(), str2, AnonymousClass2.this.aY.getBannerID(), new e.a() { // from class: com.appnext.core.q.2.2.2
                                @Override // com.appnext.core.e.a
                                public final void onMarket(String str3) {
                                    q.this.hJ.onMarket(str3);
                                    if (AnonymousClass2.this.hP != null) {
                                        AnonymousClass2.this.hP.onMarket(str3);
                                    }
                                }

                                @Override // com.appnext.core.e.a
                                public final void error(String str3) {
                                    q.this.hJ.error(str3);
                                    if (AnonymousClass2.this.hP != null) {
                                        AnonymousClass2.this.hP.error(str3);
                                    }
                                }
                            }, Long.parseLong(q.this.hI.g().get("resolve_timeout")) * 1000);
                        } else {
                            Intent intent = new Intent(q.this.context, ResultActivity.class);
                            intent.putExtra("url", str2);
                            intent.putExtra("title", AnonymousClass2.this.aY.getAdTitle());
                            intent.addFlags(268435456);
                            q.this.context.startActivity(intent);
                            if (AnonymousClass2.this.hP != null) {
                                AnonymousClass2.this.hP.onMarket(str2);
                            }
                        }
                    }
                });
            }
        }
    }

    public final void a(AppnextAd appnextAd, String str, String str2, e.a aVar) {
        new Thread(new AnonymousClass2(str, aVar, appnextAd, str2)).start();
    }

    private void openLink(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        this.context.startActivity(intent);
    }

    public final void e(AppnextAd appnextAd) {
        try {
            e eVar = this.click;
            if (eVar != null) {
                eVar.e(appnextAd);
            }
        } catch (Throwable unused) {
        }
    }

    protected final boolean bo() {
        try {
            if (this.context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) != 0) {
                f.a("http://www.appnext.com/myid.html", (HashMap<String, String>) null);
                return true;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                throw new IOException();
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void destroy() {
        try {
            h hVar = this.hH;
            if (hVar != null) {
                hVar.a(this.context);
            }
            this.hH = null;
        } catch (Throwable unused) {
        }
        this.context = null;
        if (this.click != null) {
            this.click = null;
        }
    }

    static /* synthetic */ void d(q qVar, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        qVar.context.startActivity(intent);
    }
}
