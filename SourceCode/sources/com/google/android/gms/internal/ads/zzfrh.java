package com.google.android.gms.internal.ads;

import android.os.Handler;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfrh implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        Runnable runnable;
        Handler handler3;
        Runnable runnable2;
        handler = zzfrk.zzc;
        if (handler != null) {
            handler2 = zzfrk.zzc;
            runnable = zzfrk.zzd;
            handler2.post(runnable);
            handler3 = zzfrk.zzc;
            runnable2 = zzfrk.zze;
            handler3.postDelayed(runnable2, 200L);
        }
    }
}
