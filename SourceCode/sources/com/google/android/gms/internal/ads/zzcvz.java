package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcvz implements zzdeq {
    private final zzfio zza;
    private final zzfix zzb;
    private final zzfpk zzc;
    private final zzfpo zzd;

    public zzcvz(zzfix zzfixVar, zzfpo zzfpoVar, zzfpk zzfpkVar) {
        this.zzb = zzfixVar;
        this.zzd = zzfpoVar;
        this.zzc = zzfpkVar;
        this.zza = zzfixVar.zzb.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdeq
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zzd.zzd(this.zzc.zzc(this.zzb, null, this.zza.zza));
    }
}
