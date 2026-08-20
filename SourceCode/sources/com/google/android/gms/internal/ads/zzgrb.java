package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgrb extends zzgyd implements zzgzo {
    private static final zzgrb zzb;
    private zzgtb zzd;

    static {
        zzgrb zzgrbVar = new zzgrb();
        zzb = zzgrbVar;
        zzgyd.zzaS(zzgrb.class, zzgrbVar);
    }

    private zzgrb() {
    }

    public static zzgra zza() {
        return (zzgra) zzb.zzaz();
    }

    public static zzgrb zzd() {
        return zzb;
    }

    public static /* synthetic */ void zzf(zzgrb zzgrbVar, zzgtb zzgtbVar) {
        zzgtbVar.getClass();
        zzgrbVar.zzd = zzgtbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zzd"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgra(null);
            } else {
                return new zzgrb();
            }
        }
        return (byte) 1;
    }

    public final zzgtb zze() {
        zzgtb zzgtbVar = this.zzd;
        return zzgtbVar == null ? zzgtb.zzd() : zzgtbVar;
    }
}
