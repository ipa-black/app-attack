package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeiy {
    private final zzeiu zza;
    private final zzgfc zzb;

    public zzeiy(zzeiu zzeiuVar, zzgfc zzgfcVar) {
        this.zza = zzeiuVar;
        this.zzb = zzgfcVar;
    }

    public final void zza(zzfmm zzfmmVar) {
        zzgfc zzgfcVar = this.zzb;
        final zzeiu zzeiuVar = this.zza;
        zzger.zzr(zzgfcVar.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeiw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeiu.this.getWritableDatabase();
            }
        }), new zzeix(this, zzfmmVar), this.zzb);
    }
}
