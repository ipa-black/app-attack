package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgsr extends zzgyd implements zzgzo {
    private static final zzgsr zzb;
    private int zzd;
    private zzgsl zze;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzgsr zzgsrVar = new zzgsr();
        zzb = zzgsrVar;
        zzgyd.zzaS(zzgsr.class, zzgsrVar);
    }

    private zzgsr() {
    }

    public static zzgsq zzd() {
        return (zzgsq) zzb.zzaz();
    }

    public static zzgsr zzf() {
        return zzb;
    }

    public static zzgsr zzg(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgsr) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzgsr zzgsrVar, zzgsl zzgslVar) {
        zzgslVar.getClass();
        zzgsrVar.zze = zzgslVar;
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
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgsq(null);
            } else {
                return new zzgsr();
            }
        }
        return (byte) 1;
    }

    public final zzgsl zzc() {
        zzgsl zzgslVar = this.zze;
        return zzgslVar == null ? zzgsl.zzd() : zzgslVar;
    }

    public final zzgwv zzh() {
        return this.zzf;
    }

    public final boolean zzl() {
        return this.zze != null;
    }
}
