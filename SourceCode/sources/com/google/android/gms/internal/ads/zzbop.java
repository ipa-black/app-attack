package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbop extends zzbnr {
    final /* synthetic */ zzboq zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbop(zzboq zzboqVar, zzboo zzbooVar) {
        this.zza = zzboqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbns
    public final void zze(zzbnf zzbnfVar) {
        NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener;
        NativeCustomTemplateAd zzf;
        zzboq zzboqVar = this.zza;
        onCustomTemplateAdLoadedListener = zzboqVar.zza;
        zzf = zzboqVar.zzf(zzbnfVar);
        onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded(zzf);
    }
}
