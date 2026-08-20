package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbyg implements com.google.android.gms.ads.internal.overlay.zzo {
    final /* synthetic */ zzbyi zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbyg(zzbyi zzbyiVar) {
        this.zza = zzbyiVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        MediationInterstitialListener mediationInterstitialListener;
        zzcho.zze("Opening AdMobCustomTabsAdapter overlay.");
        zzbyi zzbyiVar = this.zza;
        mediationInterstitialListener = zzbyiVar.zzb;
        mediationInterstitialListener.onAdOpened(zzbyiVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbE() {
        zzcho.zze("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbM() {
        zzcho.zze("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs() {
        zzcho.zze("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        MediationInterstitialListener mediationInterstitialListener;
        zzcho.zze("AdMobCustomTabsAdapter overlay is closed.");
        zzbyi zzbyiVar = this.zza;
        mediationInterstitialListener = zzbyiVar.zzb;
        mediationInterstitialListener.onAdClosed(zzbyiVar);
    }
}
