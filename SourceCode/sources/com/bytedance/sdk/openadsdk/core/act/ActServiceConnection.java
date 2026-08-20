package com.bytedance.sdk.openadsdk.core.act;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
/* loaded from: classes2.dex */
public class ActServiceConnection extends CustomTabsServiceConnection {
    private cJ mConnectionCallback;

    public ActServiceConnection(cJ cJVar) {
        this.mConnectionCallback = cJVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        cJ cJVar = this.mConnectionCallback;
        if (cJVar != null) {
            cJVar.Qhi(customTabsClient);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        cJ cJVar = this.mConnectionCallback;
        if (cJVar != null) {
            cJVar.Qhi();
        }
    }
}
