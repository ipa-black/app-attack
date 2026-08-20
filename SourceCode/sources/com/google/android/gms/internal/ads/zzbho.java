package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbho extends zzgyd implements zzgzo {
    private static final zzbho zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzbho zzbhoVar = new zzbho();
        zzb = zzbhoVar;
        zzgyd.zzaS(zzbho.class, zzbhoVar);
    }

    private zzbho() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbhn(null);
            } else {
                return new zzbho();
            }
        }
        return (byte) 1;
    }
}
