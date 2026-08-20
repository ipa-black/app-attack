package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgso extends zzgyd implements zzgzo {
    private static final zzgso zzb;
    private int zzd;
    private zzgsr zze;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzgso zzgsoVar = new zzgso();
        zzb = zzgsoVar;
        zzgyd.zzaS(zzgso.class, zzgsoVar);
    }

    private zzgso() {
    }

    public static zzgsn zzc() {
        return (zzgsn) zzb.zzaz();
    }

    public static zzgso zze(zzgwv zzgwvVar, zzgxp zzgxpVar) throws zzgyp {
        return (zzgso) zzgyd.zzaF(zzb, zzgwvVar, zzgxpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzi(zzgso zzgsoVar, zzgsr zzgsrVar) {
        zzgsrVar.getClass();
        zzgsoVar.zze = zzgsrVar;
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
                return zzaP(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzgsn(null);
            } else {
                return new zzgso();
            }
        }
        return (byte) 1;
    }

    public final zzgsr zzf() {
        zzgsr zzgsrVar = this.zze;
        return zzgsrVar == null ? zzgsr.zzf() : zzgsrVar;
    }

    public final zzgwv zzg() {
        return this.zzf;
    }

    public final boolean zzk() {
        return this.zze != null;
    }
}
