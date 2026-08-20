package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgpm extends zzgyd implements zzgzo {
    private static final zzgpm zzb;
    private zzgpp zzd;
    private int zze;

    static {
        zzgpm zzgpmVar = new zzgpm();
        zzb = zzgpmVar;
        zzgyd.zzaS(zzgpm.class, zzgpmVar);
    }

    private zzgpm() {
    }

    public static zzgpl zzc() {
        return (zzgpl) zzb.zzaz();
    }

    public static zzgpm zze() {
        return zzb;
    }

    public static zzgpm zzf(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgpm) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzh(zzgpm zzgpmVar, zzgpp zzgppVar) {
        zzgppVar.getClass();
        zzgpmVar.zzd = zzgppVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgpl(null);
            } else {
                return new zzgpm();
            }
        }
        return (byte) 1;
    }

    public final zzgpp zzg() {
        zzgpp zzgppVar = this.zzd;
        return zzgppVar == null ? zzgpp.zze() : zzgppVar;
    }
}
