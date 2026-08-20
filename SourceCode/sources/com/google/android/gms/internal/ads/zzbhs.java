package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbhs extends zzgyd implements zzgzo {
    private static final zzbhs zzb;
    private int zzd;
    private String zze = "";
    private int zzf;
    private zzbhu zzg;

    static {
        zzbhs zzbhsVar = new zzbhs();
        zzb = zzbhsVar;
        zzgyd.zzaS(zzbhs.class, zzbhsVar);
    }

    private zzbhs() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", "zzf", zzbgj.zza, "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbhr(null);
            } else {
                return new zzbhs();
            }
        }
        return (byte) 1;
    }
}
