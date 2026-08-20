package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzecv extends AdListener {
    final /* synthetic */ String zza;
    final /* synthetic */ zzecy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzecv(zzecy zzecyVar, String str) {
        this.zzb = zzecyVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        String zzk;
        zzecy zzecyVar = this.zzb;
        zzk = zzecy.zzk(loadAdError);
        zzecyVar.zzl(zzk, this.zza);
    }
}
