package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzanj extends zzgyd implements zzgzo {
    private static final zzanj zzb;
    private int zzd;
    private zzgwv zze = zzgwv.zzb;
    private zzgwv zzf;
    private zzgwv zzg;
    private zzgwv zzh;

    static {
        zzanj zzanjVar = new zzanj();
        zzb = zzanjVar;
        zzgyd.zzaS(zzanj.class, zzanjVar);
    }

    private zzanj() {
        zzgwv zzgwvVar = zzgwv.zzb;
        this.zzf = zzgwvVar;
        this.zzg = zzgwvVar;
        this.zzh = zzgwvVar;
    }

    public static zzani zza() {
        return (zzani) zzb.zzaz();
    }

    public static zzanj zzd(byte[] bArr, zzgxp zzgxpVar) throws zzgyp {
        return (zzanj) zzgyd.zzaH(zzb, bArr, zzgxpVar);
    }

    public static /* synthetic */ void zzi(zzanj zzanjVar, zzgwv zzgwvVar) {
        zzanjVar.zzd |= 1;
        zzanjVar.zze = zzgwvVar;
    }

    public static /* synthetic */ void zzj(zzanj zzanjVar, zzgwv zzgwvVar) {
        zzanjVar.zzd |= 2;
        zzanjVar.zzf = zzgwvVar;
    }

    public static /* synthetic */ void zzk(zzanj zzanjVar, zzgwv zzgwvVar) {
        zzanjVar.zzd |= 4;
        zzanjVar.zzg = zzgwvVar;
    }

    public static /* synthetic */ void zzl(zzanj zzanjVar, zzgwv zzgwvVar) {
        zzanjVar.zzd |= 8;
        zzanjVar.zzh = zzgwvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzani(null);
            } else {
                return new zzanj();
            }
        }
        return (byte) 1;
    }

    public final zzgwv zze() {
        return this.zze;
    }

    public final zzgwv zzf() {
        return this.zzf;
    }

    public final zzgwv zzg() {
        return this.zzh;
    }

    public final zzgwv zzh() {
        return this.zzg;
    }
}
