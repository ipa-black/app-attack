package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbif extends zzgyd implements zzgzo {
    private static final zzbif zzb;
    private int zzd;
    private zzbhw zze;
    private int zzf = 1000;
    private zzbid zzg;
    private zzbhu zzh;

    static {
        zzbif zzbifVar = new zzbif();
        zzb = zzbifVar;
        zzgyd.zzaS(zzbif.class, zzbifVar);
    }

    private zzbif() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzd", "zze", "zzf", zzbgj.zza, "zzg", "zzh"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbie(null);
            } else {
                return new zzbif();
            }
        }
        return (byte) 1;
    }
}
