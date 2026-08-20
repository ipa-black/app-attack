package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzexb implements zzezm {
    private final zzgfc zza;
    private final zzfik zzb;

    public zzexb(zzgfc zzgfcVar, zzfik zzfikVar) {
        this.zza = zzgfcVar;
        this.zzb = zzfikVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 25;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzexa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzexb.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzexc zzc() throws Exception {
        return new zzexc(this.zzb);
    }
}
