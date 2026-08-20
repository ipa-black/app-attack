package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfbt implements zzezm {
    final zzgfc zza;
    final String zzb;
    final zzcgl zzc;

    public zzfbt(zzcgl zzcglVar, zzgfc zzgfcVar, String str, byte[] bArr) {
        this.zzc = zzcglVar;
        this.zza = zzgfcVar;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 47;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        final zzgfb zzi = zzger.zzi(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfl)).booleanValue()) {
            zzi = zzger.zzi(null);
        }
        final zzgfb zzi2 = zzger.zzi(null);
        return zzger.zzd(zzi, zzi2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzfbs
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzfbu((String) zzgfb.this.get(), (String) zzi2.get());
            }
        }, zzcib.zza);
    }
}
