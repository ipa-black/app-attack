package com.google.android.gms.internal.ads;

import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdvq implements zzbqs {
    private final zzdfu zza;
    private final zzcdd zzb;
    private final String zzc;
    private final String zzd;

    public zzdvq(zzdfu zzdfuVar, zzfil zzfilVar) {
        this.zza = zzdfuVar;
        this.zzb = zzfilVar.zzm;
        this.zzc = zzfilVar.zzk;
        this.zzd = zzfilVar.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzbqs
    @ParametersAreNonnullByDefault
    public final void zza(zzcdd zzcddVar) {
        String str;
        int i;
        zzcdd zzcddVar2 = this.zzb;
        if (zzcddVar2 != null) {
            zzcddVar = zzcddVar2;
        }
        if (zzcddVar != null) {
            str = zzcddVar.zza;
            i = zzcddVar.zzb;
        } else {
            str = "";
            i = 1;
        }
        this.zza.zzd(new zzcco(str, i), this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbqs
    public final void zzb() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbqs
    public final void zzc() {
        this.zza.zzf();
    }
}
