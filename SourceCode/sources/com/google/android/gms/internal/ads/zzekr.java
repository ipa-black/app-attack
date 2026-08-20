package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzekr implements zzekq {
    public final zzekq zza;
    private final zzfxt zzb;

    public zzekr(zzekq zzekqVar, zzfxt zzfxtVar) {
        this.zza = zzekqVar;
        this.zzb = zzfxtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(zzfix zzfixVar, zzfil zzfilVar) {
        return zzger.zzm(this.zza.zza(zzfixVar, zzfilVar), this.zzb, zzcib.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        return this.zza.zzb(zzfixVar, zzfilVar);
    }
}
