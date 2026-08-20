package com.criteo.publisher;

import android.app.Application;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.j0.a;
import com.criteo.publisher.model.AdUnit;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class Criteo {
    private static Criteo criteo;

    public abstract l createBannerController(CriteoBannerView criteoBannerView);

    public abstract void enrichAdObjectWithBid(Object obj, Bid bid);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void getBidForAdUnit(AdUnit adUnit, ContextData contextData, d dVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract com.criteo.publisher.model.t getConfig();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract com.criteo.publisher.model.u getDeviceInfo();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract a getInterstitialActivityHelper();

    public abstract void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener);

    public abstract void setMopubConsent(String str);

    public abstract void setUsPrivacyOptOut(boolean z);

    public abstract void setUserData(UserData userData);

    /* loaded from: classes2.dex */
    public static class Builder {
        private final Application application;
        private final String criteoPublisherId;
        private String mopubConsent;
        private Boolean usPrivacyOptOut;
        private List<AdUnit> adUnits = new ArrayList();
        private boolean isDebugLogsEnabled = false;

        public Builder(Application application, String str) {
            this.application = application;
            this.criteoPublisherId = str;
        }

        public Builder adUnits(List<AdUnit> list) {
            if (list == null) {
                this.adUnits = new ArrayList();
            } else {
                this.adUnits = list;
            }
            return this;
        }

        public Builder usPrivacyOptOut(boolean z) {
            this.usPrivacyOptOut = Boolean.valueOf(z);
            return this;
        }

        public Builder mopubConsent(String str) {
            this.mopubConsent = str;
            return this;
        }

        public Builder debugLogsEnabled(boolean z) {
            this.isDebugLogsEnabled = z;
            return this;
        }

        public Criteo init() throws CriteoInitException {
            return Criteo.init(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Criteo init(Builder builder) throws CriteoInitException {
        Criteo criteo2;
        com.criteo.publisher.logging.g b2 = com.criteo.publisher.logging.h.b(Criteo.class);
        synchronized (Criteo.class) {
            if (criteo == null) {
                s c2 = s.c();
                c2.a(builder.application);
                c2.a(builder.criteoPublisherId);
                if (builder.isDebugLogsEnabled) {
                    c2.t0().b(4);
                }
                if (c2.A0().d()) {
                    criteo = new m(builder.application, builder.adUnits, builder.usPrivacyOptOut, builder.mopubConsent, c2);
                    b2.a(y.a(builder.criteoPublisherId, builder.adUnits, getVersion()));
                } else {
                    criteo = new t();
                    b2.a(y.a());
                }
            } else {
                b2.a(y.b());
            }
            criteo2 = criteo;
        }
        return criteo2;
    }

    public static Criteo getInstance() {
        Criteo criteo2 = criteo;
        if (criteo2 != null) {
            return criteo2;
        }
        throw new q("You must initialize the SDK before calling Criteo.getInstance()");
    }

    static void setInstance(Criteo criteo2) {
        criteo = criteo2;
    }

    public void loadBid(AdUnit adUnit, BidResponseListener bidResponseListener) {
        loadBid(adUnit, new ContextData(), bidResponseListener);
    }

    public static String getVersion() {
        try {
            return s.c().m0().q();
        } catch (Throwable th) {
            com.criteo.publisher.logging.h.b(Criteo.class).a(v.b(th));
            return "";
        }
    }
}
