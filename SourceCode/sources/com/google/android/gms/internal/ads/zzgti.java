package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgti extends zzgyd implements zzgzo {
    private static final zzgti zzb;
    private zzgsw zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgti zzgtiVar = new zzgti();
        zzb = zzgtiVar;
        zzgyd.zzaS(zzgti.class, zzgtiVar);
    }

    private zzgti() {
    }

    public static zzgth zzd() {
        return (zzgth) zzb.zzaz();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzg(zzgti zzgtiVar, zzgsw zzgswVar) {
        zzgswVar.getClass();
        zzgtiVar.zzd = zzgswVar;
    }

    public final int zza() {
        return this.zzf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzd", "zze", "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgth(null);
            } else {
                return new zzgti();
            }
        }
        return (byte) 1;
    }

    public final zzgsw zzc() {
        zzgsw zzgswVar = this.zzd;
        return zzgswVar == null ? zzgsw.zze() : zzgswVar;
    }

    public final zzguc zzf() {
        zzguc zzb2 = zzguc.zzb(this.zzg);
        return zzb2 == null ? zzguc.UNRECOGNIZED : zzb2;
    }

    public final boolean zzj() {
        return this.zzd != null;
    }

    public final int zzk() {
        int i = this.zze;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? 0 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
