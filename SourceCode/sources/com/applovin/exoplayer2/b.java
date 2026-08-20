package com.applovin.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1438a;

    /* renamed from: b  reason: collision with root package name */
    private final a f1439b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1440c;

    /* loaded from: classes.dex */
    private final class a extends BroadcastReceiver implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC0023b f1444b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f1445c;

        public a(Handler handler, InterfaceC0023b interfaceC0023b) {
            this.f1445c = handler;
            this.f1444b = interfaceC0023b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f1445c.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f1440c) {
                this.f1444b.a();
            }
        }
    }

    /* renamed from: com.applovin.exoplayer2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0023b {
        void a();
    }

    public b(Context context, Handler handler, InterfaceC0023b interfaceC0023b) {
        this.f1438a = context.getApplicationContext();
        this.f1439b = new a(handler, interfaceC0023b);
    }

    public void a(boolean z) {
        boolean z2;
        if (z && !this.f1440c) {
            this.f1438a.registerReceiver(this.f1439b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            z2 = true;
        } else if (z || !this.f1440c) {
            return;
        } else {
            this.f1438a.unregisterReceiver(this.f1439b);
            z2 = false;
        }
        this.f1440c = z2;
    }
}
