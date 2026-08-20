package com.ironsource.environment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
/* loaded from: classes3.dex */
public class NetworkStateReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private ConnectivityManager f10532a;

    /* renamed from: b  reason: collision with root package name */
    private j f10533b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10534c = false;

    public NetworkStateReceiver(Context context, j jVar) {
        this.f10533b = jVar;
        this.f10532a = (ConnectivityManager) context.getSystemService("connectivity");
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0021 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a() {
        /*
            r4 = this;
            boolean r0 = r4.f10534c
            android.net.ConnectivityManager r1 = r4.f10532a
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1a
            android.net.NetworkInfo r1 = r1.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L1a
            if (r1 == 0) goto L16
            boolean r1 = r1.isConnectedOrConnecting()     // Catch: java.lang.Exception -> L1a
            if (r1 == 0) goto L16
            r1 = r2
            goto L17
        L16:
            r1 = r3
        L17:
            r4.f10534c = r1     // Catch: java.lang.Exception -> L1a
            goto L1c
        L1a:
            r4.f10534c = r3
        L1c:
            boolean r1 = r4.f10534c
            if (r0 == r1) goto L21
            return r2
        L21:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.environment.NetworkStateReceiver.a():boolean");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getExtras() == null || !a()) {
            return;
        }
        com.ironsource.environment.e.c cVar = com.ironsource.environment.e.c.f10584a;
        com.ironsource.environment.e.c.b(new Runnable() { // from class: com.ironsource.environment.NetworkStateReceiver.1
            @Override // java.lang.Runnable
            public final void run() {
                if (NetworkStateReceiver.this.f10533b != null) {
                    NetworkStateReceiver.this.f10533b.a(NetworkStateReceiver.this.f10534c);
                }
            }
        }, 0L);
    }
}
