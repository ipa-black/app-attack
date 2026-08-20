package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhch extends zzgyd implements zzgzo {
    private static final zzhch zzb;
    private int zzd;
    private zzgwv zze = zzgwv.zzb;

    static {
        zzhch zzhchVar = new zzhch();
        zzb = zzhchVar;
        zzgyd.zzaS(zzhch.class, zzhchVar);
    }

    private zzhch() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ည\u0000", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhcg(null);
            } else {
                return new zzhch();
            }
        }
        return (byte) 1;
    }
}
