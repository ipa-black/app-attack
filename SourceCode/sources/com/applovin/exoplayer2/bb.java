package com.applovin.exoplayer2;

import android.content.Context;
import android.os.PowerManager;
/* loaded from: classes.dex */
final class bb {

    /* renamed from: a  reason: collision with root package name */
    private final PowerManager f1637a;

    /* renamed from: b  reason: collision with root package name */
    private PowerManager.WakeLock f1638b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1639c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1640d;

    public bb(Context context) {
        this.f1637a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    private void a() {
        PowerManager.WakeLock wakeLock = this.f1638b;
        if (wakeLock == null) {
            return;
        }
        if (this.f1639c && this.f1640d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z) {
        if (z && this.f1638b == null) {
            PowerManager powerManager = this.f1637a;
            if (powerManager == null) {
                com.applovin.exoplayer2.l.q.c("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            }
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
            this.f1638b = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        }
        this.f1639c = z;
        a();
    }

    public void b(boolean z) {
        this.f1640d = z;
        a();
    }
}
