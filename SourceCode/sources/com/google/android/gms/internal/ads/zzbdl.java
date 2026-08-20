package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbdl extends zzbds {
    private final AppOpenAd.AppOpenAdLoadCallback zza;
    private final String zzb;

    public zzbdl(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.zza = appOpenAdLoadCallback;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbdt
    public final void zzb(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbdt
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza != null) {
            this.zza.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdt
    public final void zzd(zzbdq zzbdqVar) {
        if (this.zza != null) {
            this.zza.onAdLoaded(new zzbdm(zzbdqVar, this.zzb));
        }
    }
}
