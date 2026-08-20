package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaju implements Runnable {
    private final zzake zza;
    private final zzakk zzb;
    private final Runnable zzc;

    public zzaju(zzake zzakeVar, zzakk zzakkVar, Runnable runnable) {
        this.zza = zzakeVar;
        this.zzb = zzakkVar;
        this.zzc = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzw();
        zzakk zzakkVar = this.zzb;
        if (zzakkVar.zzc()) {
            this.zza.zzo(zzakkVar.zza);
        } else {
            this.zza.zzn(zzakkVar.zzc);
        }
        if (this.zzb.zzd) {
            this.zza.zzm("intermediate-response");
        } else {
            this.zza.zzp("done");
        }
        Runnable runnable = this.zzc;
        if (runnable != null) {
            runnable.run();
        }
    }
}
