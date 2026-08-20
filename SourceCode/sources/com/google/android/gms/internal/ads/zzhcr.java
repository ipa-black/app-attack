package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhcr extends zzgyd implements zzgzo {
    private static final zzhcr zzb;
    private int zzd;
    private zzgwv zze = zzgwv.zzb;
    private zzgwv zzf;
    private zzgwv zzg;

    static {
        zzhcr zzhcrVar = new zzhcr();
        zzb = zzhcrVar;
        zzgyd.zzaS(zzhcr.class, zzhcrVar);
    }

    private zzhcr() {
        zzgwv zzgwvVar = zzgwv.zzb;
        this.zzf = zzgwvVar;
        this.zzg = zzgwvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhcq(null);
            } else {
                return new zzhcr();
            }
        }
        return (byte) 1;
    }
}
