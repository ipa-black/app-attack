package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgre extends zzgyd implements zzgzo {
    private static final zzgre zzb;
    private zzgrh zzd;

    static {
        zzgre zzgreVar = new zzgre();
        zzb = zzgreVar;
        zzgyd.zzaS(zzgre.class, zzgreVar);
    }

    private zzgre() {
    }

    public static zzgrd zza() {
        return (zzgrd) zzb.zzaz();
    }

    public static zzgre zzd(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgre) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzf(zzgre zzgreVar, zzgrh zzgrhVar) {
        zzgrhVar.getClass();
        zzgreVar.zzd = zzgrhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zzd"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgrd(null);
            } else {
                return new zzgre();
            }
        }
        return (byte) 1;
    }

    public final zzgrh zze() {
        zzgrh zzgrhVar = this.zzd;
        return zzgrhVar == null ? zzgrh.zze() : zzgrhVar;
    }
}
