package com.google.android.gms.internal.ads;

import java.util.UUID;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdpo implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzdpo(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzchu zza = ((zzcqa) this.zza).zza();
        com.google.android.gms.ads.internal.zzt.zzp();
        return new zzbbt(UUID.randomUUID().toString(), zza, "native", new JSONObject(), false, true);
    }
}
