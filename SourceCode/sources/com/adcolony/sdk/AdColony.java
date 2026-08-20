package com.adcolony.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import com.adcolony.adcolonysdk.BuildConfig;
import com.adcolony.sdk.e0;
import com.adcolony.sdk.o;
import com.adcolony.sdk.z0;
import com.google.android.exoplayer2.C;
import com.onesignal.NotificationBundleProcessor;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
/* loaded from: classes.dex */
public class AdColony {

    /* renamed from: a  reason: collision with root package name */
    private static ExecutorService f23a = z0.h();

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f24a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ t0 f25b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AdColonySignalsListener f26c;

        /* renamed from: com.adcolony.sdk.AdColony$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0007a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f27a;

            RunnableC0007a(String str) {
                this.f27a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!this.f27a.isEmpty()) {
                    a.this.f26c.onSuccess(this.f27a);
                } else {
                    a.this.f26c.onFailure();
                }
            }
        }

        a(k kVar, t0 t0Var, AdColonySignalsListener adColonySignalsListener) {
            this.f24a = kVar;
            this.f25b = t0Var;
            this.f26c = adColonySignalsListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            k kVar = this.f24a;
            z0.b(new RunnableC0007a(AdColony.b(kVar, this.f25b, kVar.y())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdColonyAdViewListener f29a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30b;

        b(AdColonyAdViewListener adColonyAdViewListener, String str) {
            this.f29a = adColonyAdViewListener;
            this.f30b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f29a.onRequestNotFilled(AdColony.a(this.f30b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Callable<f1> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f31a;

        c(long j) {
            this.f31a = j;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: b */
        public f1 call() {
            return AdColony.b(this.f31a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ double f32a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f33b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f34c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f35d;

        d(double d2, String str, String str2, String str3) {
            this.f32a = d2;
            this.f33b = str;
            this.f34c = str2;
            this.f35d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdColony.b();
            f1 b2 = c0.b();
            double d2 = this.f32a;
            if (d2 >= 0.0d) {
                c0.a(b2, "price", d2);
            }
            String str = this.f33b;
            if (str != null && str.length() <= 3) {
                c0.a(b2, "currency_code", this.f33b);
            }
            c0.a(b2, "product_id", this.f34c);
            c0.a(b2, "transaction_id", this.f35d);
            new h0("AdColony.on_iap_report", 1, b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements z0.b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f36a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AdColonyAdViewListener f37b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f38c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ z0.c f39d;

        e(AdColonyAdViewListener adColonyAdViewListener, String str, z0.c cVar) {
            this.f37b = adColonyAdViewListener;
            this.f38c = str;
            this.f39d = cVar;
        }

        @Override // com.adcolony.sdk.z0.b
        public boolean a() {
            return this.f36a;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.f36a) {
                    return;
                }
                this.f36a = true;
                AdColony.a(this.f37b, this.f38c);
                if (this.f39d.a()) {
                    new e0.a().a("RequestNotFilled called due to a native timeout. ").a("Timeout set to: " + this.f39d.b() + " ms. ").a("Execution took: " + (System.currentTimeMillis() - this.f39d.c()) + " ms. ").a("AdView request not yet started.").a(e0.i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z0.b f40a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AdColonyAdViewListener f42c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AdColonyAdSize f43d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ AdColonyAdOptions f44e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ z0.c f45f;

        f(z0.b bVar, String str, AdColonyAdViewListener adColonyAdViewListener, AdColonyAdSize adColonyAdSize, AdColonyAdOptions adColonyAdOptions, z0.c cVar) {
            this.f40a = bVar;
            this.f41b = str;
            this.f42c = adColonyAdViewListener;
            this.f43d = adColonyAdSize;
            this.f44e = adColonyAdOptions;
            this.f45f = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            k b2 = com.adcolony.sdk.a.b();
            if (b2.E() || b2.F()) {
                AdColony.f();
                z0.a(this.f40a);
            } else if (!AdColony.b() && com.adcolony.sdk.a.c()) {
                z0.a(this.f40a);
            } else {
                z0.c(this.f40a);
                if (this.f40a.a()) {
                    return;
                }
                b2.c().a(this.f41b, this.f42c, this.f43d, this.f44e, this.f45f.d());
            }
        }
    }

    /* loaded from: classes.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdColonyAppOptions f46a;

        g(AdColonyAppOptions adColonyAppOptions) {
            this.f46a = adColonyAppOptions;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdColony.b();
            f1 b2 = c0.b();
            c0.a(b2, "options", this.f46a.b());
            new h0("Options.set_options", 1, b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements z0.b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f47a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitialListener f48b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f49c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ z0.c f50d;

        h(AdColonyInterstitialListener adColonyInterstitialListener, String str, z0.c cVar) {
            this.f48b = adColonyInterstitialListener;
            this.f49c = str;
            this.f50d = cVar;
        }

        @Override // com.adcolony.sdk.z0.b
        public boolean a() {
            return this.f47a;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.f47a) {
                    return;
                }
                this.f47a = true;
                AdColony.a(this.f48b, this.f49c);
                if (this.f50d.a()) {
                    new e0.a().a("RequestNotFilled called due to a native timeout. ").a("Timeout set to: " + this.f50d.b() + " ms. ").a("Execution took: " + (System.currentTimeMillis() - this.f50d.c()) + " ms. ").a("Interstitial request not yet started.").a(e0.i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z0.b f51a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f52b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitialListener f53c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AdColonyAdOptions f54d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ z0.c f55e;

        i(z0.b bVar, String str, AdColonyInterstitialListener adColonyInterstitialListener, AdColonyAdOptions adColonyAdOptions, z0.c cVar) {
            this.f51a = bVar;
            this.f52b = str;
            this.f53c = adColonyInterstitialListener;
            this.f54d = adColonyAdOptions;
            this.f55e = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            k b2 = com.adcolony.sdk.a.b();
            if (b2.E() || b2.F()) {
                AdColony.f();
                z0.a(this.f51a);
            } else if (!AdColony.b() && com.adcolony.sdk.a.c()) {
                z0.a(this.f51a);
            } else {
                AdColonyZone adColonyZone = b2.C().get(this.f52b);
                if (adColonyZone == null) {
                    adColonyZone = new AdColonyZone(this.f52b);
                }
                if (adColonyZone.getZoneType() != 2 && adColonyZone.getZoneType() != 1) {
                    z0.c(this.f51a);
                    if (this.f51a.a()) {
                        return;
                    }
                    b2.c().a(this.f52b, this.f53c, this.f54d, this.f55e.d());
                    return;
                }
                z0.a(this.f51a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitialListener f56a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f57b;

        j(AdColonyInterstitialListener adColonyInterstitialListener, String str) {
            this.f56a = adColonyInterstitialListener;
            this.f57b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f56a.onRequestNotFilled(AdColony.a(this.f57b));
        }
    }

    public static boolean addCustomMessageListener(AdColonyCustomMessageListener adColonyCustomMessageListener, String str) {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.addCustomMessageListener as AdColony ").a("has not yet been configured.").a(e0.f295f);
            return false;
        } else if (!z0.e(str)) {
            new e0.a().a("Ignoring call to AdColony.addCustomMessageListener.").a(e0.f295f);
            return false;
        } else {
            com.adcolony.sdk.a.b().m().put(str, adColonyCustomMessageListener);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(k kVar, t0 t0Var, long j2) {
        q n = kVar.n();
        ArrayList arrayList = new ArrayList(Arrays.asList(z0.c(kVar.u().b()), z0.a(n.d())));
        if (j2 > 0) {
            q0 q0Var = new q0();
            if (n.N()) {
                arrayList.add(n.b());
            } else {
                q0Var.a(n.a(j2));
            }
            if (n.O()) {
                arrayList.add(n.c());
            } else {
                q0Var.a(n.b(j2));
            }
            if (kVar.G()) {
                q0Var.a(new c(j2));
            } else {
                arrayList.add(d());
            }
            if (!q0Var.b()) {
                arrayList.addAll(q0Var.a());
            }
        } else {
            arrayList.add(n.b());
            arrayList.add(n.c());
            arrayList.add(d());
        }
        arrayList.add(kVar.e());
        f1 a2 = c0.a((f1[]) arrayList.toArray(new f1[0]));
        t0Var.c();
        c0.b(a2, "signals_count", t0Var.b());
        c0.b(a2, "device_audio", e());
        a2.e();
        byte[] bytes = a2.toString().getBytes(com.adcolony.sdk.h.f341a);
        if (kVar.H()) {
            return a(bytes);
        }
        return Base64.encodeToString(bytes, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        if (f23a.isShutdown()) {
            f23a = Executors.newSingleThreadExecutor();
        }
    }

    public static boolean clearCustomMessageListeners() {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.clearCustomMessageListeners as AdColony").a(" has not yet been configured.").a(e0.f295f);
            return false;
        }
        com.adcolony.sdk.a.b().m().clear();
        return true;
    }

    public static void collectSignals(AdColonySignalsListener adColonySignalsListener) {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.collectSignals() as AdColony has not yet been configured.").a(e0.f295f);
            adColonySignalsListener.onFailure();
            return;
        }
        k b2 = com.adcolony.sdk.a.b();
        if (a(new a(b2, b2.x(), adColonySignalsListener))) {
            return;
        }
        adColonySignalsListener.onFailure();
    }

    @Deprecated
    public static boolean configure(Activity activity, String str, String... strArr) {
        return a(activity, (AdColonyAppOptions) null, str);
    }

    private static f1 d() {
        return b(-1L);
    }

    public static boolean disable() {
        if (com.adcolony.sdk.a.e()) {
            Context a2 = com.adcolony.sdk.a.a();
            if (a2 != null && (a2 instanceof com.adcolony.sdk.b)) {
                ((Activity) a2).finish();
            }
            k b2 = com.adcolony.sdk.a.b();
            b2.c().b();
            b2.R();
            b2.T();
            b2.b(true);
            return true;
        }
        return false;
    }

    private static boolean e() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return false;
        }
        return z0.b(z0.a(a2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f() {
        new e0.a().a("The AdColony API is not available while AdColony is disabled.").a(e0.f297h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g() {
        f23a.shutdown();
    }

    public static AdColonyAppOptions getAppOptions() {
        if (com.adcolony.sdk.a.e()) {
            return com.adcolony.sdk.a.b().u();
        }
        return null;
    }

    public static AdColonyCustomMessageListener getCustomMessageListener(String str) {
        if (com.adcolony.sdk.a.e()) {
            return com.adcolony.sdk.a.b().m().get(str);
        }
        return null;
    }

    public static AdColonyRewardListener getRewardListener() {
        if (com.adcolony.sdk.a.e()) {
            return com.adcolony.sdk.a.b().w();
        }
        return null;
    }

    public static String getSDKVersion() {
        if (!com.adcolony.sdk.a.e()) {
            return "";
        }
        return com.adcolony.sdk.a.b().n().I();
    }

    public static AdColonyZone getZone(String str) {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.getZone() as AdColony has not yet been ").a("configured.").a(e0.f295f);
            return null;
        }
        HashMap<String, AdColonyZone> C = com.adcolony.sdk.a.b().C();
        if (C.containsKey(str)) {
            return C.get(str);
        }
        AdColonyZone adColonyZone = new AdColonyZone(str);
        com.adcolony.sdk.a.b().C().put(str, adColonyZone);
        return adColonyZone;
    }

    public static boolean notifyIAPComplete(String str, String str2) {
        return notifyIAPComplete(str, str2, null, 0.0d);
    }

    public static boolean removeCustomMessageListener(String str) {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.removeCustomMessageListener as AdColony").a(" has not yet been configured.").a(e0.f295f);
            return false;
        }
        com.adcolony.sdk.a.b().m().remove(str);
        return true;
    }

    public static boolean removeRewardListener() {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.removeRewardListener() as AdColony has ").a("not yet been configured.").a(e0.f295f);
            return false;
        }
        com.adcolony.sdk.a.b().a((AdColonyRewardListener) null);
        return true;
    }

    public static boolean requestAdView(String str, AdColonyAdViewListener adColonyAdViewListener, AdColonyAdSize adColonyAdSize) {
        return requestAdView(str, adColonyAdViewListener, adColonyAdSize, null);
    }

    public static boolean requestInterstitial(String str, AdColonyInterstitialListener adColonyInterstitialListener) {
        return requestInterstitial(str, adColonyInterstitialListener, null);
    }

    public static boolean setAppOptions(AdColonyAppOptions adColonyAppOptions) {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.setAppOptions() as AdColony has not yet").a(" been configured.").a(e0.f295f);
            return false;
        }
        if (adColonyAppOptions == null) {
            adColonyAppOptions = new AdColonyAppOptions();
        }
        com.adcolony.sdk.a.a(adColonyAppOptions);
        if (com.adcolony.sdk.a.d()) {
            k b2 = com.adcolony.sdk.a.b();
            if (b2.D()) {
                adColonyAppOptions.a(b2.u().a());
            }
        }
        com.adcolony.sdk.a.b().b(adColonyAppOptions);
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 != null) {
            adColonyAppOptions.b(a2);
        }
        return a(new g(adColonyAppOptions));
    }

    public static boolean setRewardListener(AdColonyRewardListener adColonyRewardListener) {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.setRewardListener() as AdColony has not").a(" yet been configured.").a(e0.f295f);
            return false;
        }
        com.adcolony.sdk.a.b().a(adColonyRewardListener);
        return true;
    }

    @Deprecated
    public static boolean configure(Activity activity, AdColonyAppOptions adColonyAppOptions, String str, String... strArr) {
        return a(activity, adColonyAppOptions, str);
    }

    public static boolean notifyIAPComplete(String str, String str2, String str3, double d2) {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to notifyIAPComplete as AdColony has not yet been ").a("configured.").a(e0.f295f);
            return false;
        } else if (z0.e(str) && z0.e(str2)) {
            if (str3 != null && str3.length() > 3) {
                new e0.a().a("You are trying to report an IAP event with a currency String ").a("containing more than 3 characters.").a(e0.f295f);
            }
            if (a(new d(d2, str3, str, str2))) {
                return true;
            }
            new e0.a().a("Executing AdColony.notifyIAPComplete failed").a(e0.i);
            return false;
        } else {
            new e0.a().a("Ignoring call to notifyIAPComplete as one of the passed Strings ").a("is greater than ").a(128).a(" characters.").a(e0.f295f);
            return false;
        }
    }

    public static boolean requestAdView(String str, AdColonyAdViewListener adColonyAdViewListener, AdColonyAdSize adColonyAdSize, AdColonyAdOptions adColonyAdOptions) {
        if (adColonyAdViewListener == null) {
            new e0.a().a("AdColonyAdViewListener is set to null. ").a("It is required to be non null.").a(e0.f295f);
        }
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to requestAdView as AdColony has not yet been").a(" configured.").a(e0.f295f);
            a(adColonyAdViewListener, str);
            return false;
        } else if (adColonyAdSize.getHeight() > 0 && adColonyAdSize.getWidth() > 0) {
            Bundle bundle = new Bundle();
            bundle.putString("zone_id", str);
            if (r0.a(1, bundle)) {
                a(adColonyAdViewListener, str);
                return false;
            }
            z0.c cVar = new z0.c(com.adcolony.sdk.a.b().d());
            e eVar = new e(adColonyAdViewListener, str, cVar);
            z0.a(eVar, cVar.d());
            if (a(new f(eVar, str, adColonyAdViewListener, adColonyAdSize, adColonyAdOptions, cVar))) {
                return true;
            }
            z0.a((z0.b) eVar);
            return false;
        } else {
            new e0.a().a("Ignoring call to requestAdView as you've provided an AdColonyAdSize").a(" object with an invalid width or height.").a(e0.f295f);
            a(adColonyAdViewListener, str);
            return false;
        }
    }

    public static boolean requestInterstitial(String str, AdColonyInterstitialListener adColonyInterstitialListener, AdColonyAdOptions adColonyAdOptions) {
        if (adColonyInterstitialListener == null) {
            new e0.a().a("AdColonyInterstitialListener is set to null. ").a("It is required to be non null.").a(e0.f295f);
        }
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.requestInterstitial as AdColony has not").a(" yet been configured.").a(e0.f295f);
            a(adColonyInterstitialListener, str);
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString("zone_id", str);
        if (r0.a(1, bundle)) {
            a(adColonyInterstitialListener, str);
            return false;
        }
        z0.c cVar = new z0.c(com.adcolony.sdk.a.b().d());
        h hVar = new h(adColonyInterstitialListener, str, cVar);
        z0.a(hVar, cVar.d());
        if (a(new i(hVar, str, adColonyInterstitialListener, adColonyAdOptions, cVar))) {
            return true;
        }
        z0.a((z0.b) hVar);
        return false;
    }

    @Deprecated
    public static boolean configure(Application application, String str, String... strArr) {
        return configure(application, (AdColonyAppOptions) null, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Runnable runnable) {
        return z0.a(f23a, runnable);
    }

    @Deprecated
    public static boolean configure(Application application, AdColonyAppOptions adColonyAppOptions, String str, String... strArr) {
        return a(application, adColonyAppOptions, str);
    }

    private static String a(k kVar, t0 t0Var) {
        return b(kVar, t0Var, -1L);
    }

    public static boolean configure(Activity activity, String str) {
        return a(activity, (AdColonyAppOptions) null, str);
    }

    static String a(byte[] bArr) {
        com.adcolony.sdk.g gVar = new com.adcolony.sdk.g(BuildConfig.COLLECT_SIGNALS_DICT_ID, "", BuildConfig.COLLECT_SIGNALS_DICT, "");
        try {
            byte[] a2 = gVar.a(bArr);
            f1 b2 = c0.b();
            b2.a(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, gVar.b());
            b2.a("b", Base64.encodeToString(a2, 0));
            return b2.toString();
        } catch (UnsupportedEncodingException | JSONException unused) {
            return Base64.encodeToString(bArr, 0);
        }
    }

    public static boolean configure(Activity activity, AdColonyAppOptions adColonyAppOptions, String str) {
        return a(activity, adColonyAppOptions, str);
    }

    public static boolean configure(Application application, String str) {
        return configure(application, (AdColonyAppOptions) null, str);
    }

    public static boolean configure(Application application, AdColonyAppOptions adColonyAppOptions, String str) {
        return a(application, adColonyAppOptions, str);
    }

    private static boolean a(Context context, AdColonyAppOptions adColonyAppOptions, String str) {
        if (r0.a(0, null)) {
            new e0.a().a("Cannot configure AdColony; configuration mechanism requires 5 ").a("seconds between attempts.").a(e0.f295f);
            return false;
        }
        if (context == null) {
            context = com.adcolony.sdk.a.a();
        }
        if (context == null) {
            new e0.a().a("Ignoring call to AdColony.configure() as the provided Activity or ").a("Application context is null and we do not currently hold a ").a("reference to either for our use.").a(e0.f295f);
            return false;
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        if (adColonyAppOptions == null) {
            adColonyAppOptions = new AdColonyAppOptions();
        }
        if (com.adcolony.sdk.a.d() && !c0.b(com.adcolony.sdk.a.b().u().b(), "reconfigurable") && !com.adcolony.sdk.a.b().u().a().equals(str)) {
            new e0.a().a("Ignoring call to AdColony.configure() as the app id does not ").a("match what was used during the initial configuration.").a(e0.f295f);
            return false;
        } else if (str.equals("")) {
            new e0.a().a("AdColony.configure() called with an empty app id String.").a(e0.f297h);
            return false;
        } else {
            com.adcolony.sdk.a.f126c = true;
            adColonyAppOptions.a(str);
            com.adcolony.sdk.a.a(context, adColonyAppOptions, false);
            f1 b2 = c0.b();
            c0.a(b2, "appId", str);
            c0.j(b2, com.adcolony.sdk.a.b().z().f() + "/adc3/AppInfo");
            return true;
        }
    }

    @Deprecated
    public static String collectSignals() {
        if (!com.adcolony.sdk.a.e()) {
            new e0.a().a("Ignoring call to AdColony.collectSignals() as AdColony has not yet been configured.").a(e0.f295f);
            return "";
        }
        k b2 = com.adcolony.sdk.a.b();
        return a(b2, b2.x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f1 b(long j2) {
        o.b b2;
        f1 b3 = c0.b();
        if (j2 > 0) {
            b2 = o0.c().a(j2);
        } else {
            b2 = o0.c().b();
        }
        if (b2 != null) {
            c0.a(b3, "odt_payload", b2.b());
        }
        return b3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        k b2 = com.adcolony.sdk.a.b();
        b2.a(C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
        return b2.I();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdColonyZone a(String str) {
        AdColonyZone adColonyZone;
        if (com.adcolony.sdk.a.c()) {
            adColonyZone = com.adcolony.sdk.a.b().C().get(str);
        } else {
            adColonyZone = com.adcolony.sdk.a.d() ? com.adcolony.sdk.a.b().C().get(str) : null;
        }
        if (adColonyZone == null) {
            AdColonyZone adColonyZone2 = new AdColonyZone(str);
            adColonyZone2.c(6);
            return adColonyZone2;
        }
        return adColonyZone;
    }

    static void a(AdColonyInterstitialListener adColonyInterstitialListener, String str) {
        if (adColonyInterstitialListener != null) {
            z0.b(new j(adColonyInterstitialListener, str));
        }
    }

    static void a(AdColonyAdViewListener adColonyAdViewListener, String str) {
        if (adColonyAdViewListener != null) {
            z0.b(new b(adColonyAdViewListener, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, AdColonyAppOptions adColonyAppOptions) {
        k b2 = com.adcolony.sdk.a.b();
        q n = b2.n();
        if (adColonyAppOptions == null || context == null) {
            return;
        }
        String d2 = z0.d(context);
        String c2 = z0.c();
        int d3 = z0.d();
        String m = n.m();
        String e2 = b2.s().e();
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("sessionId", "unknown");
        hashMap.put("countryLocale", Locale.getDefault().getDisplayLanguage() + " (" + Locale.getDefault().getDisplayCountry() + ")");
        hashMap.put("countryLocaleShort", com.adcolony.sdk.a.b().n().p());
        hashMap.put("manufacturer", com.adcolony.sdk.a.b().n().C());
        hashMap.put("model", com.adcolony.sdk.a.b().n().F());
        hashMap.put("osVersion", com.adcolony.sdk.a.b().n().H());
        hashMap.put("carrierName", m);
        hashMap.put("networkType", e2);
        hashMap.put("platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        hashMap.put("appName", d2);
        hashMap.put("appVersion", c2);
        hashMap.put("appBuildNumber", Integer.valueOf(d3));
        hashMap.put("appId", "" + adColonyAppOptions.a());
        hashMap.put("apiLevel", Integer.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("sdkVersion", com.adcolony.sdk.a.b().n().I());
        hashMap.put("controllerVersion", "unknown");
        f1 f1Var = new f1(adColonyAppOptions.getMediationInfo());
        f1 f1Var2 = new f1(adColonyAppOptions.getPluginInfo());
        if (!c0.h(f1Var, "mediation_network").equals("")) {
            hashMap.put("mediationNetwork", c0.h(f1Var, "mediation_network"));
            hashMap.put("mediationNetworkVersion", c0.h(f1Var, "mediation_network_version"));
        }
        if (!c0.h(f1Var2, "plugin").equals("")) {
            hashMap.put("plugin", c0.h(f1Var2, "plugin"));
            hashMap.put("pluginVersion", c0.h(f1Var2, "plugin_version"));
        }
        b2.q().a(hashMap);
    }
}
