package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzheo implements zzhfc, zzhej {
    private static final Object zza = new Object();
    private volatile zzhfc zzb;
    private volatile Object zzc = zza;

    private zzheo(zzhfc zzhfcVar) {
        this.zzb = zzhfcVar;
    }

    public static zzhej zza(zzhfc zzhfcVar) {
        if (zzhfcVar instanceof zzhej) {
            return (zzhej) zzhfcVar;
        }
        zzhfcVar.getClass();
        return new zzheo(zzhfcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final Object zzb() {
        Object obj = this.zzc;
        Object obj2 = zza;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.zzc;
                if (obj == obj2) {
                    obj = this.zzb.zzb();
                    Object obj3 = this.zzc;
                    if (obj3 != obj2 && obj3 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.zzc = obj;
                    this.zzb = null;
                }
            }
        }
        return obj;
    }

    public static zzhfc zzc(zzhfc zzhfcVar) {
        zzhfcVar.getClass();
        return zzhfcVar instanceof zzheo ? zzhfcVar : new zzheo(zzhfcVar);
    }
}
