package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdot implements zzhep {
    private final zzhfc zza;

    public zzdot(zzhfc zzhfcVar) {
        this.zza = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set emptySet;
        if (((zzdoq) this.zza).zza().zze() != null) {
            emptySet = Collections.singleton("banner");
        } else {
            emptySet = Collections.emptySet();
        }
        zzhex.zzb(emptySet);
        return emptySet;
    }
}
