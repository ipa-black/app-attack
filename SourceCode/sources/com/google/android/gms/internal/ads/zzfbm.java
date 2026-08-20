package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfbm implements zzezm {
    final zzgfc zza;
    final Context zzb;
    final zzbel zzc;

    public zzfbm(zzbel zzbelVar, zzgfc zzgfcVar, Context context, byte[] bArr) {
        this.zzc = zzbelVar;
        this.zza = zzgfcVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 45;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfbl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzfbn(new JSONObject());
            }
        });
    }
}
