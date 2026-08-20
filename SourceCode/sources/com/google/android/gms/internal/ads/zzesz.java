package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.core.content.ContextCompat;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzesz implements zzezm {
    private final Context zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzesz(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcw)).booleanValue()) {
            return zzger.zzi(new zzeta(ContextCompat.checkSelfPermission(this.zza, "com.google.android.gms.permission.AD_ID") == 0));
        }
        return zzger.zzi(null);
    }
}
