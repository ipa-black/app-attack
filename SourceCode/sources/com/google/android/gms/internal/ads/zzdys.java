package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdys implements zzdhi, zzdgb, zzdeq {
    private final zzdzc zza;
    private final zzdzm zzb;

    public zzdys(zzdzc zzdzcVar, zzdzm zzdzmVar) {
        this.zza = zzdzcVar;
        this.zzb = zzdzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zza.zza().put("action", "ftl");
        this.zza.zza().put("ftl", String.valueOf(zzeVar.zza));
        this.zza.zza().put("ed", zzeVar.zzc);
        this.zzb.zze(this.zza.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
        this.zza.zzb(zzfixVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
        this.zza.zzc(zzccbVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzn() {
        this.zza.zza().put("action", "loaded");
        this.zzb.zze(this.zza.zza());
    }
}
