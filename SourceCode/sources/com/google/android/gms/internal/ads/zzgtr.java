package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgtr extends zzgyd implements zzgzo {
    private static final zzgtr zzb;
    private int zzd;
    private zzgtu zze;

    static {
        zzgtr zzgtrVar = new zzgtr();
        zzb = zzgtrVar;
        zzgyd.zzaS(zzgtr.class, zzgtrVar);
    }

    private zzgtr() {
    }

    public static zzgtq zzc() {
        return (zzgtq) zzb.zzaz();
    }

    public static zzgtr zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgtr) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzgtr zzgtrVar, zzgtu zzgtuVar) {
        zzgtuVar.getClass();
        zzgtrVar.zze = zzgtuVar;
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
                return zzaP(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzd", "zze"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgtq(null);
            } else {
                return new zzgtr();
            }
        }
        return (byte) 1;
    }

    public final zzgtu zzf() {
        zzgtu zzgtuVar = this.zze;
        return zzgtuVar == null ? zzgtu.zzc() : zzgtuVar;
    }
}
