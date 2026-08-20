package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfsw extends zzgyd implements zzgzo {
    private static final zzgyj zzb = new zzfst();
    private static final zzfsw zzd;
    private int zze;
    private zzgyi zzf = zzaI();
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzfsw zzfswVar = new zzfsw();
        zzd = zzfswVar;
        zzgyd.zzaS(zzfsw.class, zzfswVar);
    }

    private zzfsw() {
    }

    public static zzfsv zza() {
        return (zzfsv) zzd.zzaz();
    }

    public static /* synthetic */ void zzd(zzfsw zzfswVar, String str) {
        str.getClass();
        zzfswVar.zze |= 1;
        zzfswVar.zzg = str;
    }

    public static /* synthetic */ void zze(zzfsw zzfswVar, int i) {
        zzgyi zzgyiVar = zzfswVar.zzf;
        if (!zzgyiVar.zzc()) {
            zzfswVar.zzf = zzgyd.zzaJ(zzgyiVar);
        }
        zzfswVar.zzf.zzh(2);
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zze", "zzf", zzfsu.zza, "zzg", "zzh", "zzi"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzd;
                }
                return new zzfsv(null);
            } else {
                return new zzfsw();
            }
        }
        return (byte) 1;
    }
}
