package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgpd extends zzgyd implements zzgzo {
    private static final zzgpd zzb;
    private int zzd;
    private zzgpj zze;
    private zzgrx zzf;

    static {
        zzgpd zzgpdVar = new zzgpd();
        zzb = zzgpdVar;
        zzgyd.zzaS(zzgpd.class, zzgpdVar);
    }

    private zzgpd() {
    }

    public static zzgpc zzc() {
        return (zzgpc) zzb.zzaz();
    }

    public static zzgpd zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgpd) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzi(zzgpd zzgpdVar, zzgpj zzgpjVar) {
        zzgpjVar.getClass();
        zzgpdVar.zze = zzgpjVar;
    }

    public static /* synthetic */ void zzj(zzgpd zzgpdVar, zzgrx zzgrxVar) {
        zzgrxVar.getClass();
        zzgpdVar.zzf = zzgrxVar;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgpc(null);
            } else {
                return new zzgpd();
            }
        }
        return (byte) 1;
    }

    public final zzgpj zzf() {
        zzgpj zzgpjVar = this.zze;
        return zzgpjVar == null ? zzgpj.zze() : zzgpjVar;
    }

    public final zzgrx zzg() {
        zzgrx zzgrxVar = this.zzf;
        return zzgrxVar == null ? zzgrx.zze() : zzgrxVar;
    }
}
