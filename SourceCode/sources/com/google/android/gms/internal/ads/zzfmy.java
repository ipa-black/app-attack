package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfmy implements zzgen {
    final /* synthetic */ zzfmo zza;
    final /* synthetic */ zzfna zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfmy(zzfna zzfnaVar, zzfmo zzfmoVar) {
        this.zzb = zzfnaVar;
        this.zza = zzfmoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzfnc zzfncVar;
        zzfncVar = this.zzb.zza.zzd;
        zzfncVar.zzb(this.zza, th);
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zzb(Object obj) {
        zzfnc zzfncVar;
        zzfncVar = this.zzb.zza.zzd;
        zzfncVar.zzd(this.zza);
    }
}
