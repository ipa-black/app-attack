package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfot implements zzgen {
    final /* synthetic */ zzfow zza;
    final /* synthetic */ zzfol zzb;
    final /* synthetic */ boolean zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfot(zzfow zzfowVar, zzfol zzfolVar, boolean z) {
        this.zza = zzfowVar;
        this.zzb = zzfolVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzfol zzfolVar = this.zzb;
        if (zzfolVar.zzj()) {
            zzfow zzfowVar = this.zza;
            zzfolVar.zzg(th);
            zzfolVar.zzf(false);
            zzfowVar.zza(zzfolVar);
            if (this.zzc) {
                this.zza.zzg();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zzb(Object obj) {
        zzfow zzfowVar = this.zza;
        zzfol zzfolVar = this.zzb;
        zzfolVar.zzf(true);
        zzfowVar.zza(zzfolVar);
        if (this.zzc) {
            this.zza.zzg();
        }
    }
}
