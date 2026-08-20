package com.google.android.gms.internal.ads;

import android.os.Handler;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zznp {
    private final Handler zza;
    private final zznq zzb;

    public zznp(Handler handler, zznq zznqVar) {
        this.zza = zznqVar == null ? null : handler;
        this.zzb = zznqVar;
    }

    public final void zza(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznf
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzh(exc);
                }
            });
        }
    }

    public final void zzb(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznl
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzi(exc);
                }
            });
        }
    }

    public final void zzc(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznk
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzj(str, j, j2);
                }
            });
        }
    }

    public final void zzd(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznm
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzk(str);
                }
            });
        }
    }

    public final void zze(final zzgs zzgsVar) {
        zzgsVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzng
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzl(zzgsVar);
                }
            });
        }
    }

    public final void zzf(final zzgs zzgsVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznh
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzm(zzgsVar);
                }
            });
        }
    }

    public final void zzg(final zzaf zzafVar, final zzgt zzgtVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznn
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzn(zzafVar, zzgtVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzh(Exception exc) {
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zzb(exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzi(Exception exc) {
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zzi(exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzj(String str, long j, long j2) {
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zzc(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzk(String str) {
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zzd(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(zzgs zzgsVar) {
        zzgsVar.zza();
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zze(zzgsVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm(zzgs zzgsVar) {
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zzf(zzgsVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(zzaf zzafVar, zzgt zzgtVar) {
        int i = zzen.zza;
        this.zzb.zzg(zzafVar, zzgtVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(long j) {
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zzh(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzp(boolean z) {
        zznq zznqVar = this.zzb;
        int i = zzen.zza;
        zznqVar.zzm(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzq(int i, long j, long j2) {
        zznq zznqVar = this.zzb;
        int i2 = zzen.zza;
        zznqVar.zzj(i, j, j2);
    }

    public final void zzr(final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzni
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzo(j);
                }
            });
        }
    }

    public final void zzs(final boolean z) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zznj
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzp(z);
                }
            });
        }
    }

    public final void zzt(final int i, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzno
                @Override // java.lang.Runnable
                public final void run() {
                    zznp.this.zzq(i, j, j2);
                }
            });
        }
    }
}
