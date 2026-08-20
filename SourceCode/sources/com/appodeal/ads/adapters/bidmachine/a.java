package com.appodeal.ads.adapters.bidmachine;

import android.content.Context;
import com.appodeal.ads.ApdService;
import com.appodeal.ads.ApdServiceInitParams;
import com.appodeal.ads.ApdServiceInitializationListener;
import com.appodeal.ads.AppodealNetworks;
import com.appodeal.ads.adapters.bidmachine.b;
import com.appodeal.ads.networking.LoadingError;
import io.bidmachine.BidMachine;
/* compiled from: ApdBidMachineService.java */
/* loaded from: classes2.dex */
public final class a extends ApdService {

    /* compiled from: ApdBidMachineService.java */
    /* renamed from: com.appodeal.ads.adapters.bidmachine.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0108a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ ApdServiceInitializationListener f6479a;

        public C0108a(ApdServiceInitializationListener apdServiceInitializationListener) {
            this.f6479a = apdServiceInitializationListener;
        }

        @Override // com.appodeal.ads.adapters.bidmachine.b.a
        public final void onInitializationFailed(LoadingError loadingError) {
            this.f6479a.onInitializationFailed(loadingError);
        }

        @Override // com.appodeal.ads.adapters.bidmachine.b.a
        public final void onInitializationFinished() {
            this.f6479a.onInitializationFinished();
        }
    }

    public a() {
        super(AppodealNetworks.BIDMACHINE, "0");
    }

    @Override // com.appodeal.ads.ApdService
    public final void onInitialize(Context context, ApdServiceInitParams apdServiceInitParams, ApdServiceInitializationListener apdServiceInitializationListener) throws Throwable {
        if (apdServiceInitParams.getJsonData() == null) {
            apdServiceInitializationListener.onInitializationFailed(LoadingError.IncorrectAdunit);
            return;
        }
        b.a().a(context, apdServiceInitParams.getJsonData(), apdServiceInitParams, new C0108a(apdServiceInitializationListener));
    }

    @Override // com.appodeal.ads.ApdService
    public final void setLogging(boolean z) {
        BidMachine.setLoggingEnabled(z);
    }
}
