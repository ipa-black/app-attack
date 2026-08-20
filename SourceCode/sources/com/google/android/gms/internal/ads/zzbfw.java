package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfw extends zzgyd implements zzgzo {
    private static final zzbfw zzb;
    private int zzd;
    private int zze;
    private zzbhq zzf;

    static {
        zzbfw zzbfwVar = new zzbfw();
        zzb = zzbfwVar;
        zzgyd.zzaS(zzbfw.class, zzbfwVar);
    }

    private zzbfw() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzd", "zze", zzbfu.zzc(), "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfv(null);
            } else {
                return new zzbfw();
            }
        }
        return (byte) 1;
    }
}
