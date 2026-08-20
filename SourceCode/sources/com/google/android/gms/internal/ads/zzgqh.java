package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgqh extends zzgyd implements zzgzo {
    private static final zzgqh zzb;
    private int zzd;
    private zzgwv zze = zzgwv.zzb;

    static {
        zzgqh zzgqhVar = new zzgqh();
        zzb = zzgqhVar;
        zzgyd.zzaS(zzgqh.class, zzgqhVar);
    }

    private zzgqh() {
    }

    public static zzgqg zzc() {
        return (zzgqg) zzb.zzaz();
    }

    public static zzgqh zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgqh) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
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
                return new zzgqg(null);
            } else {
                return new zzgqh();
            }
        }
        return (byte) 1;
    }

    public final zzgwv zzf() {
        return this.zze;
    }
}
