package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbil extends zzgyd implements zzgzo {
    private static final zzbil zzb;
    private int zzd;
    private int zze = 1000;
    private zzbid zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private long zzj;

    static {
        zzbil zzbilVar = new zzbil();
        zzb = zzbilVar;
        zzgyd.zzaS(zzbil.class, zzbilVar);
    }

    private zzbil() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzd", "zze", zzbgj.zza, "zzf", "zzg", "zzh", "zzi", "zzj"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbik(null);
            } else {
                return new zzbil();
            }
        }
        return (byte) 1;
    }
}
