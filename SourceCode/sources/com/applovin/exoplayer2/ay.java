package com.applovin.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ay {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1426a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f1427b;

    /* renamed from: c  reason: collision with root package name */
    private final a f1428c;

    /* renamed from: d  reason: collision with root package name */
    private final AudioManager f1429d;

    /* renamed from: e  reason: collision with root package name */
    private b f1430e;

    /* renamed from: f  reason: collision with root package name */
    private int f1431f;

    /* renamed from: g  reason: collision with root package name */
    private int f1432g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1433h;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i, boolean z);

        void f(int i);
    }

    /* loaded from: classes.dex */
    private final class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = ay.this.f1427b;
            final ay ayVar = ay.this;
            handler.post(new Runnable() { // from class: com.applovin.exoplayer2.ay$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ay.b(ay.this);
                }
            });
        }
    }

    public ay(Context context, Handler handler, a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f1426a = applicationContext;
        this.f1427b = handler;
        this.f1428c = aVar;
        AudioManager audioManager = (AudioManager) com.applovin.exoplayer2.l.a.a((AudioManager) applicationContext.getSystemService("audio"));
        this.f1429d = audioManager;
        this.f1431f = 3;
        this.f1432g = a(audioManager, 3);
        this.f1433h = b(audioManager, this.f1431f);
        b bVar = new b();
        try {
            applicationContext.registerReceiver(bVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f1430e = bVar;
        } catch (RuntimeException e2) {
            com.applovin.exoplayer2.l.q.b("StreamVolumeManager", "Error registering stream volume receiver", e2);
        }
    }

    private static int a(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e2) {
            com.applovin.exoplayer2.l.q.b("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i, e2);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(ay ayVar) {
        ayVar.d();
    }

    private static boolean b(AudioManager audioManager, int i) {
        return com.applovin.exoplayer2.l.ai.f3781a >= 23 ? audioManager.isStreamMute(i) : a(audioManager, i) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int a2 = a(this.f1429d, this.f1431f);
        boolean b2 = b(this.f1429d, this.f1431f);
        if (this.f1432g == a2 && this.f1433h == b2) {
            return;
        }
        this.f1432g = a2;
        this.f1433h = b2;
        this.f1428c.a(a2, b2);
    }

    public int a() {
        if (com.applovin.exoplayer2.l.ai.f3781a >= 28) {
            return this.f1429d.getStreamMinVolume(this.f1431f);
        }
        return 0;
    }

    public void a(int i) {
        if (this.f1431f == i) {
            return;
        }
        this.f1431f = i;
        d();
        this.f1428c.f(i);
    }

    public int b() {
        return this.f1429d.getStreamMaxVolume(this.f1431f);
    }

    public void c() {
        b bVar = this.f1430e;
        if (bVar != null) {
            try {
                this.f1426a.unregisterReceiver(bVar);
            } catch (RuntimeException e2) {
                com.applovin.exoplayer2.l.q.b("StreamVolumeManager", "Error unregistering stream volume receiver", e2);
            }
            this.f1430e = null;
        }
    }
}
