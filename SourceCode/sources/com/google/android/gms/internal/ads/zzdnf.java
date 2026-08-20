package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdnf implements zzhep {
    private final zzdmz zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;

    public zzdnf(zzdmz zzdmzVar, zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4) {
        this.zza = zzdmzVar;
        this.zzb = zzhfcVar;
        this.zzc = zzhfcVar2;
        this.zzd = zzhfcVar3;
        this.zze = zzhfcVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.zzb.zzb();
        final zzchu zza = ((zzcqa) this.zzc).zza();
        final zzfil zza2 = ((zzdbd) this.zzd).zza();
        final zzfjg zza3 = ((zzdee) this.zze).zza();
        return new zzdlu(new zzdgb() { // from class: com.google.android.gms.internal.ads.zzdmy
            @Override // com.google.android.gms.internal.ads.zzdgb
            public final void zzn() {
                com.google.android.gms.ads.internal.zzt.zzs().zzn(context, zza.zza, zza2.zzD.toString(), zza3.zzf);
            }
        }, zzcib.zzf);
    }
}
