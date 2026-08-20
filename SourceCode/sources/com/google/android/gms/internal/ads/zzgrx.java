package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgrx extends zzgyd implements zzgzo {
    private static final zzgrx zzb;
    private int zzd;
    private zzgsd zze;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzgrx zzgrxVar = new zzgrx();
        zzb = zzgrxVar;
        zzgyd.zzaS(zzgrx.class, zzgrxVar);
    }

    private zzgrx() {
    }

    public static zzgrw zzc() {
        return (zzgrw) zzb.zzaz();
    }

    public static zzgrx zze() {
        return zzb;
    }

    public static zzgrx zzf(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgrx) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzgrx zzgrxVar, zzgsd zzgsdVar) {
        zzgsdVar.getClass();
        zzgrxVar.zze = zzgsdVar;
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
                return new zzgrw(null);
            } else {
                return new zzgrx();
            }
        }
        return (byte) 1;
    }

    public final zzgsd zzg() {
        zzgsd zzgsdVar = this.zze;
        return zzgsdVar == null ? zzgsd.zze() : zzgsdVar;
    }

    public final zzgwv zzh() {
        return this.zzf;
    }
}
