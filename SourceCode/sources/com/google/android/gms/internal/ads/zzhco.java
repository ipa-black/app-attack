package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhco extends zzgyd implements zzgzo {
    private static final zzhco zzb;
    private int zzd;
    private byte zzg = 2;
    private zzgwv zze = zzgwv.zzb;
    private zzgwv zzf = zzgwv.zzb;

    static {
        zzhco zzhcoVar = new zzhco();
        zzb = zzhcoVar;
        zzgyd.zzaS(zzhco.class, zzhcoVar);
    }

    private zzhco() {
    }

    public static zzhcn zza() {
        return (zzhcn) zzb.zzaz();
    }

    public static /* synthetic */ zzhco zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzhco zzhcoVar, zzgwv zzgwvVar) {
        zzhcoVar.zzd |= 1;
        zzhcoVar.zze = zzgwvVar;
    }

    public static /* synthetic */ void zze(zzhco zzhcoVar, zzgwv zzgwvVar) {
        zzhcoVar.zzd |= 2;
        zzhcoVar.zzf = zzgwvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzd", "zze", "zzf"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 == 5) {
                        return zzb;
                    }
                    this.zzg = obj == null ? (byte) 0 : (byte) 1;
                    return null;
                }
                return new zzhcn(null);
            } else {
                return new zzhco();
            }
        }
        return Byte.valueOf(this.zzg);
    }
}
