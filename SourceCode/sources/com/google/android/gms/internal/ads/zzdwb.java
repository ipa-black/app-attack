package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdwb implements zzhep {
    private final zzhfc zza;

    public zzdwb(zzhfc zzhfcVar) {
        this.zza = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbfg zzbfgVar;
        if (((zzdee) this.zza).zza().zzo.zza == 3) {
            zzbfgVar = zzbfg.REWARDED_INTERSTITIAL;
        } else {
            zzbfgVar = zzbfg.REWARD_BASED_VIDEO_AD;
        }
        zzhex.zzb(zzbfgVar);
        return zzbfgVar;
    }
}
