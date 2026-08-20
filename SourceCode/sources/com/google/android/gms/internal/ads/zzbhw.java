package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbhw extends zzgyd implements zzgzo {
    private static final zzbhw zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzbhw zzbhwVar = new zzbhw();
        zzb = zzbhwVar;
        zzgyd.zzaS(zzbhw.class, zzbhwVar);
    }

    private zzbhw() {
    }

    public static zzbhv zza() {
        return (zzbhv) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzbhw zzbhwVar, int i) {
        zzbhwVar.zzd |= 1;
        zzbhwVar.zze = i;
    }

    public static /* synthetic */ void zze(zzbhw zzbhwVar, int i) {
        zzbhwVar.zzd |= 2;
        zzbhwVar.zzf = i;
    }

    public static /* synthetic */ void zzf(zzbhw zzbhwVar, int i) {
        zzbhwVar.zzd |= 4;
        zzbhwVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbhv(null);
            } else {
                return new zzbhw();
            }
        }
        return (byte) 1;
    }
}
