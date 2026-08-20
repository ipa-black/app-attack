package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhcz extends zzgyd implements zzgzo {
    private static final zzhcz zzb;
    private int zzd;
    private int zze;
    private String zzf = "";
    private zzgwv zzg = zzgwv.zzb;
    private zzgwv zzh = zzgwv.zzb;

    static {
        zzhcz zzhczVar = new zzhcz();
        zzb = zzhczVar;
        zzgyd.zzaS(zzhcz.class, zzhczVar);
    }

    private zzhcz() {
    }

    public static zzhcx zza() {
        return (zzhcx) zzb.zzaz();
    }

    public static /* synthetic */ void zzd(zzhcz zzhczVar, String str) {
        zzhczVar.zzd |= 2;
        zzhczVar.zzf = "image/png";
    }

    public static /* synthetic */ void zze(zzhcz zzhczVar, zzgwv zzgwvVar) {
        zzgwvVar.getClass();
        zzhczVar.zzd |= 4;
        zzhczVar.zzg = zzgwvVar;
    }

    public static /* synthetic */ void zzf(zzhcz zzhczVar, int i) {
        zzhczVar.zze = 1;
        zzhczVar.zzd = 1 | zzhczVar.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzd", "zze", zzhcy.zza, "zzf", "zzg", "zzh"});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 5) {
                        return null;
                    }
                    return zzb;
                }
                return new zzhcx(null);
            } else {
                return new zzhcz();
            }
        }
        return (byte) 1;
    }
}
