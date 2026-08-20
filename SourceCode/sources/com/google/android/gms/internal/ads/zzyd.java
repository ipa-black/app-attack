package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzyd {
    private final Handler zza;
    private final zzye zzb;

    public zzyd(Handler handler, zzye zzyeVar) {
        this.zza = zzyeVar == null ? null : handler;
        this.zzb = zzyeVar;
    }

    public final void zza(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxz
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzg(str, j, j2);
                }
            });
        }
    }

    public final void zzb(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyc
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzh(str);
                }
            });
        }
    }

    public final void zzc(final zzgs zzgsVar) {
        zzgsVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxy
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzi(zzgsVar);
                }
            });
        }
    }

    public final void zzd(final int i, final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxt
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzj(i, j);
                }
            });
        }
    }

    public final void zze(final zzgs zzgsVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxx
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzk(zzgsVar);
                }
            });
        }
    }

    public final void zzf(final zzaf zzafVar, final zzgt zzgtVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzya
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzl(zzafVar, zzgtVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzg(String str, long j, long j2) {
        zzye zzyeVar = this.zzb;
        int i = zzen.zza;
        zzyeVar.zzo(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzh(String str) {
        zzye zzyeVar = this.zzb;
        int i = zzen.zza;
        zzyeVar.zzp(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(zzgs zzgsVar) {
        zzgsVar.zza();
        zzye zzyeVar = this.zzb;
        int i = zzen.zza;
        zzyeVar.zzq(zzgsVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzj(int i, long j) {
        zzye zzyeVar = this.zzb;
        int i2 = zzen.zza;
        zzyeVar.zzk(i, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzk(zzgs zzgsVar) {
        zzye zzyeVar = this.zzb;
        int i = zzen.zza;
        zzyeVar.zzr(zzgsVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(zzaf zzafVar, zzgt zzgtVar) {
        int i = zzen.zza;
        this.zzb.zzt(zzafVar, zzgtVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm(Object obj, long j) {
        zzye zzyeVar = this.zzb;
        int i = zzen.zza;
        zzyeVar.zzl(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(long j, int i) {
        zzye zzyeVar = this.zzb;
        int i2 = zzen.zza;
        zzyeVar.zzs(j, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(Exception exc) {
        zzye zzyeVar = this.zzb;
        int i = zzen.zza;
        zzyeVar.zzn(exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzp(zzda zzdaVar) {
        zzye zzyeVar = this.zzb;
        int i = zzen.zza;
        zzyeVar.zzu(zzdaVar);
    }

    public final void zzq(final Object obj) {
        if (this.zza != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxu
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzm(obj, elapsedRealtime);
                }
            });
        }
    }

    public final void zzr(final long j, final int i) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxw
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzn(j, i);
                }
            });
        }
    }

    public final void zzs(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxv
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzo(exc);
                }
            });
        }
    }

    public final void zzt(final zzda zzdaVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyb
                @Override // java.lang.Runnable
                public final void run() {
                    zzyd.this.zzp(zzdaVar);
                }
            });
        }
    }
}
