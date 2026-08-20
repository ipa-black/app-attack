package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpg extends zzgyd implements zzgzo {
    private static final zzfpg zzb;
    private zzgym zzd = zzaL();

    static {
        zzfpg zzfpgVar = new zzfpg();
        zzb = zzfpgVar;
        zzgyd.zzaS(zzfpg.class, zzfpgVar);
    }

    private zzfpg() {
    }

    public static zzfpd zzc() {
        return (zzfpd) zzb.zzaz();
    }

    public static /* synthetic */ zzfpg zzd() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzfpg zzfpgVar) {
        zzfpgVar.zzd = zzaL();
    }

    public static /* synthetic */ void zzf(zzfpg zzfpgVar, zzfpf zzfpfVar) {
        zzfpfVar.getClass();
        zzgym zzgymVar = zzfpgVar.zzd;
        if (!zzgymVar.zzc()) {
            zzfpgVar.zzd = zzgyd.zzaM(zzgymVar);
        }
        zzfpgVar.zzd.add(zzfpfVar);
    }

    public final int zza() {
        return this.zzd.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzfpf.class});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzfpd(null);
            } else {
                return new zzfpg();
            }
        }
        return (byte) 1;
    }
}
