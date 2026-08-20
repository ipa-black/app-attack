package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgsi extends zzgyd implements zzgzo {
    private static final zzgsi zzb;
    private zzgsl zzd;

    static {
        zzgsi zzgsiVar = new zzgsi();
        zzb = zzgsiVar;
        zzgyd.zzaS(zzgsi.class, zzgsiVar);
    }

    private zzgsi() {
    }

    public static zzgsh zza() {
        return (zzgsh) zzb.zzaz();
    }

    public static zzgsi zzd(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgsi) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzf(zzgsi zzgsiVar, zzgsl zzgslVar) {
        zzgslVar.getClass();
        zzgsiVar.zzd = zzgslVar;
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
                return new zzgsh(null);
            } else {
                return new zzgsi();
            }
        }
        return (byte) 1;
    }

    public final zzgsl zze() {
        zzgsl zzgslVar = this.zzd;
        return zzgslVar == null ? zzgsl.zzd() : zzgslVar;
    }
}
