package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgpj extends zzgyd implements zzgzo {
    private static final zzgpj zzb;
    private int zzd;
    private zzgpp zze;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzgpj zzgpjVar = new zzgpj();
        zzb = zzgpjVar;
        zzgyd.zzaS(zzgpj.class, zzgpjVar);
    }

    private zzgpj() {
    }

    public static zzgpi zzc() {
        return (zzgpi) zzb.zzaz();
    }

    public static zzgpj zze() {
        return zzb;
    }

    public static zzgpj zzf(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgpj) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzgpj zzgpjVar, zzgpp zzgppVar) {
        zzgppVar.getClass();
        zzgpjVar.zze = zzgppVar;
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
                return new zzgpi(null);
            } else {
                return new zzgpj();
            }
        }
        return (byte) 1;
    }

    public final zzgpp zzg() {
        zzgpp zzgppVar = this.zze;
        return zzgppVar == null ? zzgpp.zze() : zzgppVar;
    }

    public final zzgwv zzh() {
        return this.zzf;
    }
}
