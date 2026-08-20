package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzddn implements zzden, zzdll, zzdjf, zzdfd, zzbbx {
    private final zzdff zza;
    private final zzfil zzb;
    private final ScheduledExecutorService zzc;
    private final Executor zzd;
    private ScheduledFuture zzf;
    private final zzgfk zze = zzgfk.zzf();
    private final AtomicBoolean zzg = new AtomicBoolean();

    public zzddn(zzdff zzdffVar, zzfil zzfilVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.zza = zzdffVar;
        this.zzb = zzfilVar;
        this.zzc = scheduledExecutorService;
        this.zzd = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb() {
        synchronized (this) {
            if (this.zze.isDone()) {
                return;
            }
            this.zze.zzd(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbw() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzbx() {
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final void zzc(zzbbw zzbbwVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjt)).booleanValue() && this.zzb.zzZ != 2 && zzbbwVar.zzj && this.zzg.compareAndSet(false, true)) {
            com.google.android.gms.ads.internal.util.zze.zza("Full screen 1px impression occurred");
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjf
    public final void zzd() {
    }

    @Override // com.google.android.gms.internal.ads.zzdjf
    public final synchronized void zze() {
        if (this.zze.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzf;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.zze.zzd(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdll
    public final void zzf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbp)).booleanValue()) {
            zzfil zzfilVar = this.zzb;
            if (zzfilVar.zzZ == 2) {
                if (zzfilVar.zzr == 0) {
                    this.zza.zza();
                    return;
                }
                zzger.zzr(this.zze, new zzddm(this), this.zzd);
                this.zzf = this.zzc.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzddl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzddn.this.zzb();
                    }
                }, this.zzb.zzr, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdll
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfd
    public final synchronized void zzk(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zze.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzf;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.zze.zze(new Exception());
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzo() {
        int i = this.zzb.zzZ;
        if (i == 0 || i == 1) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzjt)).booleanValue()) {
                return;
            }
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzden
    public final void zzp(zzccr zzccrVar, String str, String str2) {
    }
}
