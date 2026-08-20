package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeve implements zzezl {
    public final double zza;
    public final boolean zzb;

    public zzeve(double d2, boolean z) {
        this.zza = d2;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzezl
    public final /* bridge */ /* synthetic */ void zzf(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle zza = zzfjr.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzfjr.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzb);
        zza2.putDouble("battery_level", this.zza);
    }
}
