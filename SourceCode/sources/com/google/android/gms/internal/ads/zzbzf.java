package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbzf extends zzbny {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzbzf(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbnz
    public final void zze(zzboi zzboiVar) {
        this.zza.onNativeAdLoaded(new zzbyy(zzboiVar));
    }
}
