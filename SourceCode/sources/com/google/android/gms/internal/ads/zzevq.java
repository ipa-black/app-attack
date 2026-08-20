package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzevq implements zzezm {
    private final zzgfc zza;
    private final zzdxh zzb;
    private final String zzc;
    private final zzfjg zzd;

    public zzevq(zzgfc zzgfcVar, zzdxh zzdxhVar, zzfjg zzfjgVar, String str) {
        this.zza = zzgfcVar;
        this.zzb = zzdxhVar;
        this.zzd = zzfjgVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzevq.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzevr zzc() throws Exception {
        return new zzevr(this.zzb.zzb(this.zzd.zzf, this.zzc), this.zzb.zza());
    }
}
