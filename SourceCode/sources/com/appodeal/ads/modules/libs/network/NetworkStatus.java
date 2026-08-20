package com.appodeal.ads.modules.libs.network;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.libs.network.NetworkStateObserver;
import com.appodeal.ads.modules.libs.network.state.a;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001J\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0001J\u0011\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0096\u0001J\u0011\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0096\u0001R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/appodeal/ads/modules/libs/network/NetworkStatus;", "Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver;", "Landroid/content/Context;", "applicationContext", "", Constants.INIT, "", "isConnected", "Lcom/appodeal/ads/modules/libs/network/NetworkStateObserver$ConnectionListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "subscribe", "unsubscribe", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/appodeal/ads/modules/libs/network/NetworkState;", "getNetworkStateFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "networkStateFlow", "apd_network"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class NetworkStatus implements NetworkStateObserver {
    public static final NetworkStatus INSTANCE = new NetworkStatus();

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f7023a = new a();

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public StateFlow<NetworkState> getNetworkStateFlow() {
        return this.f7023a.f7051c;
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public void init(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        this.f7023a.init(applicationContext);
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public boolean isConnected() {
        return this.f7023a.isConnected();
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public void subscribe(NetworkStateObserver.ConnectionListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f7023a.subscribe(listener);
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public void unsubscribe(NetworkStateObserver.ConnectionListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f7023a.unsubscribe(listener);
    }
}
