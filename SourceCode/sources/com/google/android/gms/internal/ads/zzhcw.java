package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhcw extends zzgyd implements zzgzo {
    private static final zzhcw zzb;
    private int zzd;
    private zzhcv zze;
    private zzgwv zzh;
    private int zzi;
    private zzgwv zzj;
    private byte zzk = 2;
    private zzgym zzf = zzaL();
    private zzgwv zzg = zzgwv.zzb;

    static {
        zzhcw zzhcwVar = new zzhcw();
        zzb = zzhcwVar;
        zzgyd.zzaS(zzhcw.class, zzhcwVar);
    }

    private zzhcw() {
        zzgwv zzgwvVar = zzgwv.zzb;
        this.zzh = zzgwvVar;
        this.zzj = zzgwvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzd", "zze", "zzf", zzhco.class, "zzg", "zzh", "zzi", "zzj"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 == 5) {
                        return zzb;
                    }
                    this.zzk = obj == null ? (byte) 0 : (byte) 1;
                    return null;
                }
                return new zzhct(null);
            } else {
                return new zzhcw();
            }
        }
        return Byte.valueOf(this.zzk);
    }
}
