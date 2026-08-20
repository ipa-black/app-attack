package com.appnext.base.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appnext.base.a.a;
import com.appnext.base.a.b.c;
import com.appnext.base.b.d;
import com.appnext.base.b.e;
import com.appnext.base.b.g;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* loaded from: classes.dex */
public class AppnextBootReciever extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        try {
            e.init(context);
            if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                g.aN().b(new Runnable() { // from class: com.appnext.base.receivers.AppnextBootReciever.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            c cVar = new c("on", "", "", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, d.fm, "scdle", "scdle" + System.currentTimeMillis(), null);
                            a.X().ab().a(cVar);
                            com.appnext.base.services.b.a.d(context).a(cVar, true);
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }
}
