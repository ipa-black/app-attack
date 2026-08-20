package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgrh extends zzgyd implements zzgzo {
    private static final zzgrh zzb;
    private zzgrq zzd;
    private zzgrb zze;
    private int zzf;

    static {
        zzgrh zzgrhVar = new zzgrh();
        zzb = zzgrhVar;
        zzgyd.zzaS(zzgrh.class, zzgrhVar);
    }

    private zzgrh() {
    }

    public static zzgrg zzc() {
        return (zzgrg) zzb.zzaz();
    }

    public static zzgrh zze() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzg(zzgrh zzgrhVar, zzgrq zzgrqVar) {
        zzgrqVar.getClass();
        zzgrhVar.zzd = zzgrqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzh(zzgrh zzgrhVar, zzgrb zzgrbVar) {
        zzgrbVar.getClass();
        zzgrhVar.zze = zzgrbVar;
    }

    public final zzgrb zza() {
        zzgrb zzgrbVar = this.zze;
        return zzgrbVar == null ? zzgrb.zzd() : zzgrbVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgrg(null);
            } else {
                return new zzgrh();
            }
        }
        return (byte) 1;
    }

    public final zzgrq zzf() {
        zzgrq zzgrqVar = this.zzd;
        return zzgrqVar == null ? zzgrq.zzd() : zzgrqVar;
    }

    public final int zzi() {
        int i = this.zzf;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? 0 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
