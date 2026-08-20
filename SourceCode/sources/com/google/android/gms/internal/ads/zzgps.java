package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgps extends zzgyd implements zzgzo {
    private static final zzgps zzb;
    private int zzd;
    private zzgpy zze;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzgps zzgpsVar = new zzgps();
        zzb = zzgpsVar;
        zzgyd.zzaS(zzgps.class, zzgpsVar);
    }

    private zzgps() {
    }

    public static zzgpr zzc() {
        return (zzgpr) zzb.zzaz();
    }

    public static zzgps zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgps) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzgps zzgpsVar, zzgpy zzgpyVar) {
        zzgpyVar.getClass();
        zzgpsVar.zze = zzgpyVar;
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
                return new zzgpr(null);
            } else {
                return new zzgps();
            }
        }
        return (byte) 1;
    }

    public final zzgpy zzf() {
        zzgpy zzgpyVar = this.zze;
        return zzgpyVar == null ? zzgpy.zze() : zzgpyVar;
    }

    public final zzgwv zzg() {
        return this.zzf;
    }
}
