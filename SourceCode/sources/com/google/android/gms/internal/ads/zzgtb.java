package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgtb extends zzgyd implements zzgzo {
    private static final zzgtb zzb;
    private String zzd = "";
    private zzgwv zze = zzgwv.zzb;
    private int zzf;

    static {
        zzgtb zzgtbVar = new zzgtb();
        zzb = zzgtbVar;
        zzgyd.zzaS(zzgtb.class, zzgtbVar);
    }

    private zzgtb() {
    }

    public static zzgta zza() {
        return (zzgta) zzb.zzaz();
    }

    public static zzgtb zzd() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzgtb zzgtbVar, String str) {
        str.getClass();
        zzgtbVar.zzd = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgta(null);
            } else {
                return new zzgtb();
            }
        }
        return (byte) 1;
    }

    public final zzguc zze() {
        zzguc zzb2 = zzguc.zzb(this.zzf);
        return zzb2 == null ? zzguc.UNRECOGNIZED : zzb2;
    }

    public final zzgwv zzf() {
        return this.zze;
    }

    public final String zzg() {
        return this.zzd;
    }
}
