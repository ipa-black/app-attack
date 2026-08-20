package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzewl implements zzezm {
    private final zzgfc zza;
    private final zzfjg zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzewl(zzgfc zzgfcVar, zzfjg zzfjgVar) {
        this.zza = zzgfcVar;
        this.zzb = zzfjgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 21;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzewk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzewl.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzewm zzc() throws Exception {
        return new zzewm("requester_type_2".equals(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(this.zzb.zzd)));
    }
}
