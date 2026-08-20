package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeg implements zzde {
    @Override // com.google.android.gms.internal.ads.zzde
    public final long zza() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final zzdn zzb(Looper looper, Handler.Callback callback) {
        return new zzej(new Handler(looper, callback));
    }
}
