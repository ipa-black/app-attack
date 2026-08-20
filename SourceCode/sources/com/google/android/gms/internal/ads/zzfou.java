package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfou implements zzgen {
    final /* synthetic */ zzfow zza;
    final /* synthetic */ zzfol zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfou(zzfow zzfowVar, zzfol zzfolVar) {
        this.zza = zzfowVar;
        this.zzb = zzfolVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzfow zzfowVar = this.zza;
        zzfol zzfolVar = this.zzb;
        zzfolVar.zzg(th);
        zzfolVar.zzf(false);
        zzfowVar.zza(zzfolVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zzb(Object obj) {
    }
}
