package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhdk extends zzgyd implements zzgzo {
    private static final zzhdk zzb;
    private int zzd;
    private String zze = "";
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzhdk zzhdkVar = new zzhdk();
        zzb = zzhdkVar;
        zzgyd.zzaS(zzhdk.class, zzhdkVar);
    }

    private zzhdk() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhdj(null);
            } else {
                return new zzhdk();
            }
        }
        return (byte) 1;
    }
}
