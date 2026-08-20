package com.ironsource.mediationsdk.adunit.d.a;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.ironsource.mediationsdk.adunit.c.a.a;
import com.ironsource.mediationsdk.adunit.d.a.c;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.Placement;
/* loaded from: classes3.dex */
public abstract class a<Listener extends com.ironsource.mediationsdk.adunit.c.a.a> extends c<Listener> implements AdapterAdInteractionListener {

    /* renamed from: g  reason: collision with root package name */
    private BaseAdInteractionAdapter<?, AdapterAdInteractionListener> f11041g;

    /* JADX WARN: Multi-variable type inference failed */
    public a(com.ironsource.mediationsdk.adunit.d.a aVar, BaseAdInteractionAdapter<?, ?> baseAdInteractionAdapter, com.ironsource.mediationsdk.model.a aVar2, Listener listener) {
        super(aVar, baseAdInteractionAdapter, aVar2, listener);
        this.f11041g = baseAdInteractionAdapter;
    }

    public final void a(Placement placement) {
        int i;
        IronLog.INTERNAL.verbose(c("placementName = " + placement.getPlacementName()));
        try {
            this.f11047e = placement;
            this.f11045c.f10983d.a(q());
            this.f11041g.showAd(this.f11048f, this);
        } catch (Throwable th) {
            String str = "showAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(c(str));
            if (this.f11045c != null) {
                this.f11045c.f10984e.l(str);
            }
            IronSource.AD_UNIT ad_unit = this.f11043a.f11033a;
            if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
                i = IronSourceError.ERROR_IS_SHOW_EXCEPTION;
            } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
                i = IronSourceError.ERROR_RV_SHOW_EXCEPTION;
            } else {
                IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
                i = 510;
            }
            onAdShowFailed(i, str);
        }
    }

    public final void a(boolean z) {
        if (this.f11045c != null) {
            this.f11045c.f10983d.a(z);
        }
    }

    public final boolean a() {
        if (this.f11048f != null) {
            try {
                return h() ? this.f11046d == c.a.LOADED && this.f11041g.isAdAvailable(this.f11048f) : this.f11041g.isAdAvailable(this.f11048f);
            } catch (Throwable th) {
                String str = "isReadyToShow - exception = " + th.getLocalizedMessage();
                IronLog.INTERNAL.error(c(str));
                if (this.f11045c != null) {
                    this.f11045c.f10984e.l(str);
                }
            }
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        String c2;
        String str = "";
        IronLog.INTERNAL.verbose(c(""));
        a(c.a.NONE);
        if (this.f11045c != null) {
            if (this.f11043a.f11033a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                str = "otherInstanceAvailable = " + (((com.ironsource.mediationsdk.adunit.c.a.a) this.f11044b).c().length() > 0 ? "true|" + c2 : "false");
            }
            this.f11045c.f10983d.a(q(), str);
        }
        ((com.ironsource.mediationsdk.adunit.c.a.a) this.f11044b).c(this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdEnded() {
        IronLog.INTERNAL.verbose(c(""));
        if (this.f11045c != null) {
            this.f11045c.f10983d.f(q());
        }
        ((com.ironsource.mediationsdk.adunit.c.a.a) this.f11044b).e(this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdOpened() {
        IronLog.INTERNAL.verbose(c(""));
        a(c.a.SHOWING);
        if (this.f11045c != null) {
            this.f11045c.f10983d.c(q());
        }
        ((com.ironsource.mediationsdk.adunit.c.a.a) this.f11044b).b((a<?>) this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowFailed(int i, String str) {
        IronLog.INTERNAL.verbose(c("error = " + i + ", " + str));
        if (this.f11045c != null) {
            this.f11045c.f10983d.a(q(), i, str, "");
        }
        ((com.ironsource.mediationsdk.adunit.c.a.a) this.f11044b).a(new IronSourceError(i, str), (a<?>) this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowSuccess() {
        IronLog.INTERNAL.verbose(c(""));
        if (this.f11045c != null) {
            this.f11045c.f10983d.b(q());
        }
        ((com.ironsource.mediationsdk.adunit.c.a.a) this.f11044b).a((a<?>) this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdStarted() {
        IronLog.INTERNAL.verbose(c(""));
        if (this.f11045c != null) {
            this.f11045c.f10983d.e(q());
        }
        ((com.ironsource.mediationsdk.adunit.c.a.a) this.f11044b).d(this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdVisible() {
        IronLog.INTERNAL.verbose(c(""));
        if (this.f11045c != null) {
            this.f11045c.f10983d.g(q());
        }
    }
}
