package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzexp implements zzezm {
    private final zzgfc zza;
    private final Context zzb;
    private final Set zzc;

    public zzexp(zzgfc zzgfcVar, Context context, Set set) {
        this.zza = zzgfcVar;
        this.zzb = context;
        this.zzc = set;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 27;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzexo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzexp.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzexq zzc() throws Exception {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue()) {
            Set set = this.zzc;
            if (set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner")) {
                com.google.android.gms.ads.internal.zzt.zzA();
                return new zzexq(true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzey)).booleanValue() ? "a.1.3.37-google_20220829" : null);
            }
        }
        return new zzexq(null);
    }
}
