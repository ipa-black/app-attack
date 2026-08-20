package com.google.android.gms.internal.ads;

import java.util.UUID;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzedz implements zzhep {
    public static zzedz zza() {
        zzedz zzedzVar;
        zzedzVar = zzedy.zza;
        return zzedzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        com.google.android.gms.ads.internal.zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzhex.zzb(uuid);
        return uuid;
    }
}
