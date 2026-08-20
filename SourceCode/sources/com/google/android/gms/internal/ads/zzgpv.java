package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgpv extends zzgyd implements zzgzo {
    private static final zzgpv zzb;
    private zzgpy zzd;
    private int zze;

    static {
        zzgpv zzgpvVar = new zzgpv();
        zzb = zzgpvVar;
        zzgyd.zzaS(zzgpv.class, zzgpvVar);
    }

    private zzgpv() {
    }

    public static zzgpu zzc() {
        return (zzgpu) zzb.zzaz();
    }

    public static zzgpv zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgpv) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzg(zzgpv zzgpvVar, zzgpy zzgpyVar) {
        zzgpyVar.getClass();
        zzgpvVar.zzd = zzgpyVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgpu(null);
            } else {
                return new zzgpv();
            }
        }
        return (byte) 1;
    }

    public final zzgpy zzf() {
        zzgpy zzgpyVar = this.zzd;
        return zzgpyVar == null ? zzgpy.zze() : zzgpyVar;
    }
}
