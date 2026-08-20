package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbfy extends zzgyd implements zzgzo {
    private static final zzbfy zzb;
    private int zzd;
    private String zze = "";
    private zzgym zzf = zzaL();
    private int zzg;

    static {
        zzbfy zzbfyVar = new zzbfy();
        zzb = zzbfyVar;
        zzgyd.zzaS(zzbfy.class, zzbfyVar);
    }

    private zzbfy() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzd", "zze", "zzf", zzbfw.class, "zzg", zzbgj.zza});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfx(null);
            } else {
                return new zzbfy();
            }
        }
        return (byte) 1;
    }
}
