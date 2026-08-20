package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzctk implements zzdvx {
    private final zzcre zza;
    private zzfgg zzb;
    private zzffh zzc;
    private zzdka zzd;
    private zzddz zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzctk(zzcre zzcreVar, zzctj zzctjVar) {
        this.zza = zzcreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzddv
    public final /* synthetic */ zzddv zza(zzffh zzffhVar) {
        this.zzc = zzffhVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddv
    public final /* synthetic */ zzddv zzb(zzfgg zzfggVar) {
        this.zzb = zzfggVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdvx
    public final /* synthetic */ zzdvx zzc(zzdka zzdkaVar) {
        this.zzd = zzdkaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdvx
    public final /* synthetic */ zzdvx zzd(zzddz zzddzVar) {
        this.zze = zzddzVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddv
    /* renamed from: zze */
    public final zzdvy zzh() {
        zzhex.zzc(this.zzd, zzdka.class);
        zzhex.zzc(this.zze, zzddz.class);
        return new zzctm(this.zza, new zzdbw(), new zzfkk(), new zzddh(), new zzdzu(), this.zzd, this.zze, null, this.zzb, this.zzc, null);
    }
}
