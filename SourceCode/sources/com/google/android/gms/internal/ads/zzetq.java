package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzetq implements zzezm {
    private final zzgfb zza;
    private final Executor zzb;

    public zzetq(zzgfb zzgfbVar, Executor executor) {
        this.zza = zzgfbVar;
        this.zzb = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return zzger.zzn(this.zza, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzetp
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                final String str = (String) obj;
                return zzger.zzi(new zzezl() { // from class: com.google.android.gms.internal.ads.zzeto
                    @Override // com.google.android.gms.internal.ads.zzezl
                    public final void zzf(Object obj2) {
                        ((Bundle) obj2).putString("ms", str);
                    }
                });
            }
        }, this.zzb);
    }
}
