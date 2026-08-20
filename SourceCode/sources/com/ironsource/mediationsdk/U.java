package com.ironsource.mediationsdk;

import android.text.TextUtils;
import com.ironsource.mediationsdk.AbstractC1345b;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Date;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public final class U extends Y implements InterstitialSmashListener {

    /* renamed from: a  reason: collision with root package name */
    a f10836a;

    /* renamed from: b  reason: collision with root package name */
    private T f10837b;
    private Timer j;
    private int k;
    private String l;
    private String m;
    private long n;
    private final Object o;

    /* loaded from: classes3.dex */
    public enum a {
        NO_INIT,
        INIT_IN_PROGRESS,
        INIT_SUCCESS,
        LOAD_IN_PROGRESS,
        LOADED,
        LOAD_FAILED
    }

    public U(String str, String str2, NetworkSettings networkSettings, T t, int i, AbstractAdapter abstractAdapter) {
        super(new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getInterstitialSettings(), IronSource.AD_UNIT.INTERSTITIAL), abstractAdapter);
        this.o = new Object();
        this.f10836a = a.NO_INIT;
        this.l = str;
        this.m = str2;
        this.f10837b = t;
        this.j = null;
        this.k = i;
        this.f10871c.addInterstitialListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        d("current state=" + this.f10836a + ", new state=" + aVar);
        this.f10836a = aVar;
    }

    private void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "ProgIsSmash " + k() + " : " + str, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgIsSmash " + k() + " : " + str, 0);
    }

    private void e(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgIsSmash " + k() + " : " + str, 3);
    }

    private void q() {
        try {
            String str = H.a().l;
            if (!TextUtils.isEmpty(str)) {
                this.f10871c.setMediationSegment(str);
            }
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (TextUtils.isEmpty(pluginType)) {
                return;
            }
            this.f10871c.setPluginData(pluginType, ConfigFile.getConfigFile().getPluginFrameworkVersion());
        } catch (Exception e2) {
            d("setCustomParams() " + e2.getMessage());
        }
    }

    private void r() {
        synchronized (this.o) {
            Timer timer = this.j;
            if (timer != null) {
                timer.cancel();
                this.j = null;
            }
        }
    }

    private void s() {
        synchronized (this.o) {
            d("start timer");
            r();
            Timer timer = new Timer();
            this.j = timer;
            timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.U.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    U.this.d("timed out state=" + U.this.f10836a.name() + " isBidder=" + U.this.h());
                    if (U.this.f10836a == a.INIT_IN_PROGRESS && U.this.h()) {
                        U.this.a(a.NO_INIT);
                        return;
                    }
                    U.this.a(a.LOAD_FAILED);
                    U.this.f10837b.a(ErrorBuilder.buildLoadFailedError("timed out"), U.this, new Date().getTime() - U.this.n);
                }
            }, this.k * 1000);
        }
    }

    public final Map<String, Object> a() {
        try {
            if (h()) {
                return this.f10871c.getInterstitialBiddingData(this.f10874f);
            }
            return null;
        } catch (Throwable th) {
            e("getBiddingData exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            return null;
        }
    }

    public final void a(String str) {
        try {
            this.n = new Date().getTime();
            d("loadInterstitial");
            this.f10873e = false;
            if (h()) {
                s();
                a(a.LOAD_IN_PROGRESS);
                this.f10871c.loadInterstitialForBidding(this.f10874f, this, str);
            } else if (this.f10836a != a.NO_INIT) {
                s();
                a(a.LOAD_IN_PROGRESS);
                this.f10871c.loadInterstitial(this.f10874f, this);
            } else {
                s();
                a(a.INIT_IN_PROGRESS);
                q();
                this.f10871c.initInterstitial(this.l, this.m, this.f10874f, this);
            }
        } catch (Throwable th) {
            e("loadInterstitial exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            onInterstitialAdLoadFailed(new IronSourceError(IronSourceConstants.errorCode_loadException, th.getLocalizedMessage()));
        }
    }

    public final void b() {
        d("initForBidding()");
        a(a.INIT_IN_PROGRESS);
        q();
        try {
            this.f10871c.initInterstitialForBidding(this.l, this.m, this.f10874f, this);
        } catch (Throwable th) {
            e(k() + " initForBidding exception : " + th.getLocalizedMessage());
            th.printStackTrace();
            onInterstitialInitFailed(new IronSourceError(IronSourceError.ERROR_IS_INIT_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public final void c() {
        try {
            this.f10871c.showInterstitial(this.f10874f, this);
        } catch (Throwable th) {
            e(k() + "showInterstitial exception : " + th.getLocalizedMessage());
            th.printStackTrace();
            onInterstitialAdShowFailed(new IronSourceError(IronSourceError.ERROR_IS_SHOW_EXCEPTION, th.getLocalizedMessage()));
        }
    }

    public final void f() {
        this.f10871c.setMediationState(AbstractC1345b.a.CAPPED_PER_SESSION, "interstitial");
    }

    public final boolean g() {
        try {
            return this.f10871c.isInterstitialReady(this.f10874f);
        } catch (Throwable th) {
            e("isReadyToShow exception: " + th.getLocalizedMessage());
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClicked() {
        c("onInterstitialAdClicked");
        this.f10837b.d(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClosed() {
        c("onInterstitialAdClosed");
        this.f10837b.b(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        c("onInterstitialAdLoadFailed error=" + ironSourceError.getErrorMessage() + " state=" + this.f10836a.name());
        r();
        if (this.f10836a != a.LOAD_IN_PROGRESS) {
            return;
        }
        a(a.LOAD_FAILED);
        this.f10837b.a(ironSourceError, this, new Date().getTime() - this.n);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdOpened() {
        c("onInterstitialAdOpened");
        this.f10837b.a(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdReady() {
        c("onInterstitialAdReady state=" + this.f10836a.name());
        r();
        if (this.f10836a != a.LOAD_IN_PROGRESS) {
            return;
        }
        a(a.LOADED);
        this.f10837b.a(this, new Date().getTime() - this.n);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        c("onInterstitialAdShowFailed error=" + ironSourceError.getErrorMessage());
        this.f10837b.a(ironSourceError, this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowSucceeded() {
        c("onInterstitialAdShowSucceeded");
        this.f10837b.c(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdVisible() {
        c("onInterstitialAdVisible");
        this.f10837b.e(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitFailed(IronSourceError ironSourceError) {
        c("onInterstitialInitFailed error" + ironSourceError.getErrorMessage() + " state=" + this.f10836a.name());
        if (this.f10836a != a.INIT_IN_PROGRESS) {
            return;
        }
        r();
        a(a.NO_INIT);
        this.f10837b.b(ironSourceError, this);
        if (h()) {
            return;
        }
        this.f10837b.a(ironSourceError, this, new Date().getTime() - this.n);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitSuccess() {
        c("onInterstitialInitSuccess state=" + this.f10836a.name());
        if (this.f10836a != a.INIT_IN_PROGRESS) {
            return;
        }
        r();
        if (h()) {
            a(a.INIT_SUCCESS);
        } else {
            a(a.LOAD_IN_PROGRESS);
            s();
            try {
                this.f10871c.loadInterstitial(this.f10874f, this);
            } catch (Throwable th) {
                e("onInterstitialInitSuccess exception: " + th.getLocalizedMessage());
                th.printStackTrace();
                onInterstitialAdLoadFailed(new IronSourceError(IronSourceConstants.errorCode_loadException, th.getLocalizedMessage()));
            }
        }
        this.f10837b.f(this);
    }
}
