package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzczq implements zzhep {
    private final zzhfc zza;

    public zzczq(zzhfc zzhfcVar) {
        this.zza = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final Boolean zzb() {
        boolean z = true;
        if (((zzdee) this.zza).zza().zza() == null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeX)).booleanValue()) {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }
}
