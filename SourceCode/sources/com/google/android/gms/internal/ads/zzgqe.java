package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgqe extends zzgyd implements zzgzo {
    private static final zzgqe zzb;
    private int zzd;
    private int zze;

    static {
        zzgqe zzgqeVar = new zzgqe();
        zzb = zzgqeVar;
        zzgyd.zzaS(zzgqe.class, zzgqeVar);
    }

    private zzgqe() {
    }

    public static zzgqd zzc() {
        return (zzgqd) zzb.zzaz();
    }

    public static zzgqe zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgqe) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgqd(null);
            } else {
                return new zzgqe();
            }
        }
        return (byte) 1;
    }
}
