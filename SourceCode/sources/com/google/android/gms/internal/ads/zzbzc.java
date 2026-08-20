package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbzc extends zzbnr {
    final /* synthetic */ zzbzd zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbzc(zzbzd zzbzdVar, zzbzb zzbzbVar) {
        this.zza = zzbzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbns
    public final void zze(zzbnf zzbnfVar) {
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener;
        NativeCustomFormatAd zzf;
        zzbzd zzbzdVar = this.zza;
        onCustomFormatAdLoadedListener = zzbzdVar.zza;
        zzf = zzbzdVar.zzf(zzbnfVar);
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzf);
    }
}
