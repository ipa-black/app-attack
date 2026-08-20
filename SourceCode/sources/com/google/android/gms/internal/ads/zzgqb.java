package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgqb extends zzgyd implements zzgzo {
    private static final zzgqb zzb;
    private int zzd;
    private zzgwv zze = zzgwv.zzb;

    static {
        zzgqb zzgqbVar = new zzgqb();
        zzb = zzgqbVar;
        zzgyd.zzaS(zzgqb.class, zzgqbVar);
    }

    private zzgqb() {
    }

    public static zzgqa zzc() {
        return (zzgqa) zzb.zzaz();
    }

    public static zzgqb zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgqb) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public final int zza() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgqa(null);
            } else {
                return new zzgqb();
            }
        }
        return (byte) 1;
    }

    public final zzgwv zzf() {
        return this.zze;
    }
}
