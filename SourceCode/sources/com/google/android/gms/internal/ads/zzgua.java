package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgua extends zzgyd implements zzgzo {
    private static final zzgua zzb;
    private String zzd = "";
    private zzgtb zze;

    static {
        zzgua zzguaVar = new zzgua();
        zzb = zzguaVar;
        zzgyd.zzaS(zzgua.class, zzguaVar);
    }

    private zzgua() {
    }

    public static zzgua zzd() {
        return zzb;
    }

    public static zzgua zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgua) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public final zzgtb zza() {
        zzgtb zzgtbVar = this.zze;
        return zzgtbVar == null ? zzgtb.zzd() : zzgtbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgtz(null);
            } else {
                return new zzgua();
            }
        }
        return (byte) 1;
    }

    public final String zzf() {
        return this.zzd;
    }

    public final boolean zzg() {
        return this.zze != null;
    }
}
