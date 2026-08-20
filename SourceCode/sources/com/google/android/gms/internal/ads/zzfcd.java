package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfcd implements zzezm {
    final ScheduledExecutorService zza;
    final Context zzb;
    final zzbzu zzc;

    public zzfcd(zzbzu zzbzuVar, ScheduledExecutorService scheduledExecutorService, Context context, byte[] bArr) {
        this.zzc = zzbzuVar;
        this.zza = scheduledExecutorService;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 49;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return zzger.zzm(zzger.zzo(zzger.zzi(new Bundle()), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdC)).longValue(), TimeUnit.MILLISECONDS, this.zza), new zzfxt() { // from class: com.google.android.gms.internal.ads.zzfcc
            @Override // com.google.android.gms.internal.ads.zzfxt
            public final Object apply(Object obj) {
                return new zzfce((Bundle) obj);
            }
        }, zzcib.zza);
    }
}
