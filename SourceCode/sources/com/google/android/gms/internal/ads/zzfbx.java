package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfbx implements zzezm {
    final zzgfc zza;
    final List zzb;
    final zzbiu zzc;

    public zzfbx(zzbiu zzbiuVar, zzgfc zzgfcVar, List list, byte[] bArr) {
        this.zzc = zzbiuVar;
        this.zza = zzgfcVar;
        this.zzb = list;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 48;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfbw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzfby(zzfbx.this.zzb);
            }
        });
    }
}
