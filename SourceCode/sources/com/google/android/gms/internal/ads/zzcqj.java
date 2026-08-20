package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcqj implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzcqj(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzccm zzb() {
        Context zza = ((zzcpp) this.zza).zza();
        zzfoy zzfoyVar = (zzfoy) this.zzb.zzb();
        com.google.android.gms.ads.internal.zzt.zzf().zzb(zza, zzchu.zza(), zzfoyVar).zza("google.afma.request.getAdDictionary", zzbuq.zza, zzbuq.zza);
        zzbut zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(zza, zzchu.zza(), zzfoyVar);
        zzbun zzbunVar = zzbuq.zza;
        return new zzccl(zza, zzb.zza("google.afma.sdkConstants.getSdkConstants", zzbunVar, zzbunVar));
    }
}
