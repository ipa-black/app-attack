package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgou extends zzgyd implements zzgzo {
    private static final zzgou zzb;
    private int zzd;
    private zzgwv zze = zzgwv.zzb;
    private zzgpa zzf;

    static {
        zzgou zzgouVar = new zzgou();
        zzb = zzgouVar;
        zzgyd.zzaS(zzgou.class, zzgouVar);
    }

    private zzgou() {
    }

    public static zzgot zzc() {
        return (zzgot) zzb.zzaz();
    }

    public static zzgou zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgou) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzj(zzgou zzgouVar, zzgpa zzgpaVar) {
        zzgpaVar.getClass();
        zzgouVar.zzf = zzgpaVar;
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
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgot(null);
            } else {
                return new zzgou();
            }
        }
        return (byte) 1;
    }

    public final zzgpa zzf() {
        zzgpa zzgpaVar = this.zzf;
        return zzgpaVar == null ? zzgpa.zze() : zzgpaVar;
    }

    public final zzgwv zzg() {
        return this.zze;
    }
}
