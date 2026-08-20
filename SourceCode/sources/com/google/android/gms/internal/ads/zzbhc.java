package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbhc extends zzgyd implements zzgzo {
    private static final zzbhc zzb;
    private int zzd;
    private int zze;
    private zzbhu zzf;

    static {
        zzbhc zzbhcVar = new zzbhc();
        zzb = zzbhcVar;
        zzgyd.zzaS(zzbhc.class, zzbhcVar);
    }

    private zzbhc() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzd", "zze", zzbgj.zza, "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbhb(null);
            } else {
                return new zzbhc();
            }
        }
        return (byte) 1;
    }
}
