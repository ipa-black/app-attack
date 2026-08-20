package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbia extends zzgyd implements zzgzo {
    private static final zzbia zzb;
    private int zzd;
    private int zze = 1000;
    private zzbid zzf;
    private zzbhu zzg;

    static {
        zzbia zzbiaVar = new zzbia();
        zzb = zzbiaVar;
        zzgyd.zzaS(zzbia.class, zzbiaVar);
    }

    private zzbia() {
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzbgj.zza, "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbhz(null);
            } else {
                return new zzbia();
            }
        }
        return (byte) 1;
    }
}
