package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhez {
    private final List zza;
    private final List zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhez(int i, int i2, zzhey zzheyVar) {
        this.zza = zzhem.zzc(i);
        this.zzb = zzhem.zzc(i2);
    }

    public final zzhez zza(zzhfc zzhfcVar) {
        this.zzb.add(zzhfcVar);
        return this;
    }

    public final zzhez zzb(zzhfc zzhfcVar) {
        this.zza.add(zzhfcVar);
        return this;
    }

    public final zzhfa zzc() {
        return new zzhfa(this.zza, this.zzb, null);
    }
}
