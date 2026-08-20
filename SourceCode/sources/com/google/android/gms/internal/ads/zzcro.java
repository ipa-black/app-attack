package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcro implements zzcxm {
    private final zzcre zza;
    private zzfgg zzb;
    private zzffh zzc;
    private zzdka zzd;
    private zzddz zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcro(zzcre zzcreVar, zzcrn zzcrnVar) {
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

    @Override // com.google.android.gms.internal.ads.zzcxm
    public final /* synthetic */ zzcxm zzc(zzdka zzdkaVar) {
        this.zzd = zzdkaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcxm
    public final /* synthetic */ zzcxm zzd(zzddz zzddzVar) {
        this.zze = zzddzVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddv
    public final /* bridge */ /* synthetic */ Object zzh() {
        zzhex.zzc(this.zzd, zzdka.class);
        zzhex.zzc(this.zze, zzddz.class);
        return new zzcrq(this.zza, new zzdbw(), new zzfkk(), new zzddh(), new zzdzu(), this.zzd, this.zze, null, this.zzb, this.zzc, null);
    }
}
