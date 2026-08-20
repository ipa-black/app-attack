package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfax implements zzezm {
    private final Context zza;
    private final String zzb;
    private final zzgfc zzc;

    public zzfax(zzccd zzccdVar, Context context, String str, zzgfc zzgfcVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzgfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 42;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfaw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzfay(new JSONObject());
            }
        });
    }
}
