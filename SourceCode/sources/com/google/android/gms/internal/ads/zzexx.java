package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzexx implements zzezm {
    private final zzgfc zza;
    private final Bundle zzb;

    public zzexx(zzgfc zzgfcVar, Bundle bundle) {
        this.zza = zzgfcVar;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 30;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzexw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzexx.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzexy zzc() throws Exception {
        return new zzexy(this.zzb);
    }
}
