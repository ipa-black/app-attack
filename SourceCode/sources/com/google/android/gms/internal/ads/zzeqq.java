package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzeqq implements com.google.android.gms.ads.internal.zzf {
    final /* synthetic */ zzdmw zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeqq(zzeqr zzeqrVar, zzdmw zzdmwVar) {
        this.zza = zzdmwVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zza(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzb() {
        this.zza.zzb().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzc() {
        this.zza.zzc().zza();
        this.zza.zzf().zza();
    }
}
