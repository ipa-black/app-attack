package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcsm implements zzeah {
    private final zzcre zza;
    private final zzcss zzb;
    private Long zzc;
    private String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcsm(zzcre zzcreVar, zzcss zzcssVar, zzcsl zzcslVar) {
        this.zza = zzcreVar;
        this.zzb = zzcssVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeah
    public final /* synthetic */ zzeah zza(String str) {
        str.getClass();
        this.zzd = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeah
    public final /* bridge */ /* synthetic */ zzeah zzb(long j) {
        this.zzc = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeah
    public final zzeai zzc() {
        zzhex.zzc(this.zzc, Long.class);
        zzhex.zzc(this.zzd, String.class);
        return new zzcso(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
