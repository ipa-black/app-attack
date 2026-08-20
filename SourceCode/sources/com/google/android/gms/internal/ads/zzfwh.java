package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfwh {
    private static final zzfwu zzb = new zzfwu("OverlayDisplayService");
    private static final Intent zzc = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");
    final zzfxf zza;
    private final String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwh(Context context) {
        if (zzfxi.zza(context)) {
            this.zza = new zzfxf(context.getApplicationContext(), zzb, "OverlayDisplayService", zzc, zzfwc.zza, null, null);
        } else {
            this.zza = null;
        }
        this.zzd = context.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc() {
        if (this.zza == null) {
            return;
        }
        zzb.zzd("unbind LMD display overlay service", new Object[0]);
        this.zza.zzr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(zzfvy zzfvyVar, zzfwm zzfwmVar) {
        if (this.zza == null) {
            zzb.zzb("error: %s", "Play Store not found.");
            return;
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zza.zzp(new zzfwe(this, taskCompletionSource, zzfvyVar, zzfwmVar, taskCompletionSource), taskCompletionSource);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zze(zzfwj zzfwjVar, zzfwm zzfwmVar) {
        if (this.zza == null) {
            zzb.zzb("error: %s", "Play Store not found.");
        } else if (zzfwjVar.zzg() != null) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.zza.zzp(new zzfwd(this, taskCompletionSource, zzfwjVar, zzfwmVar, taskCompletionSource), taskCompletionSource);
        } else {
            zzb.zzb("Failed to convert OverlayDisplayShowRequest when to create a new session: appId cannot be null.", new Object[0]);
            zzfwk zzc2 = zzfwl.zzc();
            zzc2.zzb(8160);
            zzfwmVar.zza(zzc2.zzc());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzf(zzfwo zzfwoVar, zzfwm zzfwmVar, int i) {
        if (this.zza == null) {
            zzb.zzb("error: %s", "Play Store not found.");
            return;
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zza.zzp(new zzfwf(this, taskCompletionSource, zzfwoVar, i, zzfwmVar, taskCompletionSource), taskCompletionSource);
    }
}
