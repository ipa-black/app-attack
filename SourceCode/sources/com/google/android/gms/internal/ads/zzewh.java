package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzewh implements zzezm {
    private final zzgfc zza;

    public zzewh(zzgfc zzgfcVar) {
        this.zza = zzgfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 20;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzewg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzewi(com.google.android.gms.ads.internal.zzt.zzs().zzb(), com.google.android.gms.ads.internal.zzt.zzs().zzm());
            }
        });
    }
}
