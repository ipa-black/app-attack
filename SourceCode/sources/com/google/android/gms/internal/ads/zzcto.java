package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcto implements com.google.android.gms.ads.nonagon.signalgeneration.zzg {
    private final zzcre zza;
    private zzddz zzb;
    private com.google.android.gms.ads.nonagon.signalgeneration.zzag zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcto(zzcre zzcreVar, zzctn zzctnVar) {
        this.zza = zzcreVar;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzg
    public final /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzg zza(zzddz zzddzVar) {
        this.zzb = zzddzVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzg
    public final /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzg zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzag zzagVar) {
        this.zzc = zzagVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzg
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzh zzc() {
        zzhex.zzc(this.zzb, zzddz.class);
        zzhex.zzc(this.zzc, com.google.android.gms.ads.nonagon.signalgeneration.zzag.class);
        return new zzctq(this.zza, this.zzc, new zzdbw(), new zzdzu(), this.zzb, null, null, null);
    }
}
