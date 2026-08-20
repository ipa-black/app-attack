package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbge extends zzgyd implements zzgzo {
    private static final zzbge zzb;
    private int zzd;
    private zzbhu zzf;
    private int zzg;
    private zzbhw zzh;
    private int zzi;
    private String zze = "";
    private int zzj = 1000;
    private int zzk = 1000;
    private int zzl = 1000;

    static {
        zzbge zzbgeVar = new zzbge();
        zzb = zzbgeVar;
        zzgyd.zzaS(zzbge.class, zzbgeVar);
    }

    private zzbge() {
    }

    public static zzbge zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzbge zzbgeVar, String str) {
        zzbgeVar.zzd |= 1;
        zzbgeVar.zze = str;
    }

    public static /* synthetic */ void zze(zzbge zzbgeVar, zzbhw zzbhwVar) {
        zzbhwVar.getClass();
        zzbgeVar.zzh = zzbhwVar;
        zzbgeVar.zzd |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgyh zzgyhVar = zzbgj.zza;
                return zzaP(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzgyhVar, "zzk", zzgyhVar, "zzl", zzgyhVar});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbgd(null);
            } else {
                return new zzbge();
            }
        }
        return (byte) 1;
    }
}
