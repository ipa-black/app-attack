package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzawh implements zzawf {
    private final int zza;
    private final int zzb;
    private final zzbar zzc;

    public zzawh(zzawc zzawcVar) {
        zzbar zzbarVar = zzawcVar.zza;
        this.zzc = zzbarVar;
        zzbarVar.zzv(12);
        this.zza = zzbarVar.zzi();
        this.zzb = zzbarVar.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final int zzb() {
        int i = this.zza;
        return i == 0 ? this.zzc.zzi() : i;
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final boolean zzc() {
        return this.zza != 0;
    }
}
