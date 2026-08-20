package com.appodeal.ads;

import android.app.Activity;
import com.appodeal.ads.c1;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.networking.LoadingError;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* loaded from: classes.dex */
public final class d1 extends AdNetwork<b> {

    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ContextProvider f6621a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ r f6622b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ u f6623c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ NetworkInitializationListener f6624d;

        /* renamed from: com.appodeal.ads.d1$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0124a implements c1.a {
            public C0124a() {
            }
        }

        public a(ContextProvider contextProvider, r rVar, u uVar, NetworkInitializationListener networkInitializationListener) {
            this.f6621a = contextProvider;
            this.f6622b = rVar;
            this.f6623c = uVar;
            this.f6624d = networkInitializationListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Activity value = this.f6621a.getTopActivityFlow().getValue();
            if (value != null) {
                c1.a(value, this.f6622b, new C0124a());
            } else {
                this.f6624d.onInitializationFailed(LoadingError.InternalError);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
    }

    /* loaded from: classes.dex */
    public static class c extends AdNetworkBuilder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public final AdNetwork build() {
            return new d1(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public final String getAdapterVersion() {
            return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public final String getName() {
            return Constants.DEBUG_INTERSTITIAL;
        }
    }

    public d1(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }

    @Override // com.appodeal.ads.AdNetwork
    public final String getVersion() {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
    }

    @Override // com.appodeal.ads.AdNetwork
    public final void initialize(ContextProvider contextProvider, AdUnit adUnit, AdNetworkMediationParams adNetworkMediationParams, NetworkInitializationListener<b> networkInitializationListener) {
        u uVar = null;
        r rVar = adNetworkMediationParams instanceof h ? ((h) adNetworkMediationParams).f6697a : null;
        if (rVar == null) {
            networkInitializationListener.onInitializationFailed(LoadingError.AdTypeNotSupportedInAdapter);
            return;
        }
        if (rVar instanceof r1) {
            uVar = o1.a();
        } else if (rVar instanceof w0) {
            uVar = t0.a();
        } else if (rVar instanceof t2) {
            uVar = Native.a();
        } else if (rVar instanceof k2) {
            uVar = h2.a();
        } else if (rVar instanceof q5) {
            uVar = w2.a();
        } else if (rVar instanceof n4) {
            uVar = o4.a();
        }
        if (uVar == null) {
            networkInitializationListener.onInitializationFailed(LoadingError.AdTypeNotSupportedInAdapter);
            return;
        }
        h5.f6714a.post(new a(contextProvider, rVar, uVar, networkInitializationListener));
        networkInitializationListener.onInitializationFinished(new b());
    }

    @Override // com.appodeal.ads.AdNetwork
    public final void setLogging(boolean z) {
    }
}
