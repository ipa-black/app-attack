package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcqo implements zzdor {
    private final zzcre zza;
    private zzfgg zzb;
    private zzffh zzc;
    private zzdka zzd;
    private zzddz zze;
    private zzdon zzf;
    private zzcyi zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcqo(zzcre zzcreVar, zzcqn zzcqnVar) {
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

    @Override // com.google.android.gms.internal.ads.zzdor
    public final /* synthetic */ zzdor zzc(zzcyi zzcyiVar) {
        this.zzg = zzcyiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdor
    public final /* synthetic */ zzdor zzd(zzdon zzdonVar) {
        this.zzf = zzdonVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdor
    public final /* synthetic */ zzdor zze(zzdka zzdkaVar) {
        this.zzd = zzdkaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdor
    public final /* synthetic */ zzdor zzf(zzddz zzddzVar) {
        this.zze = zzddzVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzddv
    /* renamed from: zzg */
    public final zzdos zzh() {
        zzhex.zzc(this.zzd, zzdka.class);
        zzhex.zzc(this.zze, zzddz.class);
        zzhex.zzc(this.zzf, zzdon.class);
        zzhex.zzc(this.zzg, zzcyi.class);
        return new zzcqq(this.zza, this.zzg, this.zzf, new zzdbw(), new zzfkk(), new zzddh(), new zzdzu(), this.zzd, this.zze, null, this.zzb, this.zzc, null);
    }
}
