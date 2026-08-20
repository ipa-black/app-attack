package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzevm implements zzezm {
    private final zzgfc zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzevm(zzgfc zzgfcVar) {
        this.zza = zzgfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 55;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevn(Long.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh().zza()).longValue());
            }
        });
    }
}
