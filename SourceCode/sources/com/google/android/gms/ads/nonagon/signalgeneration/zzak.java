package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzddu;
import com.google.android.gms.internal.ads.zzfnd;
import com.google.android.gms.internal.ads.zzfnj;
import com.google.android.gms.internal.ads.zzhep;
import com.google.android.gms.internal.ads.zzhfc;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzak implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzak(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return ((zzfnj) this.zza.zzb()).zzb(zzfnd.GENERATE_SIGNALS, ((zzddu) this.zzc).zzb().zzc()).zzf(((zzan) this.zzb).zzb()).zzi(((Integer) zzba.zzc().zzb(zzbjj.zzeW)).intValue(), TimeUnit.SECONDS).zza();
    }
}
