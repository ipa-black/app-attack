package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbha extends zzgyd implements zzgzo {
    private static final zzbha zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzbha zzbhaVar = new zzbha();
        zzb = zzbhaVar;
        zzgyd.zzaS(zzbha.class, zzbhaVar);
    }

    private zzbha() {
    }

    public static zzbgt zza() {
        return (zzbgt) zzb.zzaz();
    }

    public static zzbha zzd() {
        return zzb;
    }

    public static /* synthetic */ void zzi(zzbha zzbhaVar, int i) {
        zzbhaVar.zze = i - 1;
        zzbhaVar.zzd |= 1;
    }

    public static /* synthetic */ void zzj(zzbha zzbhaVar, int i) {
        zzbhaVar.zzf = i - 1;
        zzbhaVar.zzd |= 2;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001", new Object[]{"zzd", "zze", zzbgy.zza, "zzf", zzbgv.zza});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzbgt(null);
            } else {
                return new zzbha();
            }
        }
        return (byte) 1;
    }

    public final boolean zze() {
        return (this.zzd & 2) != 0;
    }

    public final boolean zzf() {
        return (this.zzd & 1) != 0;
    }

    public final int zzg() {
        int zza = zzbgw.zza(this.zzf);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzh() {
        int zza = zzbgz.zza(this.zze);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }
}
