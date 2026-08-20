package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgrk extends zzgyd implements zzgzo {
    private static final zzgrk zzb;
    private int zzd;
    private zzgrn zze;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzgrk zzgrkVar = new zzgrk();
        zzb = zzgrkVar;
        zzgyd.zzaS(zzgrk.class, zzgrkVar);
    }

    private zzgrk() {
    }

    public static zzgrj zzc() {
        return (zzgrj) zzb.zzaz();
    }

    public static zzgrk zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgrk) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzi(zzgrk zzgrkVar, zzgrn zzgrnVar) {
        zzgrnVar.getClass();
        zzgrkVar.zze = zzgrnVar;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgrj(null);
            } else {
                return new zzgrk();
            }
        }
        return (byte) 1;
    }

    public final zzgrn zzf() {
        zzgrn zzgrnVar = this.zze;
        return zzgrnVar == null ? zzgrn.zzf() : zzgrnVar;
    }

    public final zzgwv zzg() {
        return this.zzf;
    }
}
