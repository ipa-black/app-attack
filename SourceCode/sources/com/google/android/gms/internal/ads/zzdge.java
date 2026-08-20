package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdge implements zzhep {
    private final zzhfc zza;

    public zzdge(zzhfc zzhfcVar) {
        this.zza = zzhfcVar;
    }

    public static zzdgd zzc(Set set) {
        return new zzdgd(set);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzdgd zzb() {
        return new zzdgd(((zzhfa) this.zza).zzb());
    }
}
