package com.appsgeyser.sdk.server.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.analytics.Analytics;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class NetworkAvailableReceiver extends BroadcastReceiver {
    private final ArrayList<OnNetworkStateChangedListener> listeners = new ArrayList<>();

    public static synchronized NetworkAvailableReceiver createAndRegisterNetworkReceiver(Context context) {
        NetworkAvailableReceiver networkAvailableReceiver;
        synchronized (NetworkAvailableReceiver.class) {
            networkAvailableReceiver = new NetworkAvailableReceiver();
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(networkAvailableReceiver, intentFilter, 2);
            } else {
                context.registerReceiver(networkAvailableReceiver, intentFilter);
            }
        }
        return networkAvailableReceiver;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        notifyAllListeners(context);
    }

    private void notifyAllListeners(Context context) {
        int i = 0;
        if (NetworkManager.isOnline(context)) {
            int size = this.listeners.size();
            while (i < size) {
                this.listeners.get(i).networkIsUp();
                i++;
            }
            return;
        }
        int size2 = this.listeners.size();
        while (i < size2) {
            this.listeners.get(i).networkIsDown();
            i++;
        }
    }

    public void addListener(OnNetworkStateChangedListener onNetworkStateChangedListener) {
        if (this.listeners.contains(onNetworkStateChangedListener)) {
            return;
        }
        this.listeners.add(onNetworkStateChangedListener);
    }

    public void removeListener(OnNetworkStateChangedListener onNetworkStateChangedListener) {
        if (this.listeners.contains(onNetworkStateChangedListener)) {
            this.listeners.remove(onNetworkStateChangedListener);
        }
    }

    public OnNetworkStateChangedListener createNetworkAvailableListener(final Context context) {
        return new OnNetworkStateChangedListener(getClass().getSimpleName()) { // from class: com.appsgeyser.sdk.server.network.NetworkAvailableReceiver.1
            @Override // com.appsgeyser.sdk.server.network.OnNetworkStateChangedListener
            public void networkIsDown() {
            }

            @Override // com.appsgeyser.sdk.server.network.OnNetworkStateChangedListener
            public void networkIsUp() {
                InternalEntryPoint.getInstance().retryParsers(context);
                if (Analytics.getInstance(context).isUsageAlreadySent()) {
                    return;
                }
                Analytics.getInstance(context).activityStarted(context);
            }
        };
    }
}
