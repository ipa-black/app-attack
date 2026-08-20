package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhfb implements zzhfc {
    private static final Object zza = new Object();
    private volatile zzhfc zzb;
    private volatile Object zzc = zza;

    private zzhfb(zzhfc zzhfcVar) {
        this.zzb = zzhfcVar;
    }

    public static zzhfc zza(zzhfc zzhfcVar) {
        if ((zzhfcVar instanceof zzhfb) || (zzhfcVar instanceof zzheo)) {
            return zzhfcVar;
        }
        zzhfcVar.getClass();
        return new zzhfb(zzhfcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final Object zzb() {
        Object obj = this.zzc;
        if (obj == zza) {
            zzhfc zzhfcVar = this.zzb;
            if (zzhfcVar == null) {
                return this.zzc;
            }
            Object zzb = zzhfcVar.zzb();
            this.zzc = zzb;
            this.zzb = null;
            return zzb;
        }
        return obj;
    }
}
