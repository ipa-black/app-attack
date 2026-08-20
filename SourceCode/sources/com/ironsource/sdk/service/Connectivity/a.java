package com.ironsource.sdk.service.Connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    final d f12100a;

    /* renamed from: b  reason: collision with root package name */
    private BroadcastReceiver f12101b = new BroadcastReceiver() { // from class: com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String a2 = com.ironsource.d.a.a(context);
            if (a2.equals("none")) {
                a.this.f12100a.a();
                return;
            }
            d dVar = a.this.f12100a;
            new JSONObject();
            dVar.a(a2);
        }
    };

    public a(d dVar) {
        this.f12100a = dVar;
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final void a() {
        this.f12101b = null;
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final void a(Context context) {
        try {
            context.registerReceiver(this.f12101b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final void b(Context context) {
        try {
            context.unregisterReceiver(this.f12101b);
        } catch (IllegalArgumentException unused) {
        } catch (Exception e2) {
            Log.e("ContentValues", "unregisterConnectionReceiver - " + e2);
        }
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final JSONObject c(Context context) {
        return new JSONObject();
    }
}
