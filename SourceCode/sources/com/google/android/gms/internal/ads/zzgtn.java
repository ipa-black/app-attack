package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgtn extends zzgyd implements zzgzo {
    private static final zzgtn zzb;
    private String zzd = "";
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgtn zzgtnVar = new zzgtn();
        zzb = zzgtnVar;
        zzgyd.zzaS(zzgtn.class, zzgtnVar);
    }

    private zzgtn() {
    }

    public static zzgtm zza() {
        return (zzgtm) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzgtn zzgtnVar, String str) {
        str.getClass();
        zzgtnVar.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzd", "zze", "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgtm(null);
            } else {
                return new zzgtn();
            }
        }
        return (byte) 1;
    }
}
