package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbtt implements Runnable {
    final /* synthetic */ zzbue zza;
    final /* synthetic */ zzbta zzb;
    final /* synthetic */ zzbuf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbtt(zzbuf zzbufVar, zzbue zzbueVar, zzbta zzbtaVar) {
        this.zzc = zzbufVar;
        this.zza = zzbueVar;
        this.zzb = zzbtaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.zzc.zza;
        synchronized (obj) {
            if (this.zza.zze() != -1 && this.zza.zze() != 1) {
                this.zza.zzg();
                zzgfc zzgfcVar = zzcib.zze;
                final zzbta zzbtaVar = this.zzb;
                zzgfcVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbts
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbta.this.zzc();
                    }
                });
                com.google.android.gms.ads.internal.util.zze.zza("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
