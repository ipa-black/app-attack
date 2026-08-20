package com.applovin.impl.adview;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenAdViewObserver;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.adview.activity.b.a;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class o implements AppLovinInterstitialAdDialog {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.n f4454a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Context> f4455b;

    /* renamed from: c  reason: collision with root package name */
    private volatile AppLovinAdLoadListener f4456c;

    /* renamed from: d  reason: collision with root package name */
    private volatile AppLovinAdDisplayListener f4457d;

    /* renamed from: e  reason: collision with root package name */
    private volatile AppLovinAdVideoPlaybackListener f4458e;

    /* renamed from: f  reason: collision with root package name */
    private volatile AppLovinAdClickListener f4459f;

    /* renamed from: g  reason: collision with root package name */
    private volatile com.applovin.impl.sdk.ad.e f4460g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.impl.adview.o$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f4466a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewGroup f4467b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AppLovinFullscreenAdViewObserver f4468c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f4469d;

        AnonymousClass3(Context context, ViewGroup viewGroup, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, long j) {
            this.f4466a = context;
            this.f4467b = viewGroup;
            this.f4468c = appLovinFullscreenAdViewObserver;
            this.f4469d = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            new Handler(this.f4466a.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.adview.o.3.1
                @Override // java.lang.Runnable
                public void run() {
                    o.this.f4454a.D();
                    if (com.applovin.impl.sdk.v.a()) {
                        o.this.f4454a.D().b("InterstitialAdDialogWrapper", "Presenting ad in a containerView(" + AnonymousClass3.this.f4467b + ")");
                    }
                    AnonymousClass3.this.f4467b.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                    com.applovin.impl.adview.activity.b.a.a(o.this.f4460g, o.this.f4459f, o.this.f4457d, o.this.f4458e, o.this.f4454a, (Activity) AnonymousClass3.this.f4466a, new a.InterfaceC0060a() { // from class: com.applovin.impl.adview.o.3.1.1
                        @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0060a
                        public void a(com.applovin.impl.adview.activity.b.a aVar) {
                            if (com.applovin.impl.sdk.utils.b.a((Activity) AnonymousClass3.this.f4466a)) {
                                com.applovin.impl.sdk.v.i("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad when parent activity is finishing");
                                o.a(o.this.f4460g, o.this.f4457d, "Failed to show interstitial: attempting to show ad when parent activity is finishing", null, null);
                                return;
                            }
                            AnonymousClass3.this.f4468c.setPresenter(aVar);
                            try {
                                aVar.a(AnonymousClass3.this.f4467b);
                            } catch (Throwable th) {
                                String str = "Failed to show interstitial: presenter threw exception " + th;
                                com.applovin.impl.sdk.v.i("InterstitialAdDialogWrapper", str);
                                o.a(o.this.f4460g, o.this.f4457d, str, null, null);
                            }
                        }

                        @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0060a
                        public void a(String str, Throwable th) {
                            o.a(o.this.f4460g, o.this.f4457d, str, th, null);
                        }
                    });
                }
            }, this.f4469d);
        }
    }

    public o(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.f4454a = appLovinSdk.coreSdk;
        this.f4455b = new WeakReference<>(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.o.6
            @Override // java.lang.Runnable
            public void run() {
                if (o.this.f4456c != null) {
                    o.this.f4456c.failedToReceiveAd(i);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        Intent intent = new Intent(context, AppLovinFullscreenActivity.class);
        intent.putExtra("com.applovin.interstitial.sdk_key", this.f4454a.C());
        AppLovinFullscreenActivity.parentInterstitialWrapper = this;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (context instanceof Activity) {
            context.startActivity(intent);
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    private void a(com.applovin.impl.sdk.ad.e eVar, final Context context) {
        f();
        this.f4460g = eVar;
        final long max = Math.max(0L, ((Long) this.f4454a.a(com.applovin.impl.sdk.c.b.ct)).longValue());
        this.f4454a.D();
        if (com.applovin.impl.sdk.v.a()) {
            this.f4454a.D().b("InterstitialAdDialogWrapper", "Presenting ad with delay of " + max);
        }
        a(eVar, context, new Runnable() { // from class: com.applovin.impl.adview.o.2
            @Override // java.lang.Runnable
            public void run() {
                new Handler(context.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.adview.o.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        o.this.f4454a.D();
                        if (com.applovin.impl.sdk.v.a()) {
                            o.this.f4454a.D().b("InterstitialAdDialogWrapper", "Presenting ad in a fullscreen activity");
                        }
                        o.this.a(context);
                    }
                }, max);
            }
        });
    }

    private void a(com.applovin.impl.sdk.ad.e eVar, Context context, final Runnable runnable) {
        if (!TextUtils.isEmpty(eVar.N()) || !eVar.ah() || com.applovin.impl.sdk.utils.i.a(context) || !(context instanceof Activity)) {
            runnable.run();
            return;
        }
        AlertDialog create = new AlertDialog.Builder(context).setTitle(eVar.ai()).setMessage(eVar.aj()).setPositiveButton(eVar.ak(), (DialogInterface.OnClickListener) null).create();
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.o.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                runnable.run();
            }
        });
        create.show();
    }

    private void a(com.applovin.impl.sdk.ad.e eVar, ViewGroup viewGroup, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, Context context) {
        f();
        this.f4460g = eVar;
        long max = Math.max(0L, ((Long) this.f4454a.a(com.applovin.impl.sdk.c.b.ct)).longValue());
        this.f4454a.D();
        if (com.applovin.impl.sdk.v.a()) {
            this.f4454a.D().b("InterstitialAdDialogWrapper", "Presenting ad with delay of " + max);
        }
        a(eVar, context, new AnonymousClass3(context, viewGroup, appLovinFullscreenAdViewObserver, max));
    }

    public static void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, Throwable th, AppLovinFullscreenActivity appLovinFullscreenActivity) {
        com.applovin.impl.sdk.v.c("InterstitialAdDialogWrapper", str, th);
        if (appLovinAdDisplayListener instanceof com.applovin.impl.sdk.ad.g) {
            com.applovin.impl.sdk.utils.k.a(appLovinAdDisplayListener, str);
        } else {
            com.applovin.impl.sdk.utils.k.b(appLovinAdDisplayListener, eVar);
        }
        if (appLovinFullscreenActivity != null) {
            appLovinFullscreenActivity.dismiss();
        }
    }

    private void a(AppLovinAd appLovinAd) {
        if (this.f4457d != null) {
            this.f4457d.adHidden(appLovinAd);
        }
    }

    private void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f4454a.v().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
    }

    private boolean a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2, Context context) {
        String str;
        if (context == null) {
            str = "Failed to show interstitial: stale activity reference provided";
        } else if (appLovinAd != null) {
            if (((AppLovinAdImpl) appLovinAd).hasShown() && ((Boolean) this.f4454a.a(com.applovin.impl.sdk.c.b.ch)).booleanValue()) {
                throw new IllegalStateException("Failed to display ad - ad can only be displayed once. Load the next ad.");
            }
            if (appLovinAd instanceof com.applovin.impl.sdk.ad.e) {
                return true;
            }
            this.f4454a.D();
            if (com.applovin.impl.sdk.v.a()) {
                this.f4454a.D().e("InterstitialAdDialogWrapper", "Failed to show interstitial: unknown ad type provided: '" + appLovinAd + "'");
            }
            return false;
        } else {
            str = "Failed to show ad: " + appLovinAd2;
        }
        com.applovin.impl.sdk.v.i("InterstitialAdDialogWrapper", str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinAd appLovinAd) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.o.5
            @Override // java.lang.Runnable
            public void run() {
                if (o.this.f4456c != null) {
                    o.this.f4456c.adReceived(appLovinAd);
                }
            }
        });
    }

    private void f() {
        if (this.f4454a.ai().b() == null) {
            this.f4454a.W().a(com.applovin.impl.sdk.d.f.o);
        }
    }

    private Context g() {
        return this.f4455b.get();
    }

    public void a() {
        this.f4459f = null;
        this.f4456c = null;
        this.f4458e = null;
        this.f4457d = null;
    }

    public AppLovinAdDisplayListener b() {
        return this.f4457d;
    }

    public AppLovinAdVideoPlaybackListener c() {
        return this.f4458e;
    }

    public AppLovinAdClickListener d() {
        return this.f4459f;
    }

    public com.applovin.impl.sdk.ad.e e() {
        return this.f4460g;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.f4459f = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f4457d = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f4456c = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f4458e = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        a(new AppLovinAdLoadListener() { // from class: com.applovin.impl.adview.o.1
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd appLovinAd) {
                o.this.b(appLovinAd);
                o.this.showAndRender(appLovinAd);
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int i) {
                o.this.a(i);
            }
        });
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        AppLovinAd maybeRetrieveNonDummyAd = Utils.maybeRetrieveNonDummyAd(appLovinAd, this.f4454a);
        Context g2 = g();
        if (a(maybeRetrieveNonDummyAd, appLovinAd, g2)) {
            a((com.applovin.impl.sdk.ad.e) maybeRetrieveNonDummyAd, g2);
        } else {
            a(appLovinAd);
        }
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle) {
        if (viewGroup == null || lifecycle == null) {
            com.applovin.impl.sdk.v.i("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
            a(appLovinAd);
            return;
        }
        AppLovinAd maybeRetrieveNonDummyAd = Utils.maybeRetrieveNonDummyAd(appLovinAd, this.f4454a);
        Context g2 = g();
        if (!a(maybeRetrieveNonDummyAd, appLovinAd, g2)) {
            a(appLovinAd);
            return;
        }
        AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver = new AppLovinFullscreenAdViewObserver(lifecycle, this, this.f4454a);
        lifecycle.addObserver(appLovinFullscreenAdViewObserver);
        a((com.applovin.impl.sdk.ad.e) maybeRetrieveNonDummyAd, viewGroup, appLovinFullscreenAdViewObserver, g2);
    }

    public String toString() {
        return "AppLovinInterstitialAdDialog{}";
    }
}
