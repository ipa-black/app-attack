package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeui implements zzezm {
    private final zzgfc zza;
    private final zzfjg zzb;
    private final zzchu zzc;
    private final zzchb zzd;

    public zzeui(zzgfc zzgfcVar, zzfjg zzfjgVar, zzchu zzchuVar, zzchb zzchbVar) {
        this.zza = zzgfcVar;
        this.zzb = zzfjgVar;
        this.zzc = zzchuVar;
        this.zzd = zzchbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 9;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeui.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzeuj zzc() throws Exception {
        return new zzeuj(this.zzb.zzj, this.zzc, this.zzd.zzj());
    }
}
