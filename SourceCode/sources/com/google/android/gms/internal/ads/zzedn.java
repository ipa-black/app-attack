package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzedn implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzedn(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        final zzapj zzapjVar = (zzapj) this.zza.zzb();
        final Context zza = ((zzcpp) this.zzb).zza();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        zzgfb zzb = zzgfcVar.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzedk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzapj zzapjVar2 = zzapj.this;
                return zzapjVar2.zzc().zzg(zza);
            }
        });
        zzhex.zzb(zzb);
        return zzb;
    }
}
