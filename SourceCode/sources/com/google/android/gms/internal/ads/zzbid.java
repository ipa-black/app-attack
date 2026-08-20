package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbid extends zzgyd implements zzgzo {
    private static final zzbid zzb;
    private int zzd;
    private int zze;

    static {
        zzbid zzbidVar = new zzbid();
        zzb = zzbidVar;
        zzgyd.zzaS(zzbid.class, zzbidVar);
    }

    private zzbid() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"zzd", "zze", zzbic.zza});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbib(null);
            } else {
                return new zzbid();
            }
        }
        return (byte) 1;
    }
}
