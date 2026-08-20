package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgul extends zzgyd implements zzgzo {
    private static final zzgul zzb;
    private int zzd;

    static {
        zzgul zzgulVar = new zzgul();
        zzb = zzgulVar;
        zzgyd.zzaS(zzgul.class, zzgulVar);
    }

    private zzgul() {
    }

    public static zzgul zzc() {
        return zzb;
    }

    public static zzgul zzd(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgul) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzd"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzguk(null);
            } else {
                return new zzgul();
            }
        }
        return (byte) 1;
    }
}
