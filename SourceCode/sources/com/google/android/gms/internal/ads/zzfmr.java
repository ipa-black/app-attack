package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfmr {
    final /* synthetic */ zzfnb zza;
    private final Object zzb;
    private final List zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfmr(zzfnb zzfnbVar, Object obj, List list, zzfmq zzfmqVar) {
        this.zza = zzfnbVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final zzfna zza(Callable callable) {
        zzgfc zzgfcVar;
        zzgeq zzc = zzger.zzc(this.zzc);
        zzgfb zza = zzc.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzfmp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzcib.zzf);
        zzfnb zzfnbVar = this.zza;
        Object obj = this.zzb;
        List list = this.zzc;
        zzgfcVar = zzfnbVar.zzb;
        return new zzfna(zzfnbVar, obj, zza, list, zzc.zza(callable, zzgfcVar));
    }
}
