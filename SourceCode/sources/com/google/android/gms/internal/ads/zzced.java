package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzced extends zzcdq {
    private final RewardedInterstitialAdLoadCallback zza;
    private final zzcee zzb;

    public zzced(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, zzcee zzceeVar) {
        this.zza = rewardedInterstitialAdLoadCallback;
        this.zzb = zzceeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzg() {
        zzcee zzceeVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback == null || (zzceeVar = this.zzb) == null) {
            return;
        }
        rewardedInterstitialAdLoadCallback.onAdLoaded(zzceeVar);
    }
}
