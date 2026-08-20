package com.applovin.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
/* loaded from: classes.dex */
final class bc {

    /* renamed from: a  reason: collision with root package name */
    private final WifiManager f1641a;

    /* renamed from: b  reason: collision with root package name */
    private WifiManager.WifiLock f1642b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1643c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1644d;

    public bc(Context context) {
        this.f1641a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void a() {
        WifiManager.WifiLock wifiLock = this.f1642b;
        if (wifiLock == null) {
            return;
        }
        if (this.f1643c && this.f1644d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z) {
        if (z && this.f1642b == null) {
            WifiManager wifiManager = this.f1641a;
            if (wifiManager == null) {
                com.applovin.exoplayer2.l.q.c("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            }
            WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
            this.f1642b = createWifiLock;
            createWifiLock.setReferenceCounted(false);
        }
        this.f1643c = z;
        a();
    }

    public void b(boolean z) {
        this.f1644d = z;
        a();
    }
}
