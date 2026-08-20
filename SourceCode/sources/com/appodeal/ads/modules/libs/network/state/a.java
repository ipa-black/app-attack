package com.appodeal.ads.modules.libs.network.state;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import com.appodeal.ads.modules.libs.network.NetworkState;
import com.appodeal.ads.modules.libs.network.NetworkStateObserver;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
/* loaded from: classes2.dex */
public final class a implements NetworkStateObserver {

    /* renamed from: a  reason: collision with root package name */
    public ConnectivityManager f7049a;

    /* renamed from: b  reason: collision with root package name */
    public final CopyOnWriteArraySet<NetworkStateObserver.ConnectionListener> f7050b = new CopyOnWriteArraySet<>();

    /* renamed from: c  reason: collision with root package name */
    public final MutableStateFlow<NetworkState> f7051c = StateFlowKt.MutableStateFlow(NetworkState.NotInitialized);

    /* renamed from: com.appodeal.ads.modules.libs.network.state.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0129a extends ConnectivityManager.NetworkCallback {
        public C0129a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onAvailable(Network network) {
            Intrinsics.checkNotNullParameter(network, "network");
            super.onAvailable(network);
            a.a(a.this);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            Intrinsics.checkNotNullParameter(network, "network");
            super.onLost(network);
            a.a(a.this);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onUnavailable() {
            super.onUnavailable();
            a.a(a.this);
        }
    }

    public static final void a(a aVar) {
        aVar.f7051c.setValue(aVar.isConnected() ? NetworkState.Enabled : NetworkState.Disabled);
        Iterator<NetworkStateObserver.ConnectionListener> it = aVar.f7050b.iterator();
        while (it.hasNext()) {
            it.next().onConnectionUpdated(aVar.isConnected());
        }
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public final StateFlow getNetworkStateFlow() {
        return this.f7051c;
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public final void init(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        if (this.f7051c.getValue() != NetworkState.NotInitialized) {
            return;
        }
        Object systemService = applicationContext.getSystemService("connectivity");
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        this.f7049a = connectivityManager;
        if (connectivityManager == null) {
            return;
        }
        this.f7051c.setValue(NetworkState.Disabled);
        try {
            connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), new C0129a());
        } catch (Throwable unused) {
            this.f7051c.setValue(NetworkState.ConnectivityManagerError);
        }
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public final boolean isConnected() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = this.f7049a;
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public final void subscribe(NetworkStateObserver.ConnectionListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f7050b.add(listener);
    }

    @Override // com.appodeal.ads.modules.libs.network.NetworkStateObserver
    public final void unsubscribe(NetworkStateObserver.ConnectionListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f7050b.remove(listener);
    }
}
