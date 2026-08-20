package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdba implements zzgen {
    final /* synthetic */ zzgen zza;
    final /* synthetic */ zzdbb zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdba(zzdbb zzdbbVar, zzgen zzgenVar) {
        this.zzb = zzdbbVar;
        this.zza = zzgenVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzday
            @Override // java.lang.Runnable
            public final void run() {
                zzdbb.this.zzd();
            }
        });
        this.zza.zza(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzday
            @Override // java.lang.Runnable
            public final void run() {
                zzdbb.this.zzd();
            }
        });
        this.zza.zzb((zzdan) obj);
    }
}
