package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgrn extends zzgyd implements zzgzo {
    private static final zzgrn zzb;
    private int zzd;
    private zzgrh zze;
    private zzgwv zzf = zzgwv.zzb;
    private zzgwv zzg = zzgwv.zzb;

    static {
        zzgrn zzgrnVar = new zzgrn();
        zzb = zzgrnVar;
        zzgyd.zzaS(zzgrn.class, zzgrnVar);
    }

    private zzgrn() {
    }

    public static zzgrm zzd() {
        return (zzgrm) zzb.zzaz();
    }

    public static zzgrn zzf() {
        return zzb;
    }

    public static zzgrn zzg(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgrn) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzk(zzgrn zzgrnVar, zzgrh zzgrhVar) {
        zzgrhVar.getClass();
        zzgrnVar.zze = zzgrhVar;
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
                return zzaP(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzd", "zze", "zzf", "zzg"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgrm(null);
            } else {
                return new zzgrn();
            }
        }
        return (byte) 1;
    }

    public final zzgrh zzc() {
        zzgrh zzgrhVar = this.zze;
        return zzgrhVar == null ? zzgrh.zze() : zzgrhVar;
    }

    public final zzgwv zzh() {
        return this.zzf;
    }

    public final zzgwv zzi() {
        return this.zzg;
    }
}
