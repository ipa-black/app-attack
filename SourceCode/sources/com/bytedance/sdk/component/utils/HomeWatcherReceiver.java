package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
/* loaded from: classes2.dex */
public class HomeWatcherReceiver extends BroadcastReceiver {
    private Qhi Qhi;

    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi();

        void cJ();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            String action = intent.getAction();
            Log.i("HomeReceiver", "onReceive: action: ".concat(String.valueOf(action)));
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                String stringExtra = intent.getStringExtra(IronSourceConstants.EVENTS_ERROR_REASON);
                Log.i("HomeReceiver", "reason: ".concat(String.valueOf(stringExtra)));
                if ("homekey".equals(stringExtra)) {
                    Log.i("HomeReceiver", "homekey");
                    Qhi qhi = this.Qhi;
                    if (qhi != null) {
                        qhi.Qhi();
                    }
                } else if ("recentapps".equals(stringExtra)) {
                    Log.i("HomeReceiver", "long press home key or activity switch");
                    Qhi qhi2 = this.Qhi;
                    if (qhi2 != null) {
                        qhi2.cJ();
                    }
                } else if ("assist".equals(stringExtra)) {
                    Log.i("HomeReceiver", "assist");
                }
            }
        } catch (Throwable unused) {
            ABk.Qhi("HomeReceiver", "ACTION_CLOSE_SYSTEM_DIALOGS throw");
        }
    }

    public void Qhi(Qhi qhi) {
        this.Qhi = qhi;
    }
}
