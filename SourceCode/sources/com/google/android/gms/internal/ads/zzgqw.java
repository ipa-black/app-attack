package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgqw extends zzgyd implements zzgzo {
    private static final zzgqw zzb;

    static {
        zzgqw zzgqwVar = new zzgqw();
        zzb = zzgqwVar;
        zzgyd.zzaS(zzgqw.class, zzgqwVar);
    }

    private zzgqw() {
    }

    public static zzgqw zzc() {
        return zzb;
    }

    public static zzgqw zzd(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgqw) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgqv(null);
                }
                return new zzgqw();
            }
            return zzaP(zzb, "\u0000\u0000", null);
        }
        return (byte) 1;
    }
}
