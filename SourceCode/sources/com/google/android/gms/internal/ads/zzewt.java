package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzewt implements zzezm {
    private final zzgfc zza;
    private final zzece zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzewt(zzgfc zzgfcVar, zzece zzeceVar) {
        this.zza = zzgfcVar;
        this.zzb = zzeceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 23;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzews
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzewt.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzewu zzc() throws Exception {
        return new zzewu(this.zzb.zzc(), this.zzb.zzo(), com.google.android.gms.ads.internal.zzt.zzs().zzl());
    }
}
