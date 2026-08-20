package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgpg extends zzgyd implements zzgzo {
    private static final zzgpg zzb;
    private zzgpm zzd;
    private zzgsa zze;

    static {
        zzgpg zzgpgVar = new zzgpg();
        zzb = zzgpgVar;
        zzgyd.zzaS(zzgpg.class, zzgpgVar);
    }

    private zzgpg() {
    }

    public static zzgpf zza() {
        return (zzgpf) zzb.zzaz();
    }

    public static zzgpg zzd(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgpg) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    public static /* synthetic */ void zzg(zzgpg zzgpgVar, zzgpm zzgpmVar) {
        zzgpmVar.getClass();
        zzgpgVar.zzd = zzgpmVar;
    }

    public static /* synthetic */ void zzh(zzgpg zzgpgVar, zzgsa zzgsaVar) {
        zzgsaVar.getClass();
        zzgpgVar.zze = zzgsaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgpf(null);
            } else {
                return new zzgpg();
            }
        }
        return (byte) 1;
    }

    public final zzgpm zze() {
        zzgpm zzgpmVar = this.zzd;
        return zzgpmVar == null ? zzgpm.zze() : zzgpmVar;
    }

    public final zzgsa zzf() {
        zzgsa zzgsaVar = this.zze;
        return zzgsaVar == null ? zzgsa.zze() : zzgsaVar;
    }
}
