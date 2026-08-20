package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdvz implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzdvz(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        zzhfc zzhfcVar = this.zza;
        zzhfc zzhfcVar2 = this.zzb;
        int i = ((zzdee) this.zzc).zza().zzo.zza;
        int i2 = i - 1;
        if (i != 0) {
            if (i2 != 0) {
                return ((zzepx) zzhfcVar2).zzb();
            }
            return ((zzepx) zzhfcVar).zzb();
        }
        throw null;
    }
}
