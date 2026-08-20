package com.appnext.core;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class e {
    private static e gA = null;
    private static final long go = 8000;
    private static final long gp = 15000;
    private static final String gq = "com.android.vending";
    private static final String gr = "market://";
    private static final String gs = "https://play.google.com/store";
    private Context context;
    private WebView gt;
    private WebView gu;
    private List gx;
    private Handler handler = new Handler(Looper.getMainLooper());
    private final ArrayList<b> gy = new ArrayList<>();
    private int gz = 0;
    private a gv = new a() { // from class: com.appnext.core.e.1
        @Override // com.appnext.core.e.a
        public final void onMarket(String str) {
            e.this.gz = 0;
            if (e.this.gy.size() == 0) {
                return;
            }
            b bVar = (b) e.this.gy.get(0);
            if (bVar.gL != null) {
                bVar.gL.onMarket(str);
            }
            try {
                String str2 = "https://admin.appnext.com/tools/navtac.html?bid=" + ((b) e.this.gy.get(0)).gM + "&guid=" + f.m("admin.appnext.com", "applink") + "&url=" + URLEncoder.encode(str, C.UTF8_NAME);
                if (e.this.gu == null) {
                    e.this.gu = new WebView(e.this.context);
                    e.this.gu.getSettings().setJavaScriptEnabled(true);
                    e.this.gu.getSettings().setDomStorageEnabled(true);
                    e.this.gu.getSettings().setMixedContentMode(0);
                    e.this.gu.setWebViewClient(new WebViewClient() { // from class: com.appnext.core.e.1.1
                        @Override // android.webkit.WebViewClient
                        public final boolean shouldOverrideUrlLoading(WebView webView, String str3) {
                            if (str3 == null || str3.contains("about:blank")) {
                                return false;
                            }
                            webView.loadUrl(str3);
                            return true;
                        }
                    });
                }
                e.this.gu.loadUrl("about:blank");
                e.this.gu.loadUrl(str2);
                e.this.bc();
                e.this.bb();
            } catch (UnsupportedEncodingException unused) {
                e.this.bb();
            }
        }

        @Override // com.appnext.core.e.a
        public final void error(String str) {
            e.this.gz = 0;
            if (e.this.gy.size() == 0) {
                return;
            }
            b bVar = (b) e.this.gy.get(0);
            if (bVar.gL != null) {
                bVar.gL.error(str);
            }
            e.this.bb();
        }
    };
    private Runnable gw = new Runnable() { // from class: com.appnext.core.e.2
        @Override // java.lang.Runnable
        public final void run() {
            if (e.this.gv != null && e.this.gt != null) {
                e.this.gv.error(e.this.gt.getUrl());
                e.this.gt.stopLoading();
            }
            e.this.bb();
        }
    };

    /* loaded from: classes.dex */
    public interface a {
        void error(String str);

        void onMarket(String str);
    }

    static /* synthetic */ Intent b(e eVar, String str) {
        return U(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        String aQ;
        String gJ;
        String gK;
        a gL;
        String gM;
        long gN;

        b(String str, String str2, String str3, String str4, a aVar, long j) {
            this.gJ = str;
            this.gK = str2;
            this.aQ = str3;
            this.gL = aVar;
            this.gM = str4;
            this.gN = j;
        }

        public final void onMarket(String str) {
            a aVar = this.gL;
            if (aVar != null) {
                aVar.onMarket(str);
            }
        }

        public final void error(String str) {
            a aVar = this.gL;
            if (aVar != null) {
                aVar.error(str);
            }
        }
    }

    public static e k(Context context) {
        if (gA == null) {
            synchronized (e.class) {
                if (gA == null) {
                    gA = new e(context);
                }
            }
        }
        return gA;
    }

    private e(Context context) {
        this.context = context.getApplicationContext();
    }

    public final void a(String str, String str2, String str3, String str4, a aVar) {
        a(str, str2, str3, str4, aVar, 8000L);
    }

    public final void a(String str, String str2, String str3, String str4, a aVar, long j) {
        if (this.context == null) {
            return;
        }
        if (str3 != null) {
            Iterator<b> it = this.gy.iterator();
            while (it.hasNext()) {
                if (it.next().aQ.equals(str3)) {
                    return;
                }
            }
            if (str3.endsWith("&ox=0")) {
                this.gy.add(new b(str, str2, str3, str4, aVar, j));
            } else {
                this.gz = 0;
                if (this.gy.size() > 0 && !this.gy.get(0).aQ.endsWith("&ox=0")) {
                    String str5 = this.gy.get(0).aQ;
                    this.gy.get(0).gL = null;
                    this.gy.remove(0);
                    this.gy.size();
                }
                this.gy.add(0, new b(str, str2, str3, str4, aVar, j));
            }
        }
        if (this.gy.size() <= 0 || this.gz == 1) {
            return;
        }
        this.gz = 1;
        String str6 = this.gy.get(0).gM;
        String str7 = this.gy.get(0).aQ;
        a(this.gy.get(0));
    }

    private void setState(int i) {
        this.gz = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bc() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private boolean R(String str) {
        try {
            this.context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private void S(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        for (ResolveInfo resolveInfo : this.context.getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.applicationInfo.packageName.equals("com.android.vending")) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                ComponentName componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
                intent.addFlags(268435456);
                intent.addFlags(2097152);
                intent.addFlags(67108864);
                intent.setComponent(componentName);
                this.context.startActivity(intent);
                return;
            }
        }
    }

    private void T(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(268435456);
        this.context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openMarket(String str) {
        try {
            if ((str.startsWith(gr) || str.startsWith(gs)) && R("com.android.vending")) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                Iterator<ResolveInfo> it = this.context.getPackageManager().queryIntentActivities(intent, 0).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (next.activityInfo.applicationInfo.packageName.equals("com.android.vending")) {
                        ActivityInfo activityInfo = next.activityInfo;
                        ComponentName componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
                        intent.addFlags(268435456);
                        intent.addFlags(2097152);
                        intent.addFlags(67108864);
                        intent.setComponent(componentName);
                        this.context.startActivity(intent);
                        break;
                    }
                }
            } else {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent2.setFlags(268435456);
                this.context.startActivity(intent2);
            }
            a aVar = this.gv;
            if (aVar != null) {
                aVar.onMarket(str);
            }
        } catch (Throwable unused) {
            a aVar2 = this.gv;
            if (aVar2 != null) {
                aVar2.error(str);
            }
        }
    }

    private void a(final b bVar) {
        try {
            String str = bVar.gK;
            if (!TextUtils.isEmpty(bVar.gK)) {
                openMarket(bVar.gK);
                new Thread(new Runnable() { // from class: com.appnext.core.e.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            f.a(bVar.gJ, (HashMap<String, String>) null);
                        } catch (Throwable unused) {
                        }
                    }
                }).start();
                return;
            }
            bc();
            if (this.gt == null) {
                WebView webView = new WebView(this.context);
                this.gt = webView;
                webView.getSettings().setJavaScriptEnabled(true);
                this.gt.getSettings().setDomStorageEnabled(true);
                this.gt.getSettings().setMixedContentMode(0);
                this.gt.setWebViewClient(new WebViewClient() { // from class: com.appnext.core.e.4
                    @Override // android.webkit.WebViewClient
                    public final boolean shouldOverrideUrlLoading(WebView webView2, String str2) {
                        String str3;
                        if (str2 == null) {
                            return false;
                        }
                        if (str2.startsWith("https://play.google.com/store/apps/")) {
                            str2 = str2.replace("https://play.google.com/store/apps/", e.gr);
                        }
                        if (str2.contains("about:blank")) {
                            return false;
                        }
                        if (!str2.startsWith("http://") && !str2.startsWith("https://")) {
                            if (str2.startsWith("intent://")) {
                                try {
                                    Intent parseUri = Intent.parseUri(str2, 1);
                                    if (e.this.context.getPackageManager().resolveActivity(parseUri, 65536) != null) {
                                        e.this.bc();
                                        if (e.this.gv != null) {
                                            e.this.gv.onMarket(parseUri.getData().toString());
                                        }
                                        return true;
                                    }
                                    if (parseUri.getExtras() != null && parseUri.getExtras().containsKey("browser_fallback_url") && !parseUri.getExtras().getString("browser_fallback_url").equals("")) {
                                        str3 = parseUri.getExtras().getString("browser_fallback_url");
                                    } else if (!parseUri.getExtras().containsKey("market_referrer") || parseUri.getExtras().getString("market_referrer").equals("")) {
                                        e.this.bc();
                                        if (e.this.gv != null) {
                                            e.this.gv.error(str2);
                                        }
                                        return true;
                                    } else {
                                        str3 = "market://details?id=" + parseUri.getPackage() + "&referrer=" + parseUri.getExtras().getString("market_referrer");
                                    }
                                    e.this.bc();
                                    if (e.this.gv != null) {
                                        e.this.gv.onMarket(str3);
                                    }
                                    return true;
                                } catch (Throwable unused) {
                                    return false;
                                }
                            }
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str2));
                            if (e.this.context.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
                                e.this.bc();
                                e.this.openMarket(str2);
                                if (e.this.gv != null) {
                                    e.this.gv.onMarket(str2);
                                }
                                return true;
                            }
                            webView2.loadUrl(str2);
                            return false;
                        }
                        e eVar = e.this;
                        Intent b2 = eVar.b(e.b(eVar, str2).setComponent(null));
                        if (b2 != null) {
                            e.this.bc();
                            if (e.this.gv != null) {
                                e.this.gv.onMarket(str2);
                            }
                            e.this.context.startActivity(b2);
                            return true;
                        }
                        webView2.loadUrl(str2);
                        return true;
                    }
                });
            }
            this.gt.stopLoading();
            this.gt.loadUrl("about:blank");
            this.gx = a(this.context, U(bVar.aQ).setComponent(null));
            this.gt.loadUrl(bVar.aQ);
            String str2 = bVar.aQ;
            this.handler.postDelayed(this.gw, bVar.aQ.endsWith("&ox=0") ? 15000L : bVar.gN);
        } catch (Throwable unused) {
            a aVar = this.gv;
            if (aVar != null) {
                aVar.error(bVar.aQ);
            }
            bb();
        }
    }

    public final void e(final AppnextAd appnextAd) {
        new Thread(new Runnable() { // from class: com.appnext.core.e.5
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    f.a(appnextAd.getImpressionURL(), (HashMap<String, String>) null);
                } catch (Throwable unused) {
                }
            }
        }).start();
    }

    /* renamed from: com.appnext.core.e$6  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass6 implements Runnable {
        final /* synthetic */ AppnextAd aY;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass6(AppnextAd appnextAd) {
            this.aY = appnextAd;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                f.a(this.aY.getImpressionURL() + "&device=" + f.be() + "&ox=0", (HashMap<String, String>) null);
            } catch (Throwable unused) {
            }
        }
    }

    public final void f(AppnextAd appnextAd) {
        new Thread(new AnonymousClass6(appnextAd)).start();
    }

    /* renamed from: com.appnext.core.e$7  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass7 implements Runnable {
        final /* synthetic */ String gE;
        final /* synthetic */ String gF;
        final /* synthetic */ String gG;
        final /* synthetic */ String gH;
        final /* synthetic */ String gI;
        final /* synthetic */ String val$placementID;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass7(String str, String str2, String str3, String str4, String str5, String str6) {
            this.gE = str;
            this.gF = str2;
            this.val$placementID = str3;
            this.gG = str4;
            this.gH = str5;
            this.gI = str6;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("guid", this.gE);
                hashMap.put("bannerId", this.gF);
                hashMap.put("placementId", this.val$placementID);
                hashMap.put("vid", this.gG);
                hashMap.put("url", this.gH);
                f.a("https://admin.appnext.com/AdminService.asmx/" + this.gI, hashMap);
            } catch (Throwable unused) {
            }
        }
    }

    public final void a(String str, String str2, String str3, String str4, String str5, String str6) {
        new Thread(new AnonymousClass7(str, str2, str3, str4, str5, str6)).start();
    }

    private static List a(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            arrayList.add(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
        }
        return arrayList;
    }

    public final Intent b(Intent intent) {
        List<ComponentName> a2 = a(this.context, intent);
        new HashSet();
        for (ComponentName componentName : a2) {
            if (!this.gx.contains(componentName)) {
                Intent intent2 = new Intent();
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    private static Intent U(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bb() {
        this.gz = 0;
        if (this.gy.size() == 0) {
            return;
        }
        String str = this.gy.get(0).aQ;
        this.gy.get(0).gL = null;
        this.gy.remove(0);
        this.gy.size();
        a(null, null, null, null, null);
    }
}
