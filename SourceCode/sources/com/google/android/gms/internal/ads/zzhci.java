package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhci extends zzgyd implements zzgzo {
    private static final zzhci zzb;
    private int zzd;
    private zzhch zzf;
    private long zzg;
    private String zze = "";
    private String zzh = "";

    static {
        zzhci zzhciVar = new zzhci();
        zzb = zzhciVar;
        zzgyd.zzaS(zzhci.class, zzhciVar);
    }

    private zzhci() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003ဂ\u0002\u0004ဈ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhcf(null);
            } else {
                return new zzhci();
            }
        }
        return (byte) 1;
    }
}
