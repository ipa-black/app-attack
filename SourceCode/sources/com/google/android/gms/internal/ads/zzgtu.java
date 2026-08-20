package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgtu extends zzgyd implements zzgzo {
    private static final zzgtu zzb;
    private String zzd = "";

    static {
        zzgtu zzgtuVar = new zzgtu();
        zzb = zzgtuVar;
        zzgyd.zzaS(zzgtu.class, zzgtuVar);
    }

    private zzgtu() {
    }

    public static zzgtu zzc() {
        return zzb;
    }

    public static zzgtu zzd(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgtu) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzd"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgtt(null);
            } else {
                return new zzgtu();
            }
        }
        return (byte) 1;
    }

    public final String zze() {
        return this.zzd;
    }
}
