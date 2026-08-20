package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzexc implements zzezl {
    public final zzfik zza;

    public zzexc(zzfik zzfikVar) {
        this.zza = zzfikVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ void zzf(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzfik zzfikVar = this.zza;
        if (zzfikVar != null) {
            bundle.putBoolean("render_in_browser", zzfikVar.zzd());
            bundle.putBoolean("disable_ml", this.zza.zzc());
        }
    }
}
