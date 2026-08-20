package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgsa extends zzgyd implements zzgzo {
    private static final zzgsa zzb;
    private zzgsd zzd;
    private int zze;
    private int zzf;

    static {
        zzgsa zzgsaVar = new zzgsa();
        zzb = zzgsaVar;
        zzgyd.zzaS(zzgsa.class, zzgsaVar);
    }

    private zzgsa() {
    }

    public static zzgrz zzc() {
        return (zzgrz) zzb.zzaz();
    }

    public static zzgsa zze() {
        return zzb;
    }

    public static zzgsa zzf(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgsa) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzh(zzgsa zzgsaVar, zzgsd zzgsdVar) {
        zzgsdVar.getClass();
        zzgsaVar.zzd = zzgsdVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgrz(null);
            } else {
                return new zzgsa();
            }
        }
        return (byte) 1;
    }

    public final zzgsd zzg() {
        zzgsd zzgsdVar = this.zzd;
        return zzgsdVar == null ? zzgsd.zze() : zzgsdVar;
    }
}
