package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbga extends zzgyd implements zzgzo {
    private static final zzbga zzb;
    private int zzd;
    private String zze = "";
    private zzgym zzf = zzaL();
    private int zzg = 1000;
    private int zzh = 1000;
    private int zzi = 1000;

    static {
        zzbga zzbgaVar = new zzbga();
        zzb = zzbgaVar;
        zzgyd.zzaS(zzbga.class, zzbgaVar);
    }

    private zzbga() {
    }

    public static zzbga zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzbga zzbgaVar, String str) {
        str.getClass();
        zzbgaVar.zzd |= 1;
        zzbgaVar.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgyh zzgyhVar = zzbgj.zza;
                return zzaP(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzd", "zze", "zzf", zzbfw.class, "zzg", zzgyhVar, "zzh", zzgyhVar, "zzi", zzgyhVar});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbfz(null);
            } else {
                return new zzbga();
            }
        }
        return (byte) 1;
    }
}
