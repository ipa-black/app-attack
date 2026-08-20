package com.google.android.gms.internal.ads;

import androidx.collection.ArrayMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdsd implements zzdfh {
    private final zzdqg zza;
    private final zzdql zzb;

    public zzdsd(zzdqg zzdqgVar, zzdql zzdqlVar) {
        this.zza = zzdqgVar;
        this.zzb = zzdqlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzl() {
        zzdqg zzdqgVar = this.zza;
        if (zzdqgVar.zzu() == null) {
            return;
        }
        zzcno zzq = zzdqgVar.zzq();
        zzcno zzr = zzdqgVar.zzr();
        if (zzq == null) {
            zzq = zzr == null ? null : zzr;
        }
        if (!this.zzb.zzd() || zzq == null) {
            return;
        }
        zzq.zzd("onSdkImpression", new ArrayMap());
    }
}
