package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfmt {
    public static final zzfna zza(Callable callable, Object obj, zzfnb zzfnbVar) {
        zzgfc zzgfcVar;
        zzgfcVar = zzfnbVar.zzb;
        return zzb(callable, zzgfcVar, obj, zzfnbVar);
    }

    public static final zzfna zzb(Callable callable, zzgfc zzgfcVar, Object obj, zzfnb zzfnbVar) {
        zzgfb zzgfbVar;
        zzgfbVar = zzfnb.zza;
        return new zzfna(zzfnbVar, obj, zzgfbVar, Collections.emptyList(), zzgfcVar.zzb(callable));
    }

    public static final zzfna zzc(zzgfb zzgfbVar, Object obj, zzfnb zzfnbVar) {
        zzgfb zzgfbVar2;
        zzgfbVar2 = zzfnb.zza;
        return new zzfna(zzfnbVar, obj, zzgfbVar2, Collections.emptyList(), zzgfbVar);
    }

    public static final zzfna zzd(final zzfmn zzfmnVar, zzgfc zzgfcVar, Object obj, zzfnb zzfnbVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfms
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfmn.this.zza();
                return null;
            }
        }, zzgfcVar, obj, zzfnbVar);
    }
}
