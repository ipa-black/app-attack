package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbot extends zzbny {
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener zza;

    public zzbot(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.zza = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbnz
    public final void zze(zzboi zzboiVar) {
        this.zza.onUnifiedNativeAdLoaded(new zzboj(zzboiVar));
    }
}
