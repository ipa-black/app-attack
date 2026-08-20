package com.criteo.publisher;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.i0.a;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.BannerAdUnit;
/* loaded from: classes2.dex */
public class CriteoBannerView extends WebView {
    private static final int UNSET_DIMENSION_VALUE = -1;
    final BannerAdUnit bannerAdUnit;
    private final Criteo criteo;
    private CriteoBannerAdListener criteoBannerAdListener;
    private l criteoBannerEventController;
    private final com.criteo.publisher.logging.g logger;

    public CriteoBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        com.criteo.publisher.logging.g b2 = com.criteo.publisher.logging.h.b(getClass());
        this.logger = b2;
        this.criteo = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.CriteoBannerView, 0, 0);
        try {
            int integer = obtainStyledAttributes.getInteger(R.styleable.CriteoBannerView_criteoAdUnitWidth, -1);
            int integer2 = obtainStyledAttributes.getInteger(R.styleable.CriteoBannerView_criteoAdUnitHeight, -1);
            String string = obtainStyledAttributes.getString(R.styleable.CriteoBannerView_criteoAdUnitId);
            if (string != null && integer != -1 && integer2 != -1) {
                this.bannerAdUnit = new BannerAdUnit(string, new AdSize(integer, integer2));
            } else if (string == null && integer == -1 && integer2 == -1) {
                this.bannerAdUnit = null;
            } else {
                this.bannerAdUnit = null;
                com.criteo.publisher.n0.o.a((Throwable) new IllegalStateException("CriteoBannerView was not properly inflated. For InHouse integration, no attribute must be set. For Standalone integration, all of: criteoAdUnitId, criteoAdUnitWidth and criteoAdUnitHeight must be set."));
            }
            obtainStyledAttributes.recycle();
            b2.a(b.a(this.bannerAdUnit));
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public CriteoBannerView(Context context) {
        this(context, null, null);
    }

    public CriteoBannerView(Context context, BannerAdUnit bannerAdUnit) {
        this(context, bannerAdUnit, null);
    }

    CriteoBannerView(Context context, BannerAdUnit bannerAdUnit, Criteo criteo) {
        super(context);
        com.criteo.publisher.logging.g b2 = com.criteo.publisher.logging.h.b(getClass());
        this.logger = b2;
        this.bannerAdUnit = bannerAdUnit;
        this.criteo = criteo;
        b2.a(b.a(bannerAdUnit));
    }

    public void setCriteoBannerAdListener(CriteoBannerAdListener criteoBannerAdListener) {
        this.criteoBannerAdListener = criteoBannerAdListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CriteoBannerAdListener getCriteoBannerAdListener() {
        return this.criteoBannerAdListener;
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoadAd(contextData);
        } catch (Throwable th) {
            this.logger.a(v.b(th));
        }
    }

    public void loadAdWithDisplayData(String str) {
        getOrCreateController().a(p.VALID);
        getOrCreateController().a(str);
    }

    private void doLoadAd(ContextData contextData) {
        this.logger.a(b.c(this));
        getIntegrationRegistry().a(a.STANDALONE);
        getOrCreateController().a(this.bannerAdUnit, contextData);
    }

    public void loadAd(Bid bid) {
        try {
            doLoadAd(bid);
        } catch (Throwable th) {
            this.logger.a(v.b(th));
        }
    }

    private void doLoadAd(Bid bid) {
        this.logger.a(b.a(this, bid));
        getIntegrationRegistry().a(a.IN_HOUSE);
        getOrCreateController().a(bid);
    }

    l getOrCreateController() {
        if (this.criteoBannerEventController == null) {
            this.criteoBannerEventController = getCriteo().createBannerController(this);
        }
        return this.criteoBannerEventController;
    }

    private Criteo getCriteo() {
        Criteo criteo = this.criteo;
        return criteo == null ? Criteo.getInstance() : criteo;
    }

    private com.criteo.publisher.i0.c getIntegrationRegistry() {
        return s.c().F0();
    }
}
