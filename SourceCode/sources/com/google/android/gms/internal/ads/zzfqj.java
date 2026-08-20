package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;
import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfqj implements Application.ActivityLifecycleCallbacks {
    private static final zzfqj zza = new zzfqj();
    private boolean zzb;
    private boolean zzc;
    private zzfqo zzd;

    private zzfqj() {
    }

    public static zzfqj zza() {
        return zza;
    }

    private final void zze() {
        boolean z = this.zzc;
        for (zzfpx zzfpxVar : zzfqi.zza().zzc()) {
            zzfqu zzg = zzfpxVar.zzg();
            if (zzg.zzk()) {
                zzfqn.zza().zzb(zzg.zza(), "setState", true != z ? "foregrounded" : "backgrounded");
            }
        }
    }

    private final void zzf(boolean z) {
        if (this.zzc != z) {
            this.zzc = z;
            if (this.zzb) {
                zze();
                if (this.zzd != null) {
                    if (!z) {
                        zzfrk.zzd().zzi();
                    } else {
                        zzfrk.zzd().zzh();
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zzf(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        View zzf;
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        int i = runningAppProcessInfo.importance;
        boolean z = true;
        boolean z2 = true;
        for (zzfpx zzfpxVar : zzfqi.zza().zzb()) {
            if (zzfpxVar.zzj() && (zzf = zzfpxVar.zzf()) != null && zzf.hasWindowFocus()) {
                z2 = false;
            }
        }
        zzf((i == 100 || !z2) ? false : false);
    }

    public final void zzb() {
        this.zzb = true;
        this.zzc = false;
        zze();
    }

    public final void zzc() {
        this.zzb = false;
        this.zzc = false;
        this.zzd = null;
    }

    public final void zzd(zzfqo zzfqoVar) {
        this.zzd = zzfqoVar;
    }
}
