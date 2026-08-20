package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgqq extends zzgyd implements zzgzo {
    private static final zzgqq zzb;
    private int zzd;
    private int zze;

    static {
        zzgqq zzgqqVar = new zzgqq();
        zzb = zzgqqVar;
        zzgyd.zzaS(zzgqq.class, zzgqqVar);
    }

    private zzgqq() {
    }

    public static zzgqp zzc() {
        return (zzgqp) zzb.zzaz();
    }

    public static zzgqq zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgqq) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgqp(null);
            } else {
                return new zzgqq();
            }
        }
        return (byte) 1;
    }
}
