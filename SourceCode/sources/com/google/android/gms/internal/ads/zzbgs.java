package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbgs extends zzgyd implements zzgzo {
    private static final zzbgs zzb;
    private int zzd;
    private zzbgo zze;
    private zzgym zzf = zzaL();
    private int zzg;
    private zzbhu zzh;

    static {
        zzbgs zzbgsVar = new zzbgs();
        zzb = zzbgsVar;
        zzgyd.zzaS(zzbgs.class, zzbgsVar);
    }

    private zzbgs() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဌ\u0001\u0004ဉ\u0002", new Object[]{"zzd", "zze", "zzf", zzbhs.class, "zzg", zzbgj.zza, "zzh"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbgr(null);
            } else {
                return new zzbgs();
            }
        }
        return (byte) 1;
    }
}
