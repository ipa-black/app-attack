package com.yandex.metrica.networktasks.api;
/* loaded from: classes5.dex */
public final class NetworkServiceLocator implements NetworkServiceLifecycleObserver {

    /* renamed from: b  reason: collision with root package name */
    private static volatile NetworkServiceLocator f16242b;

    /* renamed from: a  reason: collision with root package name */
    private NetworkCore f16243a;

    private NetworkServiceLocator() {
    }

    public static void destroy() {
        f16242b = null;
    }

    public static NetworkServiceLocator getInstance() {
        return f16242b;
    }

    public static void init() {
        if (f16242b == null) {
            synchronized (NetworkServiceLocator.class) {
                if (f16242b == null) {
                    f16242b = new NetworkServiceLocator();
                }
            }
        }
    }

    public NetworkCore getNetworkCore() {
        return this.f16243a;
    }

    public void initAsync() {
        if (this.f16243a == null) {
            synchronized (this) {
                if (this.f16243a == null) {
                    NetworkCore networkCore = new NetworkCore();
                    this.f16243a = networkCore;
                    networkCore.setName("YMM-NC");
                    this.f16243a.start();
                }
            }
        }
    }

    @Override // com.yandex.metrica.networktasks.api.NetworkServiceLifecycleObserver
    public void onCreate() {
    }

    @Override // com.yandex.metrica.networktasks.api.NetworkServiceLifecycleObserver
    public void onDestroy() {
        NetworkCore networkCore = this.f16243a;
        if (networkCore != null) {
            networkCore.onDestroy();
        }
    }
}
