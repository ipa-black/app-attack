package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzans extends zzgyd implements zzgzo {
    private static final zzans zzb;
    private int zzd;
    private zzgym zze = zzaL();
    private zzgwv zzf = zzgwv.zzb;
    private int zzg = 1;
    private int zzh = 1;

    static {
        zzans zzansVar = new zzans();
        zzb = zzansVar;
        zzgyd.zzaS(zzans.class, zzansVar);
    }

    private zzans() {
    }

    public static zzanr zza() {
        return (zzanr) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzans zzansVar, zzgwv zzgwvVar) {
        zzgym zzgymVar = zzansVar.zze;
        if (!zzgymVar.zzc()) {
            zzansVar.zze = zzgyd.zzaM(zzgymVar);
        }
        zzansVar.zze.add(zzgwvVar);
    }

    public static /* synthetic */ void zze(zzans zzansVar, zzgwv zzgwvVar) {
        zzansVar.zzd |= 1;
        zzansVar.zzf = zzgwvVar;
    }

    public static /* synthetic */ void zzf(zzans zzansVar, int i) {
        zzansVar.zzh = i - 1;
        zzansVar.zzd |= 4;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", zzanm.zza, "zzh", zzank.zza});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzanr(null);
            } else {
                return new zzans();
            }
        }
        return (byte) 1;
    }
}
