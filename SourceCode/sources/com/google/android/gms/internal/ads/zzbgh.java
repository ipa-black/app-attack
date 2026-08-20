package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbgh extends zzgyd implements zzgzo {
    private static final zzbgh zzb;
    private int zzd;
    private int zze;
    private zzbhw zzf;
    private String zzg = "";
    private String zzh = "";

    static {
        zzbgh zzbghVar = new zzbgh();
        zzb = zzbghVar;
        zzgyd.zzaS(zzbgh.class, zzbghVar);
    }

    private zzbgh() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005ဌ\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzd", "zze", zzbgg.zza, "zzf", "zzg", "zzh"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbgf(null);
            } else {
                return new zzbgh();
            }
        }
        return (byte) 1;
    }
}
