package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfta extends zzgyd implements zzgzo {
    private static final zzfta zzb;
    private int zzd;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private zzfsw zzh;

    static {
        zzfta zzftaVar = new zzfta();
        zzb = zzftaVar;
        zzgyd.zzaS(zzfta.class, zzftaVar);
    }

    private zzfta() {
    }

    public static zzfsy zza() {
        return (zzfsy) zzb.zzaz();
    }

    public static /* synthetic */ zzfta zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzfta zzftaVar, String str) {
        str.getClass();
        zzftaVar.zzd |= 2;
        zzftaVar.zzf = str;
    }

    public static /* synthetic */ void zze(zzfta zzftaVar, zzfsw zzfswVar) {
        zzfswVar.getClass();
        zzftaVar.zzh = zzfswVar;
        zzftaVar.zzd |= 8;
    }

    public static /* synthetic */ void zzf(zzfta zzftaVar, int i) {
        zzftaVar.zze = 1;
        zzftaVar.zzd = 1 | zzftaVar.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzd", "zze", zzfsz.zza, "zzf", "zzg", "zzh"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzfsy(null);
            } else {
                return new zzfta();
            }
        }
        return (byte) 1;
    }
}
