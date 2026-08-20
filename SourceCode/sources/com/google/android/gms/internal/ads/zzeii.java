package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeii implements zzdhi, zzdgb, zzdeq {
    private final zzfns zza;
    private final zzfnt zzb;
    private final zzchb zzc;

    public zzeii(zzfns zzfnsVar, zzfnt zzfntVar, zzchb zzchbVar) {
        this.zza = zzfnsVar;
        this.zzb = zzfntVar;
        this.zzc = zzchbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfns zzfnsVar = this.zza;
        zzfnsVar.zza("action", "ftl");
        zzfnsVar.zza("ftl", String.valueOf(zzeVar.zza));
        zzfnsVar.zza("ed", zzeVar.zzc);
        this.zzb.zzb(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
        this.zza.zzh(zzfixVar, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
        this.zza.zzi(zzccbVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        zzfnt zzfntVar = this.zzb;
        zzfns zzfnsVar = this.zza;
        zzfnsVar.zza("action", "loaded");
        zzfntVar.zzb(zzfnsVar);
    }
}
