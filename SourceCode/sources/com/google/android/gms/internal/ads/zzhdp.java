package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhdp extends zzgyd implements zzgzo {
    private static final zzhdp zzb;
    private int zzd;
    private int zze;
    private int zzh;
    private String zzf = "";
    private zzgyi zzg = zzaI();
    private zzgym zzi = zzaL();
    private zzgwv zzj = zzgwv.zzb;

    static {
        zzhdp zzhdpVar = new zzhdp();
        zzb = zzhdpVar;
        zzgyd.zzaS(zzhdp.class, zzhdpVar);
    }

    private zzhdp() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u0016\u0005င\u0002\u0006\u001b\u0007ည\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzhdn.class, "zzj"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhdo(null);
            } else {
                return new zzhdp();
            }
        }
        return (byte) 1;
    }
}
