package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdej implements zzhep {
    private final zzdei zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;

    public zzdej(zzdei zzdeiVar, zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4) {
        this.zza = zzdeiVar;
        this.zzb = zzhfcVar;
        this.zzc = zzhfcVar2;
        this.zzd = zzhfcVar3;
        this.zze = zzhfcVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        Context context = (Context) this.zzb.zzb();
        zzchu zza = ((zzcqa) this.zzc).zza();
        zzfil zza2 = ((zzdbd) this.zzd).zza();
        zzcel zzcelVar = new zzcel();
        if (zza2.zzB != null) {
            return new zzcek(context, zza, zza2.zzB, zza2.zzt.zzb, zzcelVar, null);
        }
        return null;
    }
}
