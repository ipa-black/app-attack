package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzezf implements zzezm {
    private final boolean zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzezf(zzfgg zzfggVar) {
        this.zza = zzfggVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return zzger.zzi(this.zza ? new zzezl() { // from class: com.google.android.gms.internal.ads.zzeze
            @Override // com.google.android.gms.internal.ads.zzezl
            public final void zzf(Object obj) {
                ((Bundle) obj).putBoolean("sdk_prefetch", true);
            }
        } : null);
    }
}
