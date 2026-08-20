package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzflo {
    private final zzfks zza;
    private final zzflm zzb;
    private final zzfko zzc;
    private zzflu zze;
    private int zzf = 1;
    private final ArrayDeque zzd = new ArrayDeque();

    public zzflo(zzfks zzfksVar, zzfko zzfkoVar, zzflm zzflmVar) {
        this.zza = zzfksVar;
        this.zzc = zzfkoVar;
        this.zzb = zzflmVar;
        zzfkoVar.zzb(new zzflj(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzh() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfK)).booleanValue() && !com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh().zzh()) {
            this.zzd.clear();
            return;
        }
        if (zzi()) {
            while (!this.zzd.isEmpty()) {
                zzfln zzflnVar = (zzfln) this.zzd.pollFirst();
                if (zzflnVar == null || (zzflnVar.zza() != null && this.zza.zze(zzflnVar.zza()))) {
                    zzflu zzfluVar = new zzflu(this.zza, this.zzb, zzflnVar);
                    this.zze = zzfluVar;
                    zzfluVar.zzd(new zzflk(this, zzflnVar));
                    return;
                }
            }
        }
    }

    private final synchronized boolean zzi() {
        return this.zze == null;
    }

    public final synchronized zzgfb zza(zzfln zzflnVar) {
        this.zzf = 2;
        if (zzi()) {
            return null;
        }
        return this.zze.zza(zzflnVar);
    }

    public final synchronized void zze(zzfln zzflnVar) {
        this.zzd.add(zzflnVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf() {
        synchronized (this) {
            this.zzf = 1;
            zzh();
        }
    }
}
