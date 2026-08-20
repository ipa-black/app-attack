package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.i0.a;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.model.a0;
/* loaded from: classes2.dex */
public class CriteoInterstitial {
    private final Criteo criteo;
    private CriteoInterstitialAdListener criteoInterstitialAdListener;
    private n criteoInterstitialEventController;
    final InterstitialAdUnit interstitialAdUnit;
    private final com.criteo.publisher.logging.g logger;

    public CriteoInterstitial() {
        this(null, null);
    }

    public CriteoInterstitial(InterstitialAdUnit interstitialAdUnit) {
        this(interstitialAdUnit, null);
    }

    CriteoInterstitial(InterstitialAdUnit interstitialAdUnit, Criteo criteo) {
        com.criteo.publisher.logging.g b2 = com.criteo.publisher.logging.h.b(getClass());
        this.logger = b2;
        this.interstitialAdUnit = interstitialAdUnit;
        this.criteo = criteo;
        b2.a(com.criteo.publisher.j0.b.a(interstitialAdUnit));
    }

    public void setCriteoInterstitialAdListener(CriteoInterstitialAdListener criteoInterstitialAdListener) {
        this.criteoInterstitialAdListener = criteoInterstitialAdListener;
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(ContextData contextData) {
        if (!s.c().d()) {
            this.logger.a(com.criteo.publisher.j0.b.a());
            return;
        }
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.a(v.b(th));
        }
    }

    private void doLoadAd(ContextData contextData) {
        this.logger.a(com.criteo.publisher.j0.b.c(this));
        getIntegrationRegistry().a(a.STANDALONE);
        getOrCreateController().a(this.interstitialAdUnit, contextData);
    }

    public void loadAd(Bid bid) {
        if (!s.c().d()) {
            this.logger.a(com.criteo.publisher.j0.b.a());
            return;
        }
        try {
            doLoadAd(bid);
        } catch (Throwable th) {
            this.logger.a(v.b(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        if (!s.c().d()) {
            this.logger.a(com.criteo.publisher.j0.b.a());
        } else {
            getOrCreateController().a(str);
        }
    }

    private void doLoadAd(Bid bid) {
        this.logger.a(com.criteo.publisher.j0.b.a(this, bid));
        getIntegrationRegistry().a(a.IN_HOUSE);
        getOrCreateController().a(bid);
    }

    public boolean isAdLoaded() {
        try {
            boolean a2 = getOrCreateController().a();
            this.logger.a(com.criteo.publisher.j0.b.a(this, a2));
            return a2;
        } catch (Throwable th) {
            this.logger.a(v.b(th));
            return false;
        }
    }

    public void show() {
        if (!s.c().d()) {
            this.logger.a(com.criteo.publisher.j0.b.a());
            return;
        }
        try {
            doShow();
        } catch (Throwable th) {
            this.logger.a(v.b(th));
        }
    }

    private void doShow() {
        this.logger.a(com.criteo.publisher.j0.b.d(this));
        getOrCreateController().c();
    }

    n getOrCreateController() {
        if (this.criteoInterstitialEventController == null) {
            Criteo criteo = getCriteo();
            this.criteoInterstitialEventController = new n(new a0(criteo.getConfig(), getPubSdkApi()), criteo.getInterstitialActivityHelper(), criteo, new com.criteo.publisher.m0.d(this, this.criteoInterstitialAdListener, getRunOnUiThreadExecutor()));
        }
        return this.criteoInterstitialEventController;
    }

    private Criteo getCriteo() {
        Criteo criteo = this.criteo;
        return criteo == null ? Criteo.getInstance() : criteo;
    }

    private com.criteo.publisher.i0.c getIntegrationRegistry() {
        return s.c().F0();
    }

    private com.criteo.publisher.k0.g getPubSdkApi() {
        return s.c().S0();
    }

    private com.criteo.publisher.e0.c getRunOnUiThreadExecutor() {
        return s.c().c1();
    }
}
